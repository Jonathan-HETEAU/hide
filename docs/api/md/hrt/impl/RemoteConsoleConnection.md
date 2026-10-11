# hrt.impl.RemoteConsoleConnection

**class** · package [`hrt.impl`](README.md) · module `hrt.impl.RemoteConsole` · source [`hrt/impl/RemoteConsole.hx`](../../../../../hrt/impl/RemoteConsole.hx)

A connection of a `RemoteConsole`. Messages are JSON lines; the `@cmd` methods are the commands it handles.

## Constructor

### new

```haxe
function new(parent:RemoteConsole, s:hxd.net.Socket):Void
```

Creates the connection.

## Static variables

### __rtti

```haxe
static var __rtti:String
```

## Static methods

### allocStatsFormat _(runtime (hl) only)_

```haxe
static function allocStatsFormat(stats:Array<h3d.impl.AllocStats>):String
```

Returns the GPU memory allocations as text, by size.

## Variables

### menuActions

```haxe
var menuActions(default, null):Array<RemoteMenuAction>
```

The menu entries registered by the game.

## Methods

### close

```haxe
function close():Void
```

Closes the connection.

### isConnected

```haxe
function isConnected():Bool
```

Tells if the socket is open.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the connection is closed.

### log

```haxe
dynamic function log(msg:String):Void
```

Logs a message. Traces it by default.

### logError

```haxe
dynamic function logError(msg:String):Void
```

Logs an error. Traces it by default.

### sendCommand

```haxe
function sendCommand(cmd:String, ?args:Dynamic, ?onResult:() -> Void):Void
```

Sends a command, calling `onResult` with the reply.

### handleOnData

```haxe
function handleOnData():Void
```

Reads the received messages: replies, or commands to run.

### registerCommand

```haxe
function registerCommand(name:String, f:(args:Dynamic, onDone:() -> Void) -> Void):Void
```

Register a single command `name`, with `f` as command handler.
`args` can be null, or an object that can be parsed from/to json.
`onDone(result)` must be called when `f` finishes, and `result` can be null or a json serializable object.

If `f` is `null`, the command is considered removed.

### registerCommands

```haxe
function registerCommands(o:Dynamic):Void
```

Register functions marked with `@cmd` in instance `o` as command handler (class of `o` needs `@:rtti` and `@:keep`).
This is done with `Reflect` and `registerCommand`, `onDone` call are inserted automatically when necessary.
Function name will be used as `cmd` key (and alias name if `@cmd("aliasname")`),
if multiple function use the same name, only the latest registered is taken into account.

Supported `@cmd` function signature:
``` haxe
@cmd function foo() : Dynamic {}
@cmd function foo(args : Dynamic) : Dynamic {}
@cmd function foo(onDone : Dynamic->Void) : Void {}
@cmd function foo(args : Dynamic, onDone : Dynamic->Void) : Void {}
```

### onConsoleCommand

```haxe
dynamic function onConsoleCommand(cmd:String):Int
```

Runs a console command received from the editor. Logs an error by default.

### onMenuAction

```haxe
dynamic function onMenuAction(action:RemoteMenuAction, id:String):Int
```

Runs a menu entry chosen in the editor. Logs an error by default.

### onUri

```haxe
dynamic function onUri(uri:String):Void
```

Handles a URI received from the editor. Logs an error by default.
