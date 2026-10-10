package hrt.impl;

/**
	Called with the new data of a prefab edited remotely.
**/
typedef RemotePrefabCallback = (data: Dynamic) -> Void;

/**
	A helper class to use a RemoteConsole in game.
 */
class RemoteTools {

	/**
		The delay between connection attempts, in seconds.
	**/
	public static var RETRY_DELAY : Float = 2;

	static var rc : hrt.impl.RemoteConsole;
	static var mainEvent : haxe.MainLoop.MainEvent;
	static var lastUpdate : Float;
	static var onConnected : Bool -> Void;
	static var menuActions : Array<{ action : RemoteConsole.RemoteMenuAction, f : (id:String) -> Int }> = [];
	static var uriActions : Array<{ path : String, f : (uri: String) -> Void }> = [];
	static var remotePrefabsCallbacks: Map<String, RemotePrefabCallback> = [];

	/**
		Connects to the editor (host and port from `remoteconsole` in `props.json`), retrying every `RETRY_DELAY` seconds.
	**/
	public static function autoConnect( ?onConnected : Bool -> Void ) {
		RemoteTools.onConnected = onConnected;
		if( rc != null )
			return;
		var configdyn : Dynamic = null;
		if( hxd.res.Loader.currentInstance != null ) {
			var config = hxd.res.Loader.currentInstance.fs.get("props.json");
			configdyn = try haxe.Json.parse(config.getText()).remoteconsole catch( e : Dynamic ) null;
		} else {
			var config = try sys.io.File.getContent("res/props.json") catch( e : Dynamic ) null;
			configdyn = try haxe.Json.parse(config).remoteconsole catch( e : Dynamic ) null;
		}
		rc = new hrt.impl.RemoteConsole(configdyn?.port, configdyn?.host);
		mainEvent = haxe.MainLoop.add(update);
	}

	/**
		Stops the connection.
	**/
	public static function stop() {
		if( mainEvent != null ) {
			mainEvent.stop();
		}
		mainEvent = null;
		if( rc != null ) {
			rc.close();
		}
		rc = null;
	}

	/**
		Tells if the game is connected to the editor.
	**/
	public static function isConnected() {
		return rc != null && rc.isConnected();
	}

	/**
		Runs a console command received from the editor. Logs an error by default.
	**/
	public static dynamic function onConsoleCommand( cmd : String ) : Int {
		logError('onConsoleCommand not implemented, received $cmd');
		return -1;
	}

	/**
		Adds an entry to the menu of the lines of a CastleDB sheet in the editor, calling `f` with the line id.
	**/
	public static function registerCdbMenu( sheet : String, name : String, f : (id:String) -> Int ) {
		menuActions.push({ action : { name : name, cdbSheet: sheet }, f : f});
		// Send menuActions if already connected
		if( rc != null && rc.isConnected() ) {
			rc.sendCommand("registerMenuActions", { actions : [for( ma in menuActions ) ma.action] });
		}
	}

	static function onMenuAction( action : RemoteConsole.RemoteMenuAction, id : String ) : Int {
		if( action == null || id == null )
			return -1;
		for( ma in menuActions ) {
			if( ma.action.name == action.name && ma.action.cdbSheet == action.cdbSheet ) {
				return ma.f(id);
			}
		}
		return -1;
	}

	/**
		Parses a URI (`scheme://path?a=b&c=d`) and calls `onUri`.
	**/
	public static function handleUri(uri: String) {
		if (onUri == null)
			return;
		var start = uri.indexOf("://");
		var path = uri.substr(start + "://".length);

		var parts = path.split("?");
		var args = new Map();
		var argsStr = parts[1];
		var path = parts[0];
		if (argsStr != null) {
			var parts = argsStr.split("&");
			for( p in parts ) {
				var p = p.split("=");
				args.set(p[0], StringTools.urlDecode(p[1]));
			}
		}
		onUri(uri, path, args);
	}
	/**
		Called with the URIs received from the editor, their path and arguments.
	**/
	public static var onUri: (uri: String, path: String, args: Map<String, String>) -> Void = null;

	static function update() {
		if( rc == null || rc.isConnected() )
			return;
		var current = haxe.Timer.stamp();
		if( current - lastUpdate < RETRY_DELAY )
			return;
		lastUpdate = current;
		rc.connect(function(b) {
			if( onConnected != null )
				onConnected(b);
			if( b ) {
				var c = rc.connections[0];
				if( c != null ) {
					c.onConsoleCommand = (cmd) -> onConsoleCommand(cmd);
					c.onMenuAction = (action,id) -> onMenuAction(action,id);
					c.onUri = (uri) -> handleUri(uri);
				}
				// Send menuActions
				rc.sendCommand("registerMenuActions", { actions : [for( ma in menuActions ) ma.action] });
			}
		});
	}

	// ----- Commands -----

	/**
		Logs a message in the editor.
	**/
	public static function log( msg : String ) {
		rc?.sendCommand("log", msg);
	}

	/**
		Logs an error in the editor.
	**/
	public static function logError( msg : String ) {
		rc?.sendCommand("logError", msg);
	}

	/**
		@param selectExpr hscript expression that are used for select a line in the given sheet.
		Example: `$.id == Some_Unique_Id`, `$.name == SomeName`
		(`"` can be omitted in String literal when no ambiguity).
	 */
	public static function openCdb( sheet : String, ?line : Int, ?column : Int, ?selectExpr : String ) {
		rc?.sendCommand("open", { cdbsheet : sheet, line : line, column : column, selectExpr : selectExpr });
	}

	/**
		Opens a resource file in the editor.
	**/
	public static function openRes( file : String ) {
		rc?.sendCommand("open", { file : file });
	}

	/**
		Opens a domkit file in the editor, at a line and column.
	**/
	public static function openDomkit( file : String, ?line : Int, ?column : Int ) {
		rc?.sendCommand("open", { file : file, line : line, column : column });
	}

	/**
		@param selectExpr hscript expression that are used for select some elements in the view.
		Example: `$.name == SomeName`, `$.props.id == Some_Unique_Id`
		(`"` can be omitted in String literal when no ambiguity).
	 */
	public static function openPrefab( file : String, ?selectExpr : String ) {
		rc?.sendCommand("open", { file : file, selectExpr : selectExpr });
	}

	/**
		Opens a prefab of the game in the editor, calling `callback` with the new data when it is modified there.
	**/
	public static function editPrefab( prefab: hrt.prefab.Prefab, id: String, callback: RemotePrefabCallback) {
		rc?.sendCommand("remotePrefab", {kind: hrt.impl.RemoteConsole.RemotePrefabActionKind.Open, data: @:privateAccess prefab.serialize(), id: id});
		remotePrefabsCallbacks.set(id, callback);
	}
}
