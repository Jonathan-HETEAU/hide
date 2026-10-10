package hide.tools;


/**
	A message from the thumbnail generator to the file manager.
**/
enum abstract GenToManagerCommand(String) {
	/**
		A thumbnail was rendered (see `GenToManagerSuccessMessage`).
	**/
	var success;
}

/**
	A message from the file manager to the thumbnail generator.
**/
enum abstract ManagerToGenCommand(String) {
	/**
		Renders the thumbnail of a file.
	**/
	var queue;
	/**
		Changes the priority of a queued file.
	**/
	var prio;
	/**
		Clears the render queue.
	**/
	var clear;
}

/**
	The message sent when a thumbnail was rendered.
**/
typedef GenToManagerSuccessMessage = {
	/**
		The path of the file.
	**/
	var originalPath : String;
	/**
		The path of the thumbnail image.
	**/
	var thumbnailPath : String;
}

/**
	The kind of a file entry.
**/
enum FileKind {
	/**
		A directory.
	**/
	Dir;
	/**
		A file.
	**/
	File;
}

/**
	The version control status of a file.
**/
enum VCSStatus {
	/**
		Pending or no vsc available on system
	**/
	None;

	/**
		The file is up to date and not modified
	**/
	UpToDate;

	/**
		The file is modified locally
	**/
	Modified;
}

/**
	A file or directory of the project resources, kept up to date by the `FileManager`.
**/
@:access(hide.tools.FileManager)
@:allow(hide.tools.FileManager)
class FileEntry {
	/**
		The file name.
	**/
	public var name: String;
	/**
		The full path.
	**/
	public var path: String;
	/**
		The path relative to the resource directory.
	**/
	public var relPath: String;
	/**
		The entries of a directory.
	**/
	public var children: Array<FileEntry>;
	/**
		The kind of entry.
	**/
	public var kind: FileKind;
	/**
		The parent directory, or null for the root.
	**/
	public var parent: FileEntry;
	/**
		The path of the thumbnail, `loading` while it renders, or null if not loaded: call `getIcon` to load it.
	**/
	public var iconPath: String;
	/**
		True once the entry is disposed.
	**/
	public var disposed: Bool = false;
	/**
		The version control status.
	**/
	public var vcsStatus: VCSStatus = None;
	/**
		True if the path matches an ignore pattern of the file manager.
	**/
	public var ignored: Bool = false;

	var registeredWatcher : hide.tools.FileWatcher.FileWatchEvent = null;

	/**
		Creates an entry.
	**/
	public function new(name: String, parent: FileEntry, kind: FileKind) {
		this.name = name;
		this.parent = parent;
		this.kind = kind;
		this.relPath = computeRelPath();
		this.path = computePath();
		this.ignored = computeIgnore();

		watch();
		FileManager.inst.fileIndex.set(this.getRelPath(), this);
	}

	/**
		Returns the name.
	**/
	public final function toString() : String{
		return name;
	}

	/**
		Disposes the entry and its children, removing their file watchers.
	**/
	public function dispose() {
		if (children != null) {
			for (child in children) {
				child.dispose();
			}
		}
		disposed = true;
		children = null;
		if (registeredWatcher != null) {
			hide.Ide.inst.fileWatcher.unregister(this.getPath(), registeredWatcher.fun);
			registeredWatcher = null;
		}
		FileManager.inst.fileIndex.remove(this.getRelPath());
	}

	/**
		Calls `onReady` with the thumbnail path, rendering it if needed.
	**/
	public function getIcon(onReady: MiniatureReadyCallback) {
		if (iconPath != null && iconPath != "loading")
			onReady(iconPath);
		else {
			@:privateAccess FileManager.inst.renderMiniature(this, onReady);
		}
	}

	function refreshChildren() {
		if (kind != Dir)
			return;
		var fullPath = getPath();

		var oldChildren : Map<String, FileEntry> = [for (file in (children ?? [])) file.name => file];

		if (children == null)
			children = [];
		else
			children.resize(0);

		if (js.node.Fs.existsSync(fullPath)) {
			var paths = js.node.Fs.readdirSync(fullPath);

			for (path in paths) {
				if (StringTools.startsWith(path, "."))
					continue;
				var prev = oldChildren.get(path);
				if (prev != null) {
					children.push(prev);
					oldChildren.remove(path);
				} else {
					var info = js.node.Fs.statSync(fullPath + "/" + path);
					var newEntry = new FileEntry(path, this, info.isDirectory() ? Dir : File);
					newEntry.refreshChildren();
					children.push(newEntry);
				}
			}
		}

		for (child in oldChildren) {
			child.dispose();
		}

		children.sort(compareFile);
	}

	function watch() {
		if (registeredWatcher != null)
			throw "already watching";

		var rel = this.getRelPath();
		registeredWatcher = hide.Ide.inst.fileWatcher.register(rel, FileManager.inst.fileChangeInternal.bind(this), true);
	}

	/**
		Returns the path relative to the resource directory.
	**/
	public inline function getRelPath() {
		return this.relPath;
	}

	/**
		Returns the full path.
	**/
	public inline function getPath() {
		return this.path;
	}

	function computePath() {
		if (this.parent == null) return hide.Ide.inst.resourceDir;
		return this.parent.computePath() + "/" + this.name;
	}

	function computeRelPath() {
		if (this.parent == null) return "";
		if (this.parent.parent == null) return this.name;
		return this.parent.computeRelPath() + "/" + this.name;
	}

	function computeIgnore() {
		for (excl in FileManager.inst.ignorePatterns) {
			if (excl.match(getRelPath()))
				return true;
		}
		return return false;
	}

	// sort directories before files, and then dirs and files alphabetically
	/**
		Sorts directories before files, then by name.
	**/
	static public function compareFile(a: FileEntry, b: FileEntry) {
		if (a.kind != b.kind) {
			if (a.kind == Dir) {
				return -1;
			}
			return 1;
		}
		return Reflect.compare(a.name.toLowerCase(), b.name.toLowerCase());
	}
}

/**
	Called with the path of a rendered thumbnail.
**/
typedef MiniatureReadyCallback = (miniaturePath: String) -> Void;

/**
	Class that handle parsing and maintaining the state of the project files, and generate miniatures for them on demand
**/
class FileManager {

	/**
		The root directory of the resources.
	**/
	public var fileRoot: FileEntry;
	var fileIndex : Map<String, FileEntry> = [];

	/**
		The port of the thumbnail generator server.
	**/
	public static final thumbnailGeneratorPort = 9669;
	/**
		The host of the thumbnail generator server.
	**/
	public static final thumbnailGeneratorUrl = "localhost";

	/**
		The file manager, created on first access.
	**/
	public static var inst(get, default) : FileManager;
	/**
		Called when a file changes.
	**/
	public var onFileChangeHandlers: Array<(entry: FileEntry) -> Void> = [];
	/**
		Called when the version control status of the files is updated.
	**/
	public var onVCSStatusUpdateHandlers: Array<() -> Void> = [];

	var svnEnabled = false;

	var windowManager : RenderWindowManager = null;

	var onReadyCallbacks : Map<String, Array<MiniatureReadyCallback>> = [];

	var serverSocket : hxd.net.Socket = null;
	var generatorSocket : hxd.net.Socket = null;
	var pendingMessages : Array<String> = [];
	var ignorePatterns: Array<EReg> = [];


	var fileEntryRefreshDelay : Delayer<FileEntry>;

	var retries = 0;
	static final maxRetries = 5;

	static function get_inst() {
		if (inst == null) {
			inst = new FileManager();
			inst.init();
		}
		return inst;
	}

	function new() {

	}

	/**
		Stops the thumbnail generator and server before reloading the IDE.
	**/
	public static function onBeforeReload() {
		if (inst != null) {
			inst.cleanupGenerator();
			inst.cleanupServer();
		}
	}


	var pendingMessageQueued = false;
	function queueProcessPendingMessages() {
		if (!pendingMessageQueued) {
			haxe.Timer.delay(processPendingMessages, 10);
			pendingMessageQueued = true;
		}
	}
	function processPendingMessages() {
		pendingMessageQueued = false;
		if (!checkWindowReady()) {
			return;
		}
		var len = hxd.Math.imin(300, pendingMessages.length);
		for (i in 0 ... len) {
			generatorSocket.out.writeString(pendingMessages[i]);
		}
		pendingMessages.splice(0, len);
		if (pendingMessages.length > 0) {
			queueProcessPendingMessages();
		}
	}

	/**
		Deletes files and directories from the disk.
	**/
	public function deleteFiles(files : Array<FileEntry>) {
		//trace(fullPaths);
		var roots = getRoots(files);
		for (file in roots) {
			if( file.kind == Dir ) {
				file.dispose(); // kill watchers
				untyped js.node.Fs.rmSync(file.getPath(), {force: true, recursive: true});
			} else {
				file.dispose(); // kill watchers
				untyped js.node.Fs.rmSync(file.getPath(), {force: true, recursive: false});
			}
		}
	}

	/**
		Returns the entry of a path, or null.
	**/
	public function getFileEntry(path: String) {
		var relPath = hide.Ide.inst.makeRelative(path);
		return fileIndex.get(relPath);
	}

	// Deduplicate paths if they are contained in a directory
	// also present in paths, to simplify bulk operations
	/**
		Removes from a list the entries contained in a directory of the list, to simplify bulk operations.
	**/
	public function getRoots(files: Array<FileEntry>) : Array<FileEntry> {
		var dirs : Array<FileEntry> = [];

		for (file in files) {
			if(file.kind == Dir) {
				dirs.push(file);
			}
		}

		// Find the minimum ammount of files that need to be moved
		var roots: Array<FileEntry> = [];
		for (file in files) {
			var isContainedInAnotherDir = false;
			for (dir2 in dirs) {
				if (file == dir2)
					continue;
				if (StringTools.contains(file.getPath(), dir2.getPath())) {
					isContainedInAnotherDir = true;
					continue;
				}
			}
			if (!isContainedInAnotherDir) {
				roots.push(file);
			}
		}

		return roots;
	}

	function onSVNFileModified(modifiedFiles: Array<String>) {
		for (file in fileIndex) {
			file.vcsStatus = UpToDate;
		}

		for (modifiedFile in modifiedFiles) {
			var relPath = hide.Ide.inst.getRelPath(modifiedFile);
			var file = fileIndex.get(relPath);

			while(file != null && file.vcsStatus != Modified) {
				file.vcsStatus = Modified;
				file = file.parent;
			}
		}

		for (handler in onVCSStatusUpdateHandlers) {
			handler();
		}
	}

	/**
		Return the path to a temporary file with all the paths in the files array inside
	**/
	public function createSVNFileList(files: Array<FileEntry>) : String {
		var tmpdir = js.node.Os.tmpdir();
		var name = 'hidefiles${Std.int(hxd.Math.random(100000000))}.txt';
		var path = tmpdir + "/" + name;


		var str = [for(f in files) f.getPath()].join("\n");

		// Encode paths as utf-16 because tortoiseproc want the file encoded that way
		var bytes = haxe.io.Bytes.alloc(str.length * 2);
		var pos = 0;

		for (char in 0...str.length) {
			bytes.setUInt16(pos, str.charCodeAt(char));
			pos += 2;
		}
		sys.io.File.saveBytes(path, bytes);
		return path;
	}

	function setupServer() {
		if (serverSocket != null)
			throw "Server already exists";

		serverSocket = new hxd.net.Socket();
		serverSocket.onError = (msg) -> {
			hide.Ide.inst.quickError("FileManager socket error : " + msg);
			cleanupGenerator();
			cleanupServer();
		}
		serverSocket.bind(thumbnailGeneratorUrl, thumbnailGeneratorPort, (remoteSocket) -> {
			if (generatorSocket != null) {
				generatorSocket.close();
			}
			generatorSocket = remoteSocket;
			generatorSocket.onError = (msg) -> {
				hide.Ide.inst.quickError("Generator socket error : " + msg);
				cleanupGenerator();
			}

			var handler = new hide.tools.ThumbnailGenerator.MessageHandler(generatorSocket, processThumbnailGeneratorMessage);

			trace("Thumbnail generator connected");

			// resend command that weren't completed
			for (path => _ in onReadyCallbacks) {
				sendGenerateCommand(path);
			}

		});
	}

	function cleanupServer() {
		if (serverSocket != null) {
			serverSocket.close();
			serverSocket = null;
		}
	}

	function cleanupGenerator() {
		if (generatorSocket != null) {
			generatorSocket.close();
			generatorSocket = null;
		}

		if (windowManager != null && windowManager.generatorWindow != null) {
			windowManager.generatorWindow.close(true);
		}

		windowManager = null;

		untyped nw.Window.getAll((win:nw.Window) -> {
			if (win.title == "HideThumbnailGenerator") {
				win.close(true);
			}
		});
	}

	function init() {
		// kill server when page is reloaded
		js.Browser.window.addEventListener('beforeunload', () -> { cleanupGenerator(); cleanupServer(); });

		svnEnabled = hide.Ide.inst.isSVNAvailable();

		var exclPatterns : Array<String> = hide.Ide.inst.currentConfig.get("filetree.excludes", []);
		ignorePatterns = [];
		for(pat in exclPatterns)
			ignorePatterns.push(new EReg(pat, "i"));

		setupServer();
		checkWindowReady();
		initFileSystem();
	}

	function initFileSystem() {
		fileEntryRefreshDelay = new Delayer((entry: FileEntry) -> {
			entry.refreshChildren();
		});

		fileRoot = new FileEntry("res", null, Dir);
		fileRoot.refreshChildren();

		queueRefreshSVN();
	}

	function fileChangeInternal(entry: FileEntry) {
		// invalidate thumbnail
		entry.iconPath = null;

		if (!js.node.Fs.existsSync(entry.getPath()) && entry.parent != null) {
			fileEntryRefreshDelay.queue(entry.parent);
			return;
		}
		if (entry.kind == Dir) {
			fileEntryRefreshDelay.queue(entry);
		}

		queueRefreshSVN();

		for (handler in onFileChangeHandlers) {
			handler(entry);
		}
	}

	/**
		Updates the SVN status of the files if SVN is enabled.
	**/
	public function queueRefreshSVN() {
		if (svnEnabled) {
			hide.Ide.inst.getSVNModifiedFiles(onSVNFileModified);
		}
	}

	/**
		Asks a name and copies a file or directory next to it. Returns false if cancelled.
	**/
	public function cloneFile(entry: FileEntry) {
		var sourcePath = entry.getPath();
		var nameNewFile = hide.Ide.inst.ask("New filename:", new haxe.io.Path(sourcePath).file);
		if (nameNewFile == null || nameNewFile.length == 0) {
			return false;
		}

		var targetPath = new haxe.io.Path(sourcePath).dir + "/" + nameNewFile;
		if ( sys.FileSystem.exists(targetPath) ) {
			throw "File already exists";
		}

		function rec(origin : String, target : String, depth : Int = 0) {
			if (sys.FileSystem.isDirectory(origin)) {
				sys.FileSystem.createDirectory(target + "/");
				for (f in sys.FileSystem.readDirectory(origin))
					rec(origin + "/" + f, target + "/" + f, depth + 1);
			} else {
				if (depth == 0 && target.indexOf(".") == -1) {
					var oldExt = origin.split(".").pop();
					target += "." + oldExt;
				}

				sys.io.File.saveBytes(target, sys.io.File.getBytes(origin));
			}
		}

		rec(sourcePath, targetPath, 0);

		return true;
	}


	function processThumbnailGeneratorMessage(message: String) {
		try {
			var message = haxe.Json.parse(message);
			switch(message.type) {
				case success:
					var message : GenToManagerSuccessMessage = message.data;
					var cbs = onReadyCallbacks.get(message.originalPath);
					if (cbs == null) {
						return;
						//throw "Generated a thumbnail for a file not registered";
					}
					var file = getFileEntry(message.originalPath);
					file.iconPath = message.thumbnailPath;
					for (cb in cbs) {
						cb(message.thumbnailPath);
					}
					onReadyCallbacks.remove(message.originalPath);
				default:
					throw "Unknown message type " + message.type;
			}
		} catch(e) {
			hide.Ide.inst.quickError("Thumb Generator invalid message : " + e + "\n" + message);
		}
	}

	var queued = false;

	/**
		Asynchronously generates a miniature.
		onReady is called back with the path of the loaded miniature, or null if the miniature couldn't be loaded
	**/
	function renderMiniature(file: FileEntry, onReady: MiniatureReadyCallback) {
		if (retries >= maxRetries) {
			onReady(null);
			return;
		}
		var path = file.getPath();
		var ext = path.split(".").pop().toLowerCase();
		switch(ext) {
			case "prefab" | "fbx" | "l3d" | "fx" | "shgraph" | "jpg" | "jpeg" | "png" | "dds":
				file.iconPath = "loading";
				var callbacks = onReadyCallbacks.get(path);
				if (callbacks == null) {
					onReadyCallbacks.set(path, [onReady]);
					sendGenerateCommand(path);
				} else {
					callbacks.push(onReady);
				}
			default:
				onReady(null);
		}
	}

	/**
		Deletes the thumbnail of a file (and of the files of a directory).
	**/
	public function invalidateMiniature(file: FileEntry) {
		if (file.children != null) {
			for (child in file.children) {
				invalidateMiniature(child);
			}
			return;
		}
		if (file.iconPath != null && file.iconPath != "loading") {
			try {
				sys.FileSystem.deleteFile(file.iconPath);
			} catch (e) {};
		}

		file.iconPath = null;
	}

	/**
		Tells if the thumbnail generator is ready, opening its window if needed.
	**/
	public function checkWindowReady() {
		if (serverSocket == null)
			return false;
		if (windowManager == null) {
			if (retries < maxRetries) {
				retries ++;
				windowManager = new RenderWindowManager();
			}
			if (retries == maxRetries) {
				js.Browser.window.alert("Max retries for thumbnail render window reached");
				retries++;
			}
			return false;
		}
		if (windowManager.state == Pending) {
			return false;
		}
		if (windowManager.state == Ready && generatorSocket != null) {
			return true;
		}
		return false;
	}

	/**
		Clears the thumbnail render queue.
	**/
	public function clearRenderQueue() {
		onReadyCallbacks.clear();
		if (!checkWindowReady()) {
			return;
		}
		var message = {
			type: ManagerToGenCommand.clear,
		};
		var cmd = haxe.Json.stringify(message) + "\n";
		generatorSocket.out.writeString(cmd);
		pendingMessages = [];
	}

	/**
		Changes the render priority of a queued thumbnail.
	**/
	public function setPriority(path: String, newPriority: Int) {
		if (!onReadyCallbacks.exists(path)) {
			return;
		}
		if (retries >= maxRetries)
			return;
		var message = {
			type: ManagerToGenCommand.prio,
			path: path,
			prio: newPriority
		};
		var cmd = haxe.Json.stringify(message) + "\n";
		pendingMessages.push(cmd);
		queueProcessPendingMessages();
	}

	function sendGenerateCommand(path: String) {
		if (!checkWindowReady()) {
			return;
		}
		var message = {
			type: ManagerToGenCommand.queue,
			path: path,
		};
		var cmd = haxe.Json.stringify(message) + "\n";
		pendingMessages.push(cmd);
		queueProcessPendingMessages();
	}

	/**
		Renames files (`to` is relative to the resource directory) and updates the references to them.
	**/
	public static function doRename(operations: Array<{from: String, to: String}>) {
		for (op in operations) {
			onRenameRec(op.from, "/" + op.to);
		}

		replacePathInFiles(operations);
	}

	/**
		Renames a file or directory (with SVN if possible), its `.dat` directory, and the references to an FBX in `Materials.props`. `name` is a new name, or a path starting with `/`. Swaps the files if the target exists and the user confirms.
	**/
	public static function onRenameRec(path:String, name:String) {
		var ide = hide.Ide.inst;
		var parts = path.split("/");
		parts.pop();
		for( n in name.split("/") ) {
			if( n == ".." )
				parts.pop();
			else
				parts.push(n);
		}
		var newPath = name.charAt(0) == "/" ? name.substr(1) : parts.join("/");

		if( newPath == path )
			return false;

		if (!sys.FileSystem.exists(ide.getPath(path)))
			return false;

		if( sys.FileSystem.exists(ide.getPath(newPath)) ) {
			function addPath(path:String,rand:String) {
				var p = path.split(".");
				if( p.length > 1 )
					p[p.length-2] += rand;
				else
					p[p.length-1] += rand;
				return p.join(".");
			}
			if( path.toLowerCase() == newPath.toLowerCase() ) {
				// case change
				var rand = "__tmp"+Std.random(10000);
				onRenameRec(path, "/"+addPath(path,rand));
				onRenameRec(addPath(path,rand), name);
			} else {
				if( !ide.confirm(newPath+" already exists, invert files?") )
					return false;
				var rand = "__tmp"+Std.random(10000);
				onRenameRec(path, "/"+addPath(path,rand));
				onRenameRec(newPath, "/"+path);
				onRenameRec(addPath(path,rand), name);
			}
			return false;
		}

		var isDir = sys.FileSystem.isDirectory(ide.getPath(path));
		var wasRenamed = false;
		var isSVNRepo = sys.FileSystem.exists(ide.projectDir+"/.svn") || js.node.ChildProcess.spawnSync("svn",["info"], { cwd : ide.resourceDir }).status == 0; // handle not root dirs
		if( isSVNRepo ) {
			if( js.node.ChildProcess.spawnSync("svn",["--version"]).status != 0 ) {
				if( isDir && !ide.confirm("Renaming a SVN directory, but 'svn' system command was not found. Continue ?") )
					return false;
			} else {
				// Check if origin file and target directory are versioned
				var isFileVersioned = js.node.ChildProcess.spawnSync("svn",["info", ide.getPath(path)]).status == 0;
				var newAbsPath = ide.getPath(newPath);
				var parentFolder = newAbsPath.substring(0, newAbsPath.lastIndexOf('/'));
				var isDirVersioned = js.node.ChildProcess.spawnSync("svn",["info", parentFolder]).status == 0;
				if (isFileVersioned && isDirVersioned) {
					var cwd = Sys.getCwd();
					Sys.setCwd(ide.resourceDir);
					var code = Sys.command("svn",["rename", path, newPath]);
					Sys.setCwd(cwd);
					if( code == 0 )
						wasRenamed = true;
					else {
						if( !ide.confirm("SVN rename failure, perform file rename ?") )
							return false;
					}
				}
			}
		}

		if( !wasRenamed )
			sys.FileSystem.rename(ide.getPath(path), ide.getPath(newPath));

		var dataDir = new haxe.io.Path(path);
		if( dataDir.ext != "dat" ) {
			dataDir.ext = "dat";
			var dataPath = dataDir.toString();
			if( sys.FileSystem.isDirectory(ide.getPath(dataPath)) ) {
				var destPath = new haxe.io.Path(name);
				destPath.ext = "dat";
				onRenameRec(dataPath, destPath.toString());
			}
		}

		// update Materials.props if an FBX is moved/renamed
		var newSysPath = new haxe.io.Path(name);
		var oldSysPath = new haxe.io.Path(path);
		if (newSysPath.dir == null) {
			newSysPath.dir = oldSysPath.dir;
		}
		if (newSysPath.ext?.toLowerCase() == "fbx" && oldSysPath.ext?.toLowerCase() == "fbx") {
			function remLeadingSlash(s:String) {
				if(StringTools.startsWith(s,"/")) {
					return s.length > 1 ? s.substr(1) : "";
				}
				return s;
			}

			var oldMatPropsPath = ide.getPath(remLeadingSlash((oldSysPath.dir ?? "") + "/materials.props"));

			if (sys.FileSystem.exists(oldMatPropsPath)) {
				var newMatPropsPath = ide.getPath(remLeadingSlash((newSysPath.dir ?? "") + "/materials.props"));

				var oldMatProps = haxe.Json.parse(sys.io.File.getContent(oldMatPropsPath));

				var newMatProps : Dynamic =
					if (sys.FileSystem.exists(newMatPropsPath))
						haxe.Json.parse(sys.io.File.getContent(newMatPropsPath))
					else {};

				var oldNameExt = oldSysPath.file + "." + oldSysPath.ext;
				var newNameExt = newSysPath.file + "." + newSysPath.ext;
				function moveRec(originalData: Dynamic, oldData:Dynamic, newData: Dynamic) {

					for (field in Reflect.fields(originalData)) {
						if (StringTools.endsWith(field, oldNameExt)) {
							var innerData = Reflect.getProperty(originalData, field);
							var newField = StringTools.replace(field, oldNameExt, newNameExt);
							Reflect.setProperty(newData, newField, innerData);
							Reflect.deleteField(oldData, field);
						}
						else {
							var originalInner = Reflect.getProperty(originalData, field);
							if (Type.typeof(originalInner) != TObject)
								continue;

							var oldInner = Reflect.getProperty(oldData, field);
							var newInner = Reflect.getProperty(newData, field) ?? {};
							moveRec(originalInner, oldInner, newInner);

							// Avoid creating empty fields
							if (Reflect.fields(newInner).length > 0) {
								Reflect.setProperty(newData, field, newInner);
							}

							// Cleanup removed fields in old props
							if (Reflect.fields(oldInner).length == 0) {
								Reflect.deleteField(oldData, field);
							}
						}
					}
				}

				var sourceData = oldMatProps;
				var oldDataToSave = oldMatPropsPath == newMatPropsPath ? newMatProps : haxe.Json.parse(haxe.Json.stringify(oldMatProps));

				moveRec(oldMatProps, oldDataToSave, newMatProps);
				sys.io.File.saveContent(newMatPropsPath, hide.Ide.inst.toJSON(newMatProps));

				if (oldMatPropsPath != newMatPropsPath) {
					if (Reflect.fields(oldMatProps).length > 0) {
						sys.io.File.saveContent(oldMatPropsPath, hide.Ide.inst.toJSON(oldDataToSave));
					} else {
						sys.FileSystem.deleteFile(oldMatPropsPath);
					}
				}

				// Clear caches
				@:privateAccess
				{
					if (h3d.mat.MaterialSetup.current != null) {
						h3d.mat.MaterialSetup.current.database.db.remove(ide.makeRelative(oldMatPropsPath));
						h3d.mat.MaterialSetup.current.database.db.remove(ide.makeRelative(newMatPropsPath));
					}
					hxd.res.Loader.currentInstance.cache.remove(ide.makeRelative(oldMatPropsPath));
					hxd.res.Loader.currentInstance.cache.remove(ide.makeRelative(newMatPropsPath));
				}
			}

		}

		return true;
	}

	/**
		Replaces the renamed paths in the project files.
	**/
	public static function replacePathInFiles(operations: Array<{from: String, to: String}>) {
		function filter(ctx: hide.Ide.FilterPathContext) {
			var p = ctx.valueCurrent;
			if( p == null )
				return;
			for (op in operations) {
				var oldPath = op.from;
				var newPath = op.to;

				if( p == oldPath ) {
					ctx.change(newPath);
					return;
				}
				if( p == "/"+oldPath ) {
					ctx.change(newPath);
					return;
				}
				if( StringTools.startsWith(p,oldPath+"/") ) {
					ctx.change(newPath + p.substr(oldPath.length));
					return;
				}
				if( StringTools.startsWith(p,"/"+oldPath+"/") ) {
					ctx.change("/"+newPath + p.substr(oldPath.length+1));
					return;
				}
			}
		}

		hide.Ide.inst.filterPaths(filter);
	}
}


/**
	The state of the thumbnail generator window.
**/
enum RenderWindowState {
	/**
		The window is opening.
	**/
	Pending;
	/**
		The window is ready.
	**/
	Ready;
}

/**
	Opens the hidden window rendering the thumbnails.
**/
@:allow(hide.tools.FileManager)
@:access(hide.tools.FileManager)
class RenderWindowManager {
	var state : RenderWindowState = Pending;
	var generatorWindow : nw.Window;

	function new() {
		state = Pending;
		// wait that the browser is idle before creating the rendering window, so
		// the generator socket is properly initialised
		untyped js.Browser.window.requestIdleCallback(() -> {
			state = Ready;
			nw.Window.open('app.html?thumbnail=true', cast {
					new_instance: true,
					show: false,
					title: "HideThumbnailGenerator"
				}, (win: nw.Window) -> {
					generatorWindow = win;
				win.on("close", () -> {
					hide.Tools.FileManager.cleanupGenerator();
				});
			});
		}, {timeout: 1000});
	}


}