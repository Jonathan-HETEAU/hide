package hide;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;

/** A static variable decorated with `@:config`, gathered by `Config.configMacro()` **/
typedef ConfigField = {
	var field : Field;
	var key : String;
	var type : Null<ComplexType>;
	var defaultValue : Null<Expr>;
}
#end

/**
	The global settings of the editor, per user (the `hide` field of the global `props.json`).
**/
typedef HideGlobalConfig = {
	/**
		Saves the layout of the panels automatically.
	**/
	var autoSaveLayout : Null<Bool>;
	/**
		Uses the alternate font.
	**/
	var useAlternateFont : Null<Bool>;

	/**
		The path of the current project.
	**/
	var currentProject : String;
	/**
		The paths of the recent projects, most recent first.
	**/
	var recentProjects : Array<String>;

	/**
		The position and size of the window, and if it is maximized.
	**/
	var windowPos : { x : Int, y : Int, w : Int, h : Int, max : Bool };

	/**
		The layout of the scene editor columns.
	**/
	@:optional var sceneEditorLayout : { colsVisible : Bool, colsCombined : Bool };

	// General
	/**
		Saves the prefabs automatically.
	**/
	var autoSavePrefab : Bool;
	/**
		Shows the SVN versioned files in the file tree.
	**/
	var svnShowVersionedFiles : Bool;
	/**
		Shows the SVN modified files in the file tree.
	**/
	var svnShowModifiedFiles : Bool;
	/**
		Enables the formulas of CastleDB.
	**/
	var enableDBFormulas : Bool;
	/**
		The resolution of the screen captures.
	**/
	var screenCaptureResolution : Int;
	/**
		The minimum distance to the camera of the objects dragged in the scene.
	**/
	var minDistFromCameraOnDrag : Float;
	/**
		Escape cancels the changes of the color picker.
	**/
	var colorPickerEscUndo : Bool;


	// Search
	/**
		Closes the search when a file is opened.
	**/
	var closeSearchOnFileOpen : Bool;
	/**
		Closes the search when the CastleDB sheet changes.
	**/
	var closeSearchOnCDBSheetChange : Bool;
	/**
		The delay before searching while typing, in milliseconds.
	**/
	var typingDebounceThreshold : Int;

	// Performance
	/**
		Tracks the GPU allocations.
	**/
	var trackGpuAlloc : Bool;
	/**
		Reduces the frame rate when the window is not focused.
	**/
	var unfocusCPUSavingMode : Bool;

	// Scene Editor
	/**
		Orients the meshes dragged in the scene along the surface.
	**/
	var orientMeshOnDrag : Bool;
	/**
		Places the objects dragged in the scene on the surfaces.
	**/
	var collisionOnDrag : Bool;
	/**
		Clicking again cycles through the objects under the mouse.
	**/
	var sceneEditorClickCycleObjects : Bool;

	// hidehl
	/**
		Shows the scene editor sidebar vertically (HL editor).
	**/
	var sceneEditorVerticalSidebar: Bool;

	// CDB
	/**
		Starts searching when typing in CastleDB.
	**/
	var searchOnKeyPress : Bool;
	/**
		Highlights the active line in CastleDB.
	**/
	var highlightActiveLine : Bool;
	/**
		Highlights the header of the active line in CastleDB.
	**/
	var highlightActiveLineHeader : Bool;
	/**
		Highlights the header of the active column in CastleDB.
	**/
	var highlightActiveColumnHeader : Bool;

	// Filebrowser
	/**
		Ignores the thumbnail cache of the file browser (debug).
	**/
	var filebrowserDebugIgnoreThumbnailCache : Bool;
	/**
		Logs the commands of the thumbnail server (debug).
	**/
	var filebrowserDebugServerCommands : Bool;
	/**
		Shows the window of the thumbnail generator (debug).
	**/
	var filebrowserDebugShowWindow : Bool;
	/**
		Shows the debug menu of the file browser.
	**/
	var filebrowserDebugShowMenu : Bool;
};

/**
	The content of a `props.json` file.
**/
typedef ConfigDef = {
	/**
		The editor settings.
	**/
	var hide : {};
};

/**
	A `props.json` configuration file, merged over its parent configuration. Fields ending with `+` append to the parent arrays.
**/
class Config {
#if !macro

	var ide : Ide;
	var parent : Config;
	/**
		The path of the file, or `null`.
	**/
	public var path(default,null) : String;
	/**
		The content of the file.
	**/
	public var source(default, null) : ConfigDef = cast {};
	/**
		The merged configuration.
	**/
	public var current : ConfigDef = cast {};

	var prevConfig: String = null;

	/**
		Creates a configuration over `parent`.
	**/
	public function new( ?parent : Config ) {
		ide = Ide.inst;
		this.parent = parent;
		sync();
	}

	/**
		Tells if the file is in the project.
	**/
	public function isLocal() {
		if( path == null && parent != null ) return parent.isLocal();
		return path == null || StringTools.startsWith(path, ide.projectDir);
	}

	/**
		Loads a file (empty if missing). Throws if it is invalid.
	**/
	public function load( path : String ) {
		this.path = path;
		var fullPath = ide.getPath(path);
		if( sys.FileSystem.exists(fullPath) )
			source = try ide.parseJSON(sys.io.File.getContent(fullPath)) catch( e : Dynamic ) throw e+" (in "+fullPath+")";
		else
			source = cast {};
		sync();
	}

	/**
		Saves the file.
	**/
	public function save() {
		ide.removeDefaultValues();
		sync();
		saveToDisk();
	}

	function saveToDisk() {
		if( path == null ) throw "Cannot save properties (unknown path)";
		var fullPath = ide.getPath(path);
		if( Reflect.fields(source).length == 0 )
			try sys.FileSystem.deleteFile(fullPath) catch( e : Dynamic ) {};
		else {
			var directory = haxe.io.Path.directory(fullPath);
			if( !sys.FileSystem.exists(directory) ) {
				sys.FileSystem.createDirectory(directory);
			}
			var newSer = ide.toJSON(source);

			if (prevConfig != newSer)
				sys.io.File.saveContent(fullPath, newSer);
			prevConfig = newSer;
		}
	}

	#if editor_hl

	static final SAVE_DELAY = 5.0;
	static var pendingSaves : Array<Config> = [];

	var saveDelay : Float = 0.0;

	/**
		Same as `save()`, but the write to disk is delayed until `SAVE_DELAY` seconds have
		passed without any new call, or until the editor closes. Changing a lot of values in
		a row then only rewrites the file once instead of once per value.
	**/
	public function queueSave() {
		ide.removeDefaultValues();
		sync();
		saveDelay = SAVE_DELAY;
		if( !pendingSaves.contains(this) )
			pendingSaves.push(this);
	}

	/** Ticks the delay of every config waiting to be written, called by `Ide.update` **/
	public static function updatePendingSaves( dt : Float ) {
		var i = pendingSaves.length;
		while( i-- > 0 ) {
			var config = pendingSaves[i];
			config.saveDelay -= dt;
			if( config.saveDelay <= 0 ) {
				pendingSaves.splice(i, 1);
				config.saveToDisk();
			}
		}
	}

	/** Immediately writes every config waiting to be written, called when the editor closes **/
	public static function flushPendingSaves() {
		var configs = pendingSaves;
		pendingSaves = [];
		for( config in configs )
			config.saveToDisk();
	}

	#end

	/**
		Merges the parent configuration and the source again.
	**/
	public function sync() {
		if( parent != null ) parent.sync();
		current = cast {};
		if( parent != null ) merge(parent.current);
		if( source != null ) merge(source);
	}

	function merge( value : Dynamic ) {
		mergeRec(current, value);
	}

	function mergeRec( dst : Dynamic, src : Dynamic ) {
		for( f in Reflect.fields(src) ) {
			var append = false;

			var v : Dynamic = Reflect.field(src,f);
			if (StringTools.endsWith(f, "+")) {
				append = true;
				f = f.substr(0, f.length-1);
			}

			var t : Dynamic = Reflect.field(dst, f);
			if( Type.typeof(v) == TObject ) {
				if( t == null ) {
					t = {};
					Reflect.setField(dst, f, t);
				}
				mergeRec(t, v);
			} else if( v == null )
				Reflect.deleteField(dst, f);
			else {
				if (append && Type.typeof(v).match(TClass(Array))) {
					var arr : Array<Dynamic> = cast t ?? [];
					arr = arr.concat(cast v);
					Reflect.setField(dst, f, arr);

				} else {
					Reflect.setField(dst,f,v);
				}
			}
		}
	}

	/**
		Returns a value of the merged configuration, or `defaultVal`.
	**/
	public function get( key : String, ?defaultVal : Dynamic ) : Dynamic {
		var val = Reflect.field(current,key);
		if(val != null) return val;
		return defaultVal;
	}

	/**
		Returns a value defined in the project files, or `defaultVal`.
	**/
	public function getLocal( key : String, ?defaultVal : Dynamic ) : Dynamic {
		var v = get(key);
		if( v == null ) return defaultVal;
		if( isLocal() ) return v;
		if( parent == null ) return defaultVal;
		return parent.getLocal(key,defaultVal);
	}

	/**
		Sets a value in the source (removed if `null`) and saves.
	**/
	public function set( key : String, val : Dynamic ) {
		if (val == Reflect.field(current, key))
			return;
		if( val == null )
			Reflect.deleteField(source, key);
		else
			Reflect.setField(source, key, val);
		#if editor_hl
		queueSave();
		#else
		save();
		#end
	}

	static function alert(msg) {
		#if js
		js.Browser.window.alert(msg);
		#else
		throw msg;
		#end
	}

	/**
		Loads a file into a configuration, alerting on error.
	**/
	public static function loadConfig(config : Config, path : String) : Config {
		try {
			config.load(path);
		} catch(err) {
			alert('Couldn\'t load config file ${path}. Reverting to default config.\n${err}.');
		}
		return config;
	}

	/**
		Loads the configurations of a project: defaults, user globals, project and user project.
	**/
	public static function loadForProject( projectPath : String, resourcePath : String, appDataPath : String ) {
		var hidePath = Ide.inst.appPath;

		var defaults = new Config();
		try {
			defaults.load(hidePath + "/defaultProps.json");
		}
		catch (err) {
			alert('Fatal error : Couldn\'t load ${hidePath}/defaultProps.json. Please check your hide installation.\n$err');
			Sys.exit(-1);
		}

		var userGlobals = loadConfig(new Config(defaults), Ide.inst.userStatePath + "/props.json");

		if( userGlobals.source.hide == null )
			userGlobals.source.hide = {
				autoSaveLayout : true,
				enableDBFormulas : true,
				layouts : null,
				recentProjects : [],
				currentProject : "",
				windowPos : null,
				renderer : null,
			};

		var perProject = loadConfig(new Config(userGlobals), resourcePath + "/props.json");

		var projectUserCustom = loadConfig(new Config(perProject), appDataPath + "/" + projectPath.split("\\").join("/").split("/").join("_").split(":").join("_") + ".json");
		var p = projectUserCustom;
		if( p.source.hide == null ) {
		#if js
			p.source.hide = ({ layouts : [], renderer : null, dbCategories: null, dbProofread: null } : HideProjectConfig);
		#else
			p.source.hide = ({ tabViews:
				{
					"left-panel": {
						tabIndex: 0,
						tabs: [{type: "fileBrowser"}]
					},
				}
			} : HideProjectConfig);
		#end
		}

		var current = new Config(projectUserCustom);

		return {
			global : userGlobals,
			project : perProject,
			user : projectUserCustom,
			current : current,
		};
	}

	/**
		Returns the configuration of a file, merging the `props.json` files of its folders.
	**/
	public static function loadForFile( ide : hide.tools.IdeData, path : String ) {
		var parts = path.split("/");
		var propFiles = [];
		var first = true, allowSave = false;
		while( true ) {
			var pfile = ide.getPath(parts.join("/") + "/props.json");
			if( sys.FileSystem.exists(pfile) ) {
				propFiles.unshift(pfile);
				if( first ) allowSave = true;
			}
			if( parts.length == 0 ) break;
			first = false;
			parts.pop();
		}
		var parent = ide.currentConfig;
		for( p in propFiles ) {
			parent = new Config(parent);
			parent.load(p);
		}
		return allowSave ? parent : new Config(parent);
	}

#end

#if macro

	/** Maps every key declared with `@:config` to the `pack.Class.field` that declared it, to detect duplicates **/
	static var registeredKeys : Map<String, String> = [];

	/**
		Build macro to be used as `@:build(hide.Config.configMacro())` on a class.

		Every static variable of that class decorated with `@:config` is meant to be
		persisted through `hide.Ide.inst.currentConfig.get/set` instead of being stored
		in the class itself.

		Keys are always prefixed so they can't collide with the ones of another class :
		the prefix is `prefix` when it is given to the macro (`@:build(hide.Config.configMacro("myPrefix"))`),
		the full dot path of the class otherwise.

		By default the key of a variable is `<prefix>.<variableName>`. A custom name can be
		given to the metadata (`@:config("myName")`), which gives `<prefix>.myName`. As an
		escape hatch, a name starting with a `#` is not prefixed at all : `@:config("#myKey")`
		uses `myKey` as the full key, which is useful to read a key that already exists
		somewhere else in the config.

		Every key is checked to be unique across the whole project : two `@:config` variables
		resolving to the same key is a compilation error, because they would silently share
		their value while each declaring its own default. The check only knows about the
		variables declared through this macro, so a `#` key can still point at a raw key that
		is read with `currentConfig.get/set` somewhere else.
	**/
	public static function configMacro( ?prefix : String ) : Array<Field> {
		var cl = Context.getLocalClass().get();
		var fields = Context.getBuildFields();

		var classPath = cl.pack.concat([cl.name]).join(".");
		var keyPrefix = prefix ?? classPath;
		var configFields : Array<ConfigField> = [];

		for( f in fields ) {
			var meta = Lambda.find(f.meta, m -> m.name == ":config");
			if( meta == null ) continue;

			if( f.access == null || !f.access.contains(AStatic) ) {
				Context.error("@:config can only be used on a static variable", f.pos);
				continue;
			}

			switch( f.kind ) {
			case FVar(t, e):
				var key = keyPrefix + "." + f.name;
				if( meta.params != null && meta.params.length > 0 ) {
					switch( meta.params[0].expr ) {
					case EConst(CString(s)):
						key = StringTools.startsWith(s, "#") ? s.substr(1) : keyPrefix + "." + s;
					default: Context.error("@:config parameter must be a constant string", meta.params[0].pos);
					}
				}
				var owner = classPath + "." + f.name;
				var prev = registeredKeys.get(key);
				if( prev != null && prev != owner )
					Context.error('The config key "' + key + '" is already declared by ' + prev, f.pos);
				registeredKeys.set(key, owner);

				configFields.push({ field : f, key : key, type : t, defaultValue : e });
			default:
				Context.error("@:config can only be used on a variable", f.pos);
			}
		}

		for( c in configFields ) {
			var f = c.field;
			var name = f.name;

			if( c.type == null ) {
				Context.error("@:config variable must have an explicit type", f.pos);
				continue;
			}

			var t = c.type;
			var key = c.key;
			var defaultValue = c.defaultValue ?? macro null;

			// The value isn't stored in the class anymore, it only lives in the config
			f.kind = FProp("get", "set", t, null);

			fields.push({
				name : "get_" + name,
				access : [AStatic],
				pos : f.pos,
				kind : FFun({
					args : [],
					ret : t,
					expr : macro return hide.Ide.inst.currentConfig.get($v{key}, $defaultValue),
				}),
			});

			fields.push({
				name : "set_" + name,
				access : [AStatic],
				pos : f.pos,
				kind : FFun({
					args : [{ name : "value", type : t }],
					ret : t,
					expr : macro {
						hide.Ide.inst.currentConfig.set($v{key}, value != $defaultValue ? value : null);
						return value;
					},
				}),
			});
		}

		return fields;
	}

#end
}
