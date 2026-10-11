# hrt.prefab.l2d.Particles

**class** · package [`hrt.prefab.l2d`](README.md) · module `hrt.prefab.l2d.Particle2D` · source [`hrt/prefab/l2d/Particle2D.hx`](../../../../../../hrt/prefab/l2d/Particle2D.hx)

Extends: `h2d.Particles`

The 2D particles of `Particle2D`, with values animated by FX curves.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the particles.

## Variables

### catchupSpeed

```haxe
var catchupSpeed:Int
```

The factor of the time step when catching up, to save computations.

### maxCatchupWindow

```haxe
var maxCatchupWindow:Float
```

The maximum time simulated when catching up, in seconds (not in the editor).

### enable

```haxe
var enable:hrt.prefab.fx.Value
```

Enables the emission (above `0.5`).

### speed

```haxe
var speed:hrt.prefab.fx.Value
```

The speed of the particles.

### speedIncr

```haxe
var speedIncr:hrt.prefab.fx.Value
```

The speed increment of the particles.

### gravity

```haxe
var gravity:hrt.prefab.fx.Value
```

The gravity.

### isBurstEmit

```haxe
var isBurstEmit:Bool
```

Emits by bursts.

### burstDelay

```haxe
var burstDelay:Float
```

The time between bursts, in seconds.

### initialBurstDelay

```haxe
var initialBurstDelay:Float
```

The time of the first burst, in seconds.

### burstParticleCount

```haxe
var burstParticleCount:Int
```

The number of particles of a burst.

## Methods

### reset

```haxe
function reset():Void
```

Restarts the particles.

### setTime

```haxe
function setTime(time:Float):Void
```

Sets the time, simulating the particles (restarting when the time goes back).

### getBounds

```haxe
override function getBounds(?relativeTo:h2d.Object, ?out:h2d.col.Bounds):h2d.col.Bounds
```
