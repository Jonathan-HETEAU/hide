# hrt.prefab.fx.ParticleInstance

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter` · source [`hrt/prefab/fx/Emitter.hx`](../../../../../../hrt/prefab/fx/Emitter.hx)

A particle of an `EmitterObject` (internal state of the simulation).

## Constructor

### new

```haxe
function new():Void
```

Creates a particle.

## Static variables

### REMOVED_IDX

```haxe
static inline var REMOVED_IDX:Int = -1
```

The index of a removed particle.

### tmpMat

```haxe
static var tmpMat:h3d.Matrix
```

A temporary matrix.

### tmpMat2

```haxe
static var tmpMat2:h3d.Matrix
```

A temporary matrix.

## Variables

### prev

```haxe
var prev:ParticleInstance
```

The previous particle of the sorted list.

### next

```haxe
var next:ParticleInstance
```

The next particle of the sorted list.

### x

```haxe
var x:Single
```

The X position.

### y

```haxe
var y:Single
```

The Y position.

### z

```haxe
var z:Single
```

The Z position.

### scaleX

```haxe
var scaleX:Single
```

The X scale.

### scaleY

```haxe
var scaleY:Single
```

The Y scale.

### scaleZ

```haxe
var scaleZ:Single
```

The Z scale.

### trail

```haxe
var trail:hrt.prefab.l3d.TrailHead
```

The trail of the particle, or `null`.

### trailGeneration

```haxe
var trailGeneration:Int
```

The generation of the trail, to detect a reused trail.

### subEmitters

```haxe
var subEmitters:Array<EmitterObject>
```

The sub emitters following the particle, or `null`.

### speedAccumulation

```haxe
var speedAccumulation(default, null):SVector3
```

The accumulated speed.

### qRot

```haxe
var qRot(default, null):SVector4
```

The rotation, as a quaternion.

### absPos

```haxe
var absPos(default, null):SMatrix4
```

The absolute transform, used for the depth sorting.

### emitOrientation

```haxe
var emitOrientation(default, null):SMatrix3
```

The orientation of the emitter when the particle was emitted.

### colorMult

```haxe
var colorMult:Int
```

The color multiplier (random color).

### idx

```haxe
var idx:Int
```

The index of the particle, or `REMOVED_IDX`.

### startFrame

```haxe
var startFrame:hxd.impl.UInt16
```

The first frame of the sprite sheet animation.

### life

```haxe
var life:Single
```

The age of the particle, in seconds.

### lifeTime

```haxe
var lifeTime:Single
```

The lifetime of the particle, in seconds.

### random

```haxe
var random:Single
```

The random value of the particle, between `0` and `1`.

### distToCam

```haxe
var distToCam:Single
```

The distance to the camera, for the sorting.

### startTime

```haxe
var startTime:Single
```

The time of emission.

## Methods

### load

```haxe
function load(p:ParticleInstance):Void
```

Copies the state of another particle.

### clear

```haxe
function clear(?emitter:EmitterObject):Void
```

Releases the trail and sub emitters of the particle.

### init

```haxe
function init(idx:Int, emitter:EmitterObject):Void
```

Initializes the particle emitted by the emitter.

### add

```haxe
inline function add(v1:h3d.Vector, v2:h3d.Vector4):Void
```

Adds a vector to another.

### sub

```haxe
inline function sub(v1:h3d.Vector, v2:h3d.Vector4):Void
```

Subtracts a vector from another.

### cross

```haxe
inline function cross(v1:h3d.Vector, v2:h3d.Vector):Void
```

Returns the cross product of two vectors.

### getPosition

```haxe
inline function getPosition():h3d.Vector
```

Returns the position.

### setPosition

```haxe
inline function setPosition(x:Single, y:Single, z:Single):Void
```

Sets the position.

### setScale

```haxe
inline function setScale(x:Single, y:Single, z:Single):Void
```

Sets the scale.

### updateAbsPos

```haxe
function updateAbsPos(emitter:EmitterObject):Void
```

Updates the absolute transform from the position, rotation and scale.

### update

```haxe
function update(emitter:EmitterObject, scene:h3d.scene.Scene, dt:Float):Void
```

Updates the particle for the elapsed time `dt`.
