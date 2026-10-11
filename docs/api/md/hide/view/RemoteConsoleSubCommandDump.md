# hide.view.RemoteConsoleSubCommandDump

**class** · package [`hide.view`](README.md) · module `hide.view.RemoteConsoleView` · source [`hide_js/hide/view/RemoteConsoleView.hx`](../../../../../hide_js/hide/view/RemoteConsoleView.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

A dump control: asks the game for a dump file, then exports or opens it.

## Constructor

### new

```haxe
function new(panel:RemoteConsolePanel, doDump:(onResult:(file:String, filedesc:String, dir:String) -> Void) -> Void, ?doOpen:(file:String) -> Void, ?autoOpen:Bool = true, ?onExport:(file:String) -> Void):Void
```

Creates a dump control. `doDump` asks for the dump, `doOpen` opens it (automatically if `autoOpen`), and `onExport` is called after an export.

## Variables

### dumpFile

```haxe
var dumpFile:hide.Element
```

The field showing the dump file.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
