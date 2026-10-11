# hrt.prefab.fx.gpuemitter.GPUEmitterObject

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/GPUEmitterObject.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/GPUEmitterObject.hx)

Extends: `h3d.scene.MeshBatch`

The object of a `GPUEmitter` for a particle mesh: a `h3d.scene.MeshBatch` updated on the GPU.

## Constructor

### new

```haxe
function new(data:Data, primitive:h3d.prim.MeshPrimitive, materials:Null<Array<h3d.mat.Material>>, ?parent:h3d.scene.Object):Void
```

Creates the object.

## Variables

### simulationPass

```haxe
var simulationPass:h3d.mat.Pass
```

The compute pass of the simulation.

### spawnPass

```haxe
var spawnPass:h3d.mat.Pass
```

The compute pass of the spawn.

### updateParamPass

```haxe
var updateParamPass:h3d.mat.Pass
```

The compute pass updating the animated shader parameters.

### data

```haxe
var data:Data
```

The parameters.

### fxAnim

```haxe
var fxAnim:hrt.prefab.fx.FXAnimation
```

The FX of the emitter, or `null`.

### gameplayRate

```haxe
var gameplayRate(default, set):Float
```

The fraction of the particles simulated, between `0` and `1`.

## Methods

### set_gameplayRate

```haxe
function set_gameplayRate(v:Float):Float
```

### bakeAnimations

```haxe
function bakeAnimations():Void
```

Bakes the shader animations over the life of the particles in a texture.
