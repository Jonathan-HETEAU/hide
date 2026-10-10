package hide;

/**
	The options of a file extension.
**/
typedef ExtensionOptions = {
	/**
		The icon of the files.
	**/
	var ?icon : String;
	/**
		The name of the file kind in the create menu, or null if files can't be created.
	**/
	var ?createNew : String;
	/**
		The name of the file kind.
	**/
	var ?name : String;
}

/**
	A registered file extension.
**/
typedef ExtensionDesc = {
	/**
		The view class name.
	**/
	var component : String;
	/**
		The file extensions.
	**/
	var extensions : Array<String>;
	/**
		The options.
	**/
	var options : ExtensionOptions;
}

/**
	The registry of the views opening each file extension.
**/
class Extension {
	/**
		The registered extensions.
	**/
	public static var EXTENSIONS = new Map<String, ExtensionDesc>();

	/**
		Registers a view opening files with extensions (replacing the view of an extension already registered, and merging the options). Returns null, to be used as a static initializer.
	**/
	public static function registerExtension<T>( c : Class<hide.ui.View<T>>, extensions : Array<String>, ?options : ExtensionOptions ) {
		hide.ui.View.register(c);
		for (e in extensions) {
			var registered = EXTENSIONS.get(e);
			if (registered == null) {
				registered = {component: Type.getClassName(c), options: {}, extensions: extensions };
				EXTENSIONS.set(e, registered);
			}
			else {
				// Override views in projects
				registered.component = Type.getClassName(c);
			}
			if( options == null ) options = {};
			for (field in Reflect.fields(options)) {
				Reflect.setField(registered.options, field, Reflect.field(options, field));
			}
		}
		return null;
	}

	/**
		Returns the registered extension of a file (`json.<type>` for JSON files with a `type` field), or null.
	**/
	public static function getExtension( file : String ) {
		var ext = new haxe.io.Path(file).ext;
		if( ext == null ) return null;
		ext = ext.toLowerCase();
		if( ext == "json" ) {
			try {
				var obj : Dynamic = haxe.Json.parse(sys.io.File.getContent(file));
				if( obj.type != null && Std.isOfType(obj.type, String) ) {
					var e = EXTENSIONS.get("json." + obj.type);
					if( e != null ) return e;
				}
			} catch( e : Dynamic ) {
			}
		}
		return EXTENSIONS.get(ext);
	}
}