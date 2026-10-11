# hide.view.RemoteConsolePanel

**class** · package [`hide.view`](README.md) · module `hide.view.RemoteConsoleView` · source [`hide_js/hide/view/RemoteConsoleView.hx`](../../../../../hide_js/hide/view/RemoteConsoleView.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

A panel of the remote console view: the logs and command controls of a connection.

## Constructor

### new

```haxe
function new(view:RemoteConsoleView, connection:Null<hrt.impl.RemoteConsoleConnection>, commands:Null<Array<String>>):Void
```

Creates a panel with the command controls `commands` (all by default).

## Variables

### connection

```haxe
var connection(default, set):hrt.impl.RemoteConsoleConnection
```

The connection, or null.

### peerPath

```haxe
var peerPath(default, null):String
```

The program path of the connected game.

### peerCwd

```haxe
var peerCwd(default, null):String
```

The working directory of the connected game.

## Methods

### close

```haxe
function close(disconnect:Bool):Void
```

Closes the panel, and the connection if `disconnect`.

### isConnected

```haxe
function isConnected():Bool
```

Tells if the connection is open.

### log

```haxe
function log(msg:String, ?error:Bool = false):Void
```

Adds a message to the logs.

### sendCommand

```haxe
function sendCommand(cmd:String, ?args:Dynamic, ?onResult:() -> Void):Void
```

Sends a command to the game. `onResult` is called with its result.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
