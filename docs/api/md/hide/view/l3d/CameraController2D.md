# hide.view.l3d.CameraController2D

**class** · package [`hide.view.l3d`](README.md) · source [`hide_js/hide/view/l3d/CameraController2D.hx`](../../../../../../hide_js/hide/view/l3d/CameraController2D.hx) · available on editor (js)

Extends: `h2d.Object`

A 2D camera controller: pans with the mouse and zooms with the wheel, with inertia.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the controller.

## Variables

### friction

```haxe
var friction:Float
```

How fast the pan inertia stops (0 to 1).

### zoomAmount

```haxe
var zoomAmount:Float
```

The zoom factor of a wheel step.

### panSpeed

```haxe
var panSpeed:Float
```

The pan speed factor.

### smooth

```haxe
var smooth:Float
```

The smoothing of the moves (0 for none).

## Methods

### set

```haxe
function set(x:Float, y:Float, ?zoom:Float):Void
```

Set the controller parameters.
Distance is ray distance from target.
Theta and Phi are the two spherical angles
Target is the target position

### loadFromScene

```haxe
function loadFromScene(?animate:Bool = false):Void
```

Load current position from current camera position and target.
Call if you want to modify manually the camera.

### initFromScene

```haxe
function initFromScene():Void
```

Initialize to look at the whole scene, based on reported scene bounds.

### toTarget

```haxe
function toTarget():Void
```

Stop animation by directly moving to end position.
Call after set() if you don't want to animate the change

### onClick

```haxe
dynamic function onClick(e:hxd.Event):Void
```

Called on a click.

### onCustomEvent

```haxe
dynamic function onCustomEvent(e:hxd.Event):Void
```

Called with each event, to handle extra controls.
