# hrt.prefab.l3d.TrailObj

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Trails` · source [`hrt/prefab/l3d/Trails.hx`](../../../../../../hrt/prefab/l3d/Trails.hx)

Extends: `h3d.scene.Mesh`

The mesh of `Trails`: several trails following positions, built each frame.

## Constructor

### new

```haxe
function new(parentPrefab:Trails, parent:h3d.scene.Object, numTrails:Int):Void
```

Creates the mesh with `numTrails` trails.

## Variables

### timeScale

```haxe
var timeScale:Float
```

The speed of the time of the trails (`0` to update them manually with `update`).

### sizeMultiplier

```haxe
var sizeMultiplier:Float
```

The factor of the width of the new points.

### autoTrackPosition

```haxe
var autoTrackPosition:Bool
```

Adds the position of this object to the first trail at each update. Otherwise the trails are fed with `updateTrail` or `addPoint`.

### numTrails

```haxe
var numTrails(default, null):Int
```

The number of trails.

### materialData

```haxe
var materialData:{  }
```

The material properties, by material setup.

## Methods

### calcMaxTrailPoints

```haxe
function calcMaxTrailPoints():Int
```

Returns the maximum number of points of a trail.

### setConstantSpeed

```haxe
function setConstantSpeed(x:Float, y:Float, z:Float):Void
```

Apply a constant speed on the trails points so they appear to move even if the trailObj doesn't move.

### init

```haxe
function init():Void
```

Allocates the buffers, the points and the trails.

### allocTrail

```haxe
function allocTrail():TrailHead
```

Returns a free trail. Throws if none is left.

### disposeTrail

```haxe
function disposeTrail(t:TrailHead):Void
```

Clears a trail and returns it to the free trails.

### reset

```haxe
function reset():Void
```

Clears all the trails.

### updateShader

```haxe
function updateShader():Void
```

Applies the UV repeat and color settings of the prefab to the shaders.

### addPoint

```haxe
function addPoint(head:TrailHead, x:Float, y:Float, z:Float):Void
```

Adds a point at the head of a trail (ignored if too close to the last one).

### getMaterialProps

```haxe
function getMaterialProps():Null<Any>
```

Returns the material properties of the current material setup.

### updateTrail

```haxe
function updateTrail(t:TrailHead, dt:Float, x:Float, y:Float, z:Float):Void
```

Moves the head of a trail to a position, adding points at the framerate of the prefab, and ages its points by `dt`.

### update

```haxe
function update(dt:Float):Void
```

Updates the trails for the elapsed time `dt`.

### getLodIndex

```haxe
override function getLodIndex():Int
```
