# hrt.impl.RemoteConsole

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/RemoteConsole.hx`](../../../../../hrt/impl/RemoteConsole.hx)

A simple socket-based local communication channel (plaintext and unsafe),
aim at communicate between 2 programs (e.g. Hide and a HL game).

Usage in game (see also hrt.impl.RemoteTools):
```haxe
var rcmd = new hrt.impl.RemoteConsole();
// rcmd.log = (msg) -> logToUI(msg);
// rcmd.logError = (msg) -> logErrorToUI(msg);
rcmd.connect();
rcmd.sendCommand("log", "Hello!", function(r) {});
```

## Constructor

### new

```haxe
function new(?port:Int, ?host:String):Void
```

Creates the console.

## Static variables

### DEFAULT_HOST

```haxe
static var DEFAULT_HOST:String
```

The default host.

### DEFAULT_PORT

```haxe
static var DEFAULT_PORT:Int
```

The default port.

### SILENT_CONNECT

```haxe
static var SILENT_CONNECT:Bool
```

Does not log the connection attempts and errors.

## Variables

### host

```haxe
var host:String
```

The host.

### port

```haxe
var port:Int
```

The port.

### connections

```haxe
var connections:Array<RemoteConsoleConnection>
```

The connections.

## Methods

### startServer

```haxe
function startServer(?onClient:() -> Void):Void
```

Starts a server (in the editor), calling `onClient` for each client.

### connect

```haxe
function connect(?onConnected:() -> Void):Void
```

Connects to the server (from the game).

### close

```haxe
function close():Void
```

Closes the socket and the connections.

### isConnected

```haxe
function isConnected():Bool
```

Tells if the socket is open.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the console is closed.

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

Sends a command to the connections, calling `onResult` with the reply.
