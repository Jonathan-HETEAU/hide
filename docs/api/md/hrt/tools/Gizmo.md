# hrt.tools.Gizmo

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/Gizmo.hx`](../../../../../hrt/tools/Gizmo.hx)

Extends: `h3d.scene.Object`

A 3D gizmo to move, rotate and scale objects in the editor.

## Constructor

### new

```haxe
function new(parent:h3d.scene.Object):Void
```

Creates the gizmo.

## Static variables

### X_COLOR

```haxe
static final X_COLOR:Int
```

The color of the X axis, as ARGB.

### Y_COLOR

```haxe
static final Y_COLOR:Int
```

The color of the Y axis, as ARGB.

### Z_COLOR

```haxe
static final Z_COLOR:Int
```

The color of the Z axis, as ARGB.

### DEFAULT_COLOR

```haxe
static final DEFAULT_COLOR:Int
```

The color of the other handles, as ARGB.

## Variables

### mode

```haxe
var mode:EditMode
```

The mode.

### isLocalTransform

```haxe
var isLocalTransform(default, set):Bool
```

Aligns the gizmo with the objects instead of the world.

### isDragged

```haxe
var isDragged(default, null):Bool
```

Tells if a handle is dragged.

### onStartMove

```haxe
var onStartMove:() -> Void
```

Called when a handle starts being dragged.

### onMove

```haxe
var onMove:(offsetPosition:h3d.Vector, offsetRotation:h3d.Quat, offsetScale:h3d.Vector) -> Void
```

Called while dragging, with the offsets since the start.

### onFinishMove

```haxe
var onFinishMove:() -> Void
```

Called when the drag ends.

### onCancelMove

```haxe
var onCancelMove:() -> Void
```

Called when the drag is canceled.

## Methods

### update

```haxe
function update(dt:Float):Void
```

Keeps the gizmo at a constant size on screen.

### moveToObjects

```haxe
function moveToObjects(objs:Array<h3d.scene.Object>):Void
```

Places the gizmo at the center of the objects.

### isGizmo

```haxe
function isGizmo(obj:h3d.scene.Object):Bool
```

Tells if an object is part of the gizmo.

### setVisible

```haxe
function setVisible(visible:Bool):Void
```

Shows or hides the gizmo.

### isVisible

```haxe
function isVisible():Bool
```

Tells if the gizmo is visible.

### switchMode

```haxe
function switchMode():Void
```

Switches to the next mode: translation, rotation, scale, selection.

### selectionMode

```haxe
function selectionMode():Void
```

Switches to the selection mode.

### translationMode

```haxe
function translationMode():Void
```

Switches to the translation mode.

### rotationMode

```haxe
function rotationMode():Void
```

Switches to the rotation mode.

### scalingMode

```haxe
function scalingMode():Void
```

Switches to the scale mode.

### updateTransformSpace

```haxe
function updateTransformSpace():Void
```

Aligns the gizmo with the objects (local transform or scale mode) or the world.

### snap

```haxe
dynamic function snap(v:Float, mode:EditMode):Float
```

Returns a snapped value. Returns `v` by default.

### shouldSnap

```haxe
dynamic function shouldSnap():Bool
```

Tells if the values are snapped. Returns `false` by default.

### onChangeMode

```haxe
dynamic function onChangeMode(mode:EditMode):Void
```

Called when the mode changes.

### onChangeTransformSpace

```haxe
dynamic function onChangeTransformSpace(isLocalTransform:Bool):Void
```

Called when the transform space changes.
