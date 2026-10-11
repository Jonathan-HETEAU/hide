# hrt.prefab.fx.gpuemitter.Data

**typedef** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.GPUEmitter` · source [`hrt/prefab/fx/gpuemitter/GPUEmitter.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/GPUEmitter.hx)

The parameters of a `GPUEmitterObject`.

## Fields

### trs

```haxe
var trs:h3d.Matrix
```

The absolute transform of the particle mesh.

### startSpeed

```haxe
var startSpeed:Float
```

The initial speed (not used: see `minStartSpeed` and `maxStartSpeed`).

### speedMode

```haxe
var speedMode:SpeedMode
```

The initial speed mode.

### rate

```haxe
var rate:Int
```

The number of particles emitted per second (`0` to emit all at once).

### mode

```haxe
var mode:Mode
```

The space of the particles.

### minStartSpeed

```haxe
var minStartSpeed:Float
```

The minimum initial speed.

### minSize

```haxe
var minSize:Float
```

The minimum size.

### minLifeTime

```haxe
var minLifeTime:Float
```

The minimum lifetime, in seconds.

### meshTransform

```haxe
var meshTransform:h3d.Matrix
```

The transform of the particle mesh, without the template transform.

### maxStartSpeed

```haxe
var maxStartSpeed:Float
```

The maximum initial speed.

### maxSize

```haxe
var maxSize:Float
```

The maximum size.

### maxLifeTime

```haxe
var maxLifeTime:Float
```

The maximum lifetime, in seconds.

### maxCount

```haxe
var maxCount:Int
```

The maximum number of particles.

### infinite

```haxe
var infinite:Bool
```

Respawns the particles when they die.

### cameraModeDistance

```haxe
var cameraModeDistance:Float
```

The size of the cube around the camera (`Camera` mode).

### align

```haxe
var align:Align
```

The orientation of the particles.
