# hide.prefab.MovablePoint

**class** · package [`hide.prefab`](README.md) · module `hide.prefab.PolygonEditor` · source [`hide_js/hide/prefab/PolygonEditor.hx`](../../../../../hide_js/hide/prefab/PolygonEditor.hx) · available on editor (js)

A movable point handle of the polygon editor.

## Constructor

### new

```haxe
function new(point:h2d.col.Point, ctx:hrt.prefab.l3d.Polygon):Void
```

Creates the handle of a point of a polygon.

## Variables

### showDebug

```haxe
var showDebug:Bool
```

Shows the local and world positions of the point.

### point

```haxe
var point:h2d.col.Point
```

The polygon point.

### colorState

```haxe
var colorState:ColorState
```

The highlight state.

## Methods

### dispose

```haxe
function dispose():Void
```

Removes the handle.

### updateText

```haxe
function updateText(ctx:hrt.prefab.l3d.Polygon):Void
```

Updates the position texts.

### updateColor

```haxe
function updateColor():Void
```

Applies the highlight state to the handle color.

### interset

```haxe
function interset(ray:h3d.col.Ray):Bool
```

Tells if a ray hits the handle.

### setColorState

```haxe
function setColorState(s:ColorState):Void
```

Sets the highlight state.
