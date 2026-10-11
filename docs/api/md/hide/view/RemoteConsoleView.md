# hide.view.RemoteConsoleView

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/RemoteConsoleView.hx`](../../../../../hide_js/hide/view/RemoteConsoleView.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

props.json configuration (all fields are optional):
```json
"remoteconsole": {
    "host": "127.0.0.1",
    "port": 40001,
    "disableAutoStartServer": false,
    "commands": [
        "hashlink",
        "custom"
    ]
},
```

## Constructor

### new

```haxe
function new(?state:{  }):Void
```

Creates the view.

## Static variables

### commandViews

```haxe
static var commandViews:Map<String, Class<RemoteConsoleCommand>>
```

The command controls shown in the panels, by name.

## Static methods

### refreshStatusIcon

```haxe
static function refreshStatusIcon():Void
```

Updates the connection icon of the status bar.

### onBeforeReload

```haxe
static function onBeforeReload():Void
```

Stops the server before the IDE reloads.

### getCdbMenuActions

```haxe
static function getCdbMenuActions(sheet:String, id:String):Array<hrt.ui.MenuItem>
```

Returns the menu actions of the connected games for a CDB line.

### onOpenUri

```haxe
static function onOpenUri(uri:String):Void
```

Sends an URI to the connected games (`handleUri` command).

### runInRemoteConsole

```haxe
static function runInRemoteConsole(cmd:String):Void
```

For hide-plugin: send console command to connected game instances

### registerCommandView

```haxe
static function registerCommandView(name:String, cl:Class<RemoteConsoleCommand>):Null<Dynamic>
```

For hide-plugin: add/modify game-specific hide command control

## Methods

### onBeforeClose

```haxe
override function onBeforeClose():Bool
```

### getTitle

```haxe
override function getTitle():String
```

### removePanel

```haxe
function removePanel(p:RemoteConsolePanel):Void
```

Removes a panel and closes its connection.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
