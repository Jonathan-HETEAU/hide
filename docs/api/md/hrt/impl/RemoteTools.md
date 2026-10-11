# hrt.impl.RemoteTools

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/RemoteTools.hx`](../../../../../hrt/impl/RemoteTools.hx)

A helper class to use a RemoteConsole in game.

## Static variables

### RETRY_DELAY

```haxe
static var RETRY_DELAY:Float
```

The delay between connection attempts, in seconds.

### onUri

```haxe
static var onUri:(uri:String, path:String, args:Map<String, String>) -> Void
```

Called with the URIs received from the editor, their path and arguments.

## Static methods

### autoConnect

```haxe
static function autoConnect(?onConnected:() -> Void):Void
```

Connects to the editor (host and port from `remoteconsole` in `props.json`), retrying every `RETRY_DELAY` seconds.

### stop

```haxe
static function stop():Void
```

Stops the connection.

### isConnected

```haxe
static function isConnected():Bool
```

Tells if the game is connected to the editor.

### onConsoleCommand

```haxe
static dynamic function onConsoleCommand(cmd:String):Int
```

Runs a console command received from the editor. Logs an error by default.

### registerCdbMenu

```haxe
static function registerCdbMenu(sheet:String, name:String, f:(id:String) -> Int):Void
```

Adds an entry to the menu of the lines of a CastleDB sheet in the editor, calling `f` with the line id.

### handleUri

```haxe
static function handleUri(uri:String):Void
```

Parses a URI (`scheme://path?a=b&c=d`) and calls `onUri`.

### log

```haxe
static function log(msg:String):Void
```

Logs a message in the editor.

### logError

```haxe
static function logError(msg:String):Void
```

Logs an error in the editor.

### openCdb

```haxe
static function openCdb(sheet:String, ?line:Int, ?column:Int, ?selectExpr:String):Void
```

- **param** `selectExpr` hscript expression that are used for select a line in the given sheet.
Example: `$.id == Some_Unique_Id`, `$.name == SomeName`
(`"` can be omitted in String literal when no ambiguity).

### openRes

```haxe
static function openRes(file:String):Void
```

Opens a resource file in the editor.

### openDomkit

```haxe
static function openDomkit(file:String, ?line:Int, ?column:Int):Void
```

Opens a domkit file in the editor, at a line and column.

### openPrefab

```haxe
static function openPrefab(file:String, ?selectExpr:String):Void
```

- **param** `selectExpr` hscript expression that are used for select some elements in the view.
Example: `$.name == SomeName`, `$.props.id == Some_Unique_Id`
(`"` can be omitted in String literal when no ambiguity).

### editPrefab

```haxe
static function editPrefab(prefab:hrt.prefab.Prefab, id:String, callback:RemotePrefabCallback):Void
```

Opens a prefab of the game in the editor, calling `callback` with the new data when it is modified there.
