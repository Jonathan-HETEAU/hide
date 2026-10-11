# hrt.prefab.fx.gpuemitter.ComputeUtils

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/ComputeUtils.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/ComputeUtils.hx)

Extends: `hxsl.Shader`

Subclasses: [`hrt.prefab.fx.gpuemitter.BaseSimulation`](BaseSimulation.md), [`hrt.prefab.fx.gpuemitter.BaseSpawn`](BaseSpawn.md), [`hrt.prefab.fx.gpuemitter.CameraWrap`](CameraWrap.md), [`hrt.prefab.fx.gpuemitter.CubeSpawnShader`](CubeSpawnShader.md), [`hrt.prefab.fx.gpuemitter.DiskSpawnShader`](DiskSpawnShader.md), [`hrt.prefab.fx.gpuemitter.GravitySimulationShader`](GravitySimulationShader.md), [`hrt.prefab.fx.gpuemitter.LocalRotationShader`](LocalRotationShader.md), [`hrt.prefab.fx.gpuemitter.MeshSpawnShader`](MeshSpawnShader.md), [`hrt.prefab.fx.gpuemitter.OrbitSpeedSimulationShader`](OrbitSpeedSimulationShader.md), [`hrt.prefab.fx.gpuemitter.RandomColorSpawnShader`](RandomColorSpawnShader.md), [`hrt.prefab.fx.gpuemitter.RelativeTransformSimulationShader`](RelativeTransformSimulationShader.md), [`hrt.prefab.fx.gpuemitter.SphereSpawnShader`](SphereSpawnShader.md), [`hrt.prefab.fx.gpuemitter.TurbulenceSimulationShader`](TurbulenceSimulationShader.md)

The base of the compute shaders of the GPU emitter, with random and matrix helpers.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### onDispatch

```haxe
function onDispatch(emitter:GPUEmitterObject):Void
```

Called before the compute dispatch, to update parameters.

### onRemove

```haxe
function onRemove(emitter:GPUEmitterObject):Void
```

Called when the emitter is removed, to dispose resources.

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```
