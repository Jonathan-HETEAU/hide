# hrt.prefab.editor.QuickTool

**class** · package [`hrt.prefab.editor`](README.md) · source [`hrt/prefab/editor/QuickTool.hx`](../../../../../../hrt/prefab/editor/QuickTool.hx)

Extends: [`hrt.prefab.editor.Tool`](Tool.md)

A `Tool` defined by callbacks.

## Constructor

### new

```haxe
function new(ctx:hrt.prefab.EditContext2, onEnter:Null<() -> Void>, onQuit:Null<() -> Void>, update:Null<(dt:Float) -> Void>):Void
```

Creates the tool with its enter, quit and update callbacks (each can be `null`).

## Inherited members

- from [`hrt.prefab.editor.Tool`](Tool.md): `mouseSupport`, `foreground`, `enter`, `quit`, `onDeleteCommand`
