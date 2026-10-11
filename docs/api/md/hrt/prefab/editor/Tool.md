# hrt.prefab.editor.Tool

**class** · package [`hrt.prefab.editor`](README.md) · source [`hrt/prefab/editor/Tool.hx`](../../../../../../hrt/prefab/editor/Tool.hx)

Subclasses: [`hrt.prefab.editor.QuickTool`](QuickTool.md), [`hrt.prefab.l3d.KitTestTool1`](../l3d/KitTestTool1.md), [`hrt.prefab.l3d.KitTestTool2`](../l3d/KitTestTool2.md), [`hrt.prefab.l3d.Layers2DTool`](../l3d/Layers2DTool.md), [`hrt.prefab.l3d.PolygonEditor2`](../l3d/PolygonEditor2.md)

An interactive tool of the scene editor (`EditContext2`), like a brush or a gizmo. Override `onEnter`, `onQuit` and `update`.

## Constructor

### new

```haxe
function new(ctx:hrt.prefab.EditContext2):Void
```

Creates the tool.

## Variables

### mouseSupport

```haxe
var mouseSupport(default, set):Bool
```

Captures the mouse events with an interactive while the tool is enabled.

### foreground

```haxe
var foreground:Bool
```

A foreground tool automatically remove the previous foreground tool when entered

## Methods

### enter

```haxe
function enter():Void
```

Enables the tool, quitting the previous foreground tool if this one is in the foreground.

### quit

```haxe
function quit():Void
```

Disables the tool. Throws if a foreground tool is not the current one.

### onDeleteCommand

```haxe
function onDeleteCommand():Bool
```

Return true to tell that the command has processed the delete command and that the command shouldn't be forwarded to
the current scene editor
