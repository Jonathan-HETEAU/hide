# hrt.prefab.fx.Emitter2DObject

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter2D` · source [`hrt/prefab/fx/Emitter2D.hx`](../../../../../../hrt/prefab/fx/Emitter2D.hx)

Extends: `h2d.Object`

The 2D object of an `Emitter2D`: simulates and renders the particles (with a `h2d.SpriteBatch`). Its fields are the evaluated parameters of the prefab.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the object.

## Variables

### particles

```haxe
var particles:Array<Particle2DInstance>
```

The particles.

### batch

```haxe
var batch:h2d.SpriteBatch
```

The sprite batch rendering the particles.

### instDef

```haxe
var instDef:InstanceDef
```

The values of the particle parameters.

### seed

```haxe
var seed:Int
```

The random seed.

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

### emitType

```haxe
var emitType:EmitType
```

When the particles are emitted (`InfinityRandom` is not supported).

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

The minimum emit rate (not used).

### emitRateMax

```haxe
var emitRateMax:Value
```

The maximum emit rate (not used).

### emitRateChangeDelay

```haxe
var emitRateChangeDelay:Float
```

The time between rate changes (not used).

### emitScale

```haxe
var emitScale:Float
```

The factor of the emit rate, between `0` and `1`.

### maxCount

```haxe
var maxCount:Int
```

The maximum number of particles alive.

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
var emitShape:Emit2DShape
```

The shape in which the particles are emitted.

### emitRadius

```haxe
var emitRadius:Value
```

The radius of the circle shape.

### emitAngle1

```haxe
var emitAngle1:Value
```

The start angle of the circle shape, in degrees.

### emitAngle2

```haxe
var emitAngle2:Value
```

The end angle of the circle shape, in degrees.

### emitWidth

```haxe
var emitWidth:Value
```

The width of the rectangle shape.

### emitHeight

```haxe
var emitHeight:Value
```

The height of the rectangle shape.

### emitSurface

```haxe
var emitSurface:Bool
```

Emits on the border of the shape only.

### spriteType

```haxe
var spriteType:SpriteType
```

The sprite of the particles.

### color

```haxe
var color:h3d.Vector
```

The color of the particles (`Color` sprite).

### texture

```haxe
var texture:String
```

The path of the texture (`Texture` sprite).

### spriteSheet

```haxe
var spriteSheet:String
```

The path of the sprite sheet texture, or `null`.

### frameCount

```haxe
var frameCount:Int
```

The number of frames of the sprite sheet.

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

Loops the sprite sheet animation.

### animationUseSourceUVs

```haxe
var animationUseSourceUVs:Bool
```

Uses the texture coordinates of the tile in each frame.

### animationBlendBetweenFrames

```haxe
var animationBlendBetweenFrames:Bool
```

Blends the consecutive frames of the animation.

### useRandomColor

```haxe
var useRandomColor:Bool
```

Gives the particles a random color between `randomColor1` and `randomColor2` (`Color` sprite).

### useRandomGradient

```haxe
var useRandomGradient:Bool
```

Gives the particles a random color of `randomGradient` (`Color` sprite).

### randomColor1

```haxe
var randomColor1:h3d.Vector
```

The first random color.

### randomColor2

```haxe
var randomColor2:h3d.Vector
```

The second random color.

### randomGradient

```haxe
var randomGradient:hrt.impl.GradientData
```

The gradient of the random colors.

### invTransform

```haxe
var invTransform:h2d.col.Matrix
```

The inverse transform of the emitter.

## Methods

### init

```haxe
function init(randSlots:Int, prefab:Emitter2D):Void
```

Generates the random values (`randSlots` per particle) and sets up the sprite sheet.

### setTime

```haxe
function setTime(time:Float, ?inCatchup:Bool = false):Void
```

Sets the time of the emitter, simulating the particles (restarting when the time goes back).
