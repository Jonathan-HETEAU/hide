package hrt.prefab;

#if editor
/**
	The context shared by all the prefabs of a prefab hierarchy (but not by references): the root objects, the current parents during `make`, the source path, and the loading of the resources and baked data.
	In the editor, `hide.prefab.ContextShared` extends it.
**/
typedef ContextShared = hide.prefab.ContextShared;
#end

/**
	The context shared by all the prefabs of a prefab hierarchy (but not by references): the root objects, the current parents during `make`, the source path, and the loading of the resources and baked data.
	In the editor, `hide.prefab.ContextShared` extends it.
**/
@:allow(hrt.prefab.Prefab)
class #if editor ContextSharedBase #else ContextShared #end {
	/**
		The root 2D object of the instance.
	**/
	public var root2d(default, null) : h2d.Object;
	/**
		The root 3D object of the instance.
	**/
	public var root3d(default, null) : h3d.scene.Object;

	/**
		The path of the prefab file being made (the reference files change it).
	**/
	public var currentPath : String;
	/**
		The path of the root prefab file.
	**/
	public var prefabSource : String = "";

	/**
		When make() is called on prefab, it will instead call customMake on
		each child with current which can either intercept or call make() recursively.
	 **/
	 public var customMake : Prefab -> Void;

	/**
		When make/instanciate is called, this contains the 3d object that should be used as a parent for the newly created object. Never modify this in the middle of a instanciate without restoring it after.
	**/
	public var current3d : h3d.scene.Object = null;

	/**
		When make/instanciate is called, this contains the 2d object that should be used as a parent for the newly created object. Never modify this in the middle of a instanciate without restoring it after.
	**/
	public var current2d : h2d.Object = null;

	/**
		Parent prefab of the object if it was created as a reference.
	**/
	public var parentPrefab : Prefab = null;

	/**
		Store result of non filtered Prefab.find during the make.
	**/
	public var findCache : Map<{}, Prefab> = null;

	/**
		Disable some checks at the prefab instanciation time. Used to initialize prefabs that
		don't need locals2d/3d like shaders
	**/
	public var isInstance(default, null) : Bool = false;

	#if (editor || editor_hl)
	/**
		Set to true by editors while they load prefabs for other purposes than loading the prefab file
		(like undo/redo). Only read on the topmost shared, see isTempLoad()
	**/
	var editorTempLoad : Bool = false;

	/**
		True by default : any save in the editor is temporary, except while the prefab file is saved to disc (see Prefab.editorDiscSerialize).
		Only read on the topmost shared, see isTempSave()
	**/
	var editorTempSave : Bool = true;

	/** Returns the shared of the topmost prefab, following parent references **/
	function getTopShared() : ContextShared {
		var sh : ContextShared = cast this;
		while (sh.parentPrefab != null)
			sh = sh.parentPrefab.shared;
		return sh;
	}
	#end

	/**
		Returns true when an editor loads prefabs for temporary purposes (like undo/redo), false when they are
		loaded as part of the prefab file. Always false in game.
	**/
	public inline function isTempLoad() : Bool {
		#if (editor || editor_hl)
		return getTopShared().editorTempLoad;
		#else
		return false;
		#end
	}

	/**
		Returns true when an editor saves prefabs for any other purpose than saving the prefab file to disc
		(like undo/redo, copy/paste...). Always false in game.
	**/
	public inline function isTempSave() : Bool {
		#if (editor || editor_hl)
		return getTopShared().editorTempSave;
		#else
		return false;
		#end
	}

	var bakedData : Map<String, haxe.io.Bytes>;

	/**
		Creates a context for the prefab file `path`, with its root objects.
	**/
	public function new( ?path : String, ?root2d: h2d.Object = null, ?root3d: h3d.scene.Object = null, isInstance: Bool = true) {
		if( path != null ) prefabSource = currentPath = path;
		this.isInstance = isInstance;
		this.root2d = root2d;
		this.root3d = root3d;

		this.current2d = this.root2d;
		this.current3d = this.root3d;
	}

	/**
		Called when an error happens while making a prefab. Throws it by default.
	**/
	public function onError( e : Dynamic ) {
		throw e;
	}

	/**
		Returns the folder of the data files of the prefab (`<prefab>.dat/`).
	**/
	public function getFolderDatPath() {
		var datPath = new haxe.io.Path(currentPath);
		datPath.ext = "dat";
		return datPath.toString() + "/";
	}

	/**
		Returns the resources of a folder of the data files, or `null`.
	**/
	public function loadDir(p : String, ?dir : String ) : Array<hxd.res.Any> {
		var path = getFolderDatPath() + p;
		if(dir != null) path += "/" + dir;
		return try hxd.res.Loader.currentInstance.dir(path) catch( e : hxd.res.NotFound ) null;
	}

	/**
		Returns a data file of a prefab (see `getPrefabDatPath`), or `null`.
	**/
	public function loadPrefabDat(file : String, ext : String, prefab : String) : hxd.res.Any {
		return try hxd.res.Loader.currentInstance.load(getPrefabDatPath(file,ext,prefab)) catch( e : hxd.res.NotFound ) null;
	}

	/**
		Returns the path of a data file of a prefab: `<prefab file>.dat/<prefab>/<file>.<ext>`.
	**/
	public function getPrefabDatPath(file : String, ext : String, prefab : String ) {
		var path = new haxe.io.Path(getFolderDatPath() + prefab + "/" + file);
		path.ext = ext;
		return path.toString();
	}

	/**
		Saves a data file of a prefab (or deletes it if `bytes` is `null`). Not available on JS.
	**/
	public function savePrefabDat(file : String, ext : String, prefab : String, bytes : haxe.io.Bytes ) {
		#if js
		throw "not implemented";
		#else
		var datDir = getFolderDatPath();
		var instanceDir = datDir + "/" + prefab;

		var prefix = "res/";
		if(!sys.FileSystem.isDirectory(prefix+datDir))
			sys.FileSystem.createDirectory(prefix+datDir);
		if(!sys.FileSystem.isDirectory(prefix+instanceDir))
			sys.FileSystem.createDirectory(prefix+instanceDir);

		var path = new haxe.io.Path("");
		path.dir = instanceDir;
		path.file = file;
		path.ext = ext;
		var file = prefix+path.toString();

		if( bytes == null ){
			try sys.FileSystem.deleteFile(file) catch( e : Dynamic ) {};
			var p = prefix+instanceDir;
			if(sys.FileSystem.isDirectory(p)){
				var dir = sys.FileSystem.readDirectory(p);
				if(dir.length == 0) sys.FileSystem.deleteDirectory(p);
			}
			var p = prefix+datDir;
			if(sys.FileSystem.isDirectory(p)){
				var dir = sys.FileSystem.readDirectory(p);
				if(dir.length == 0) sys.FileSystem.deleteDirectory(p);
			}
			return;
		}else{
			sys.io.File.saveBytes(file, bytes);
		}
		#end
	}

	/**
		Returns the shader of the class path (`path/to/Shader`), or `null`. Cached.
	**/
	public function loadShader( path : String ) : Cache.ShaderDef {
		var r = Cache.get().shaderDefCache.get(path);
		if(r != null)
			return r;
		var cl : Class<hxsl.Shader> = cast Type.resolveClass(path.split("/").join("."));
		if(cl == null) return null;
		// make sure to share the SharedShader instance with the real shader
		// so we don't get a duplicate cache of instances
		var shaderInst = Type.createEmptyInstance(cl);
		@:privateAccess shaderInst.initialize();
		var shader = @:privateAccess shaderInst.shader;
		r = {
			shader: shader,
			inits: []
		};
		Cache.get().shaderDefCache.set(path, r);
		return r;
	}

	/**
		Loads a model (cached).
	**/
	public function loadModel( path : String, opt = false ) {
		return Cache.get().modelCache.loadModel(hxd.res.Loader.currentInstance.load(path).toModel());
	}

	/**
		Loads the animation of a model (cached).
	**/
	public function loadAnimation( path : String ) {
		return @:privateAccess Cache.get().modelCache.loadAnimation(hxd.res.Loader.currentInstance.load(path).toModel());
	}

	/**
		Loads a texture (cached).
	**/
	public function loadTexture( path : String, async : Bool = false ) {
		return Cache.get().modelCache.loadTexture(null, path, async);
	}

	/**
		Returns the content of a resource file, or `null`.
	**/
	public function loadBytes( file : String) : haxe.io.Bytes {
		return try hxd.res.Loader.currentInstance.load(file).entry.getBytes() catch( e : hxd.res.NotFound ) null;
	}

	/**
		Returns baked data of the prefab file (from its `.bake` file), or `null`.
	**/
	public function loadBakedBytes( file : String ) {
		if( bakedData == null ) loadBakedData();
		return bakedData.get(file);
	}

	/**
		Sets baked data of the prefab file (or removes it if `bytes` is `null`), and saves the `.bake` file.
	**/
	public function saveBakedBytes( file : String, bytes : haxe.io.Bytes ) {
		if( bakedData == null ) loadBakedData();
		if( bytes == null ) {
			if( !bakedData.remove(file) )
				return;
		} else
			bakedData.set(file, bytes);
		var keys = Lambda.array({ iterator : bakedData.keys });
		if( keys.length == 0 ) {
			saveBakedFile(null);
			return;
		}
		var bytes = new haxe.io.BytesOutput();
		bytes.writeString("BAKE");
		bytes.writeInt32(keys.length);
		var headerSize = 8;
		for( name in keys )
			headerSize += 2 + name.length + 8;
		for( name in keys ) {
			bytes.writeUInt16(name.length);
			bytes.writeString(name);
			bytes.writeInt32(headerSize);
			var len = bakedData.get(name).length;
			bytes.writeInt32(len);
			headerSize += len + 1;
		}
		for( name in keys ) {
			bytes.write(bakedData.get(name));
			bytes.writeByte(0xFE); // stop
		}
		saveBakedFile(bytes.getBytes());
	}

	/**
		Saves a texture. Not implemented at runtime: throws.
	**/
	public function saveTexture( file : String, bytes : haxe.io.Bytes , dir : String, ext : String) {
		throw "Don't know how to save texture";
	}

	function saveBakedFile( bytes : haxe.io.Bytes ) {
		throw "Don't know how to save baked file";
	}

	function loadBakedFile() {
		var path = new haxe.io.Path(currentPath);
		path.ext = "bake";
		return try hxd.res.Loader.currentInstance.load(path.toString()).entry.getBytes() catch( e : hxd.res.NotFound ) null;
	}

	function loadBakedData() {
		bakedData = new Map();
		var data = loadBakedFile();
		if( data == null )
			return;
		if( data.getString(0,4) != "BAKE" )
			throw "Invalid bake file";
		var count = data.getInt32(4);
		var pos = 8;
		for( i in 0...count ) {
			var len = data.getUInt16(pos);
			pos += 2;
			var name = data.getString(pos, len);
			pos += len;
			var bytesPos = data.getInt32(pos);
			pos += 4;
			var bytesLen = data.getInt32(pos);
			pos += 4;
			bakedData.set(name,data.sub(bytesPos,bytesLen));
			if( data.get(bytesPos+bytesLen) != 0xFE )
				throw "Corrupted bake file";
		}
	}

	/**
		Returns the 3D objects of the class in the tree of the local 3D object of the prefab. An object rejected by `filter` is skipped with its children.
	**/
	public function getObjects<T:h3d.scene.Object>( p : Prefab, c: Class<T>, ?filter : h3d.scene.Object -> Bool ) : Array<T> {
		var root = p.to(Object3D)?.local3d;
		if(root == null) return [];
		var ret = [];
		function rec(o : h3d.scene.Object) {
			if ( filter != null && !filter(o) )
				return;
			var m = Std.downcast(o, c);
			if(m != null) {
				if(ret.contains(m))
					throw "?!";
				ret.push(m);
			}
			for( child in o )
				rec(child);
		}
		rec(root);
		return ret;
	}

	function getChildrenRoots( base : h3d.scene.Object, p : Prefab, out : Array<h3d.scene.Object> ) {
		for( c in p.children ) {
			var o3d = c.to(Object3D);
			if (o3d == null)
				return out;
			if( o3d.local3d == base )
				getChildrenRoots(base, c, out);
			else
				out.push(o3d.local3d);
		}
		return out;
	}
}