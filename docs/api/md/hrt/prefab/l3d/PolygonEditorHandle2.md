# hrt.prefab.l3d.PolygonEditorHandle2

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Polygon` · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx) · available on editor (js)

Extends: `h3d.scene.Object`

A handle of a point of the polygon editor.

## Constructor

### new

```haxe
function new(tool:PolygonEditor2, parent:h3d.scene.Object):Void
```

Creates the handle.

## Variables

### tool

```haxe
var tool:PolygonEditor2
```

The tool.

### sphere

```haxe
var sphere:h3d.scene.Mesh
```

The displayed sphere.

### baseScale

```haxe
var baseScale:Float
```

The scale of the handle.

### selected

```haxe
var selected:Bool
```

Tells if the handle is selected.

## Methods

### setSelected

```haxe
function setSelected(selected:Bool):Void
```

Selects or unselects the handle.

### setHover

```haxe
function setHover(hover:Bool):Void
```

Highlights the handle when hovered.
