# hide.view.l3d.Gizmo2D

**class** · package [`hide.view.l3d`](README.md) · source [`hide_js/hide/view/l3d/Gizmo2D.hx`](../../../../../../hide_js/hide/view/l3d/Gizmo2D.hx) · available on editor (js)

Extends: `h2d.Object`

The 2D transform gizmo: moves, scales and rotates the selected 2D objects.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the gizmo.

## Variables

### scaleAmount

```haxe
var scaleAmount:Float
```

Not used by the gizmo.

### onStartMove

```haxe
var onStartMove:() -> Void
```

Called when a transformation starts.

### onMove

```haxe
var onMove:() -> Void
```

Called with the transformation during a move.

### onFinishMove

```haxe
var onFinishMove:() -> Void
```

Called when the transformation ends.

### moving

```haxe
var moving(default, null):Bool
```

True during a transformation.

## Methods

### startMove

```haxe
function startMove(t:Transform2D):Void
```

Starts a transformation with the mouse.

### setSize

```haxe
function setSize(w:Float, h:Float):Void
```

Sets the size of the gizmo frame.
