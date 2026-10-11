# hrt.prefab.fx.EmitterObject

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter` · source [`hrt/prefab/fx/Emitter.hx`](../../../../../../hrt/prefab/fx/Emitter.hx)

Extends: `h3d.scene.Object`

The 3D object of an `Emitter`: simulates and renders the particles (with a `h3d.scene.MeshBatch`). Its fields are the evaluated parameters of the prefab.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates the object.

## Static methods

### checkEnabled

```haxe
static function checkEnabled(prefab:hrt.prefab.Prefab):Bool
```

Tells if the prefab is enabled (and not hidden in the editor).

## Variables

### instDef

```haxe
var instDef:InstanceDef
```

The values of the particle parameters.

### particles

```haxe
var particles:PartArray
```

The particles.

### particlesCount

```haxe
var particlesCount:Int
```

The capacity of `particles`.

### listHead

```haxe
var listHead:ParticleInstance
```

The first particle of the sorted list.

### batch

```haxe
var batch:h3d.scene.MeshBatch
```

The mesh batch rendering the particles.

### customAnims

```haxe
var customAnims:Array<CustomAnimation>
```

The animations of the particle template.

### isSubEmitter

```haxe
var isSubEmitter:Bool
```

Tells if this is a sub emitter of another emitter.

### relativeScenePosition

```haxe
var relativeScenePosition:Bool
```

Tells if the emitter is positioned relative to the scene.

### parentEmitter

```haxe
var parentEmitter:EmitterObject
```

The emitter of the particle spawning this sub emitter, or `null`.

### enable

```haxe
var enable:Bool
```

Enables the emission.

### scene

```haxe
var scene:h3d.scene.Scene
```

The scene, while the emitter is in it.

### catchupSpeed

```haxe
var catchupSpeed:Int
```

The factor of the time step when catching up, to save computations.

### totalBurstCount

```haxe
var totalBurstCount:Int
```

The number of bursts emitted.

### debugGraphics _(editor (js) only)_

```haxe
var debugGraphics:h3d.scene.Graphics
```

The debug display of the emitter (editor only).

### emitterPrefab

```haxe
var emitterPrefab:Emitter
```

The prefab of the emitter.

### parentNonEmitter

```haxe
var parentNonEmitter:h3d.scene.Object
```

The first parent which is not an emitter.

### seedGroup

```haxe
var seedGroup:Int
```

Combined with the random seed: emitters with the same group and seed get the same random values.

### particleTemplate

```haxe
var particleTemplate:hrt.prefab.Object3D
```

The prefab instanciated as the particle.

### subEmitterTemplates

```haxe
var subEmitterTemplates:Array<Emitter>
```

The sub emitters (children emitters) of the particles.

### subEmitters

```haxe
var subEmitters:Array<EmitterObject>
```

The active sub emitters.

### subEmitterKind

```haxe
var subEmitterKind:SubEmitterKind
```

When this emitter is spawned, as a sub emitter of a parent emitter.

### trails

```haxe
var trails:hrt.prefab.l3d.TrailObj
```

The trails of the particles, or `null`.

### trailsTemplate

```haxe
var trailsTemplate:hrt.prefab.l3d.Trails
```

The trails prefab, or `null`.

### lifeTime

```haxe
var lifeTime:Float
```

The lifetime of the particles, in seconds.

### lifeTimeRand

```haxe
var lifeTimeRand:Float
```

The random variation of the lifetime, in seconds: between `-lifeTimeRand` and `lifeTimeRand` is added.

### speedFactor

```haxe
var speedFactor:Float
```

The speed of the time of the emitter.

### warmUpTime

```haxe
var warmUpTime:Float
```

The time simulated when the emitter starts, in seconds.

### delay

```haxe
var delay:Float
```

The delay before the emitter starts, in seconds.

### emitOrientation

```haxe
var emitOrientation:Orientation
```

The initial orientation of the particles.

### simulationSpace

```haxe
var simulationSpace:SimulationSpace
```

The space in which the particles are simulated.

### particleScaling

```haxe
var particleScaling:ParticleScaling
```

Whether the particles are scaled with the parents of the emitter.

### emitType

```haxe
var emitType:EmitType
```

When the particles are emitted.

### burstCount

```haxe
var burstCount:Int
```

The number of bursts (`Burst`).

### burstParticleCount

```haxe
var burstParticleCount:Value
```

The number of particles of a burst.

### burstDelay

```haxe
var burstDelay:Float
```

The time between bursts, in seconds.

### emitDuration

```haxe
var emitDuration:Float
```

The duration of the emission, in seconds (`Duration` and `BurstDuration`).

### emitRate

```haxe
var emitRate:Value
```

The number of particles emitted per second.

### emitRateMin

```haxe
var emitRateMin:Value
```

The minimum emit rate (`InfinityRandom`).

### emitRateMax

```haxe
var emitRateMax:Value
```

The maximum emit rate (`InfinityRandom`).

### emitRateChangeDelay

```haxe
var emitRateChangeDelay:Float
```

The time between rate changes (`InfinityRandom`), in seconds.

### emitRateChangeDelayStart

```haxe
var emitRateChangeDelayStart:Float
```

The time of the last rate change (`InfinityRandom`).

### emitRateCurrent

```haxe
var emitRateCurrent:Float
```

The current emit rate (`InfinityRandom`).

### emitRatePrevious

```haxe
var emitRatePrevious:Float
```

The previous emit rate (`InfinityRandom`).

### emitRateTarget

```haxe
var emitRateTarget:Float
```

The target emit rate (`InfinityRandom`).

### emitScale

```haxe
var emitScale:Float
```

The factor of the emit rate.

### maxCount

```haxe
var maxCount:Int
```

The maximum number of particles alive.

### sortMode

```haxe
var sortMode:SortMode
```

How the particles are sorted.

### followRotation

```haxe
var followRotation:Bool
```

The particles follow the rotation of the emitter.

### applyMeshTransform

```haxe
var applyMeshTransform:Bool
```

Applies the transform of the particle template mesh.

### startSpeed

```haxe
var startSpeed:Value
```

The initial speed, in the space of the emitter.

### startWorldSpeed

```haxe
var startWorldSpeed:Value
```

The initial speed, in world space.

### emitShape

```haxe
var emitShape:EmitShape
```

The shape in which the particles are emitted.

### emitAngle

```haxe
var emitAngle:Value
```

The angle of the cone shape, in degrees.

### emitRad1

```haxe
var emitRad1:Float
```

The first radius of the shape.

### emitRad2

```haxe
var emitRad2:Float
```

The second radius of the shape.

### emitSurface

```haxe
var emitSurface:Bool
```

Emits on the surface of the shape only.

### spriteSheet

```haxe
var spriteSheet:String
```

The sprite sheet texture of the particles animation, or `null`.

### frameCount

```haxe
var frameCount:Int
```

The number of frames of the sprite sheet (`0` for all).

### frameDivisionX

```haxe
var frameDivisionX:Int
```

The number of columns of the sprite sheet.

### frameDivisionY

```haxe
var frameDivisionY:Int
```

The number of rows of the sprite sheet.

### animationSpeed

```haxe
var animationSpeed:Float
```

The speed of the sprite sheet animation.

### animationLoop

```haxe
var animationLoop:Bool
```

Loops the sprite sheet animation, starting at a random frame.

### animationUseSourceUVs

```haxe
var animationUseSourceUVs:Bool
```

Uses the texture coordinates of the particle mesh in each frame.

### animationBlendBetweenFrames

```haxe
var animationBlendBetweenFrames:Bool
```

Blends the consecutive frames of the animation.

### alignMode

```haxe
var alignMode:AlignMode
```

How the particles are oriented.

### alignLockAxis

```haxe
var alignLockAxis:AlignLockAxis
```

The axis locked by the `Axis` align mode.

### elasticity

```haxe
var elasticity:Float
```

The elasticity of the ground collisions (not used by the simulation).

### killOnCollision

```haxe
var killOnCollision:Float
```

The probability for a particle to die when it collides with the ground (not used by the simulation).

### useCollision

```haxe
var useCollision:Bool
```

Enables the ground collisions (not used by the simulation).

### useRandomColor

```haxe
var useRandomColor:Bool
```

Gives the particles a random color between `randomColor1` and `randomColor2`.

### useRandomGradient

```haxe
var useRandomGradient:Bool
```

Gives the particles a random color of `randomGradient`.

### randomColor1

```haxe
var randomColor1:h3d.Vector
```

The first random color, as `[r, g, b, a]`.

### randomColor2

```haxe
var randomColor2:h3d.Vector
```

The second random color, as `[r, g, b, a]`.

### randomGradient

```haxe
var randomGradient:hrt.impl.GradientData
```

The gradient of the random colors.

### invTransform

```haxe
var invTransform:h3d.Matrix
```

The inverse transform of the emitter.

### screenRot

```haxe
var screenRot:h3d.Matrix
```

The rotation facing the screen.

### worldScale

```haxe
var worldScale:h3d.Vector
```

The world scale of the emitter.

### tickTime _(editor (js) only)_

```haxe
var tickTime:Float
```

The time spent in the last update (editor only).

### maxCatchupWindow _(runtime (hl) only)_

```haxe
var maxCatchupWindow:Float
```

The maximum time simulated when catching up, in seconds.

## Methods

### postParticleUpdate

```haxe
dynamic function postParticleUpdate(particle:ParticleInstance, dt:Float):Void
```

Called after each particle update. Does nothing by default.

### softReset

```haxe
function softReset():Void
```

Restarts the emission, keeping the alive particles.

### reset

```haxe
function reset():Void
```

Removes the particles and restarts the emission.

### onEmit

```haxe
dynamic function onEmit(offset:h3d.Vector, orient:h3d.Quat):Void
```

Called every time a particle is emitted. `offset` and `orient`
can be modified (local space)

### hasActiveParts

```haxe
function hasActiveParts():Bool
```

Tells if particles are alive.

### setRandSeed

```haxe
function setRandSeed(seed:Int):Void
```

Sets the random seed (combined with `seedGroup`) and resets the emitter.

### setTime

```haxe
function setTime(parentTime:Float, dt:Float, seek:Bool, full:Bool):Void
```

Sets the time of the emitter from the time of its FX (`delay` and `speedFactor` applied), simulating the particles if `full` is set. `seek` restarts the emitter when the time goes back.
