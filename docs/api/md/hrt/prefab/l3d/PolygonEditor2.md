# hrt.prefab.l3d.PolygonEditor2

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Polygon` · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx) · available on editor (js)

Extends: [`hrt.prefab.editor.Tool`](../editor/Tool.md)

The tool editing the points of a custom polygon.

## Constructor

### new

```haxe
function new(ctx:hrt.prefab.EditContext2, polygon:Polygon):Void
```

Creates the tool.

## Variables

### listEditor

```haxe
var listEditor:hide.kit.List<h2d.col.Point>
```

The list of the points in the properties.

## Methods

### onDeleteCommand

```haxe
override function onDeleteCommand():Bool
```

### getMousePos

```haxe
function getMousePos():h3d.Vector
```

Returns the position of the mouse in the plane of the polygon.

### unselectAll

```haxe
function unselectAll():Bool
```

Return true if a handle was selected

## Inherited members

- from [`hrt.prefab.editor.Tool`](../editor/Tool.md): `mouseSupport`, `foreground`, `enter`, `quit`, `onDeleteCommand`
