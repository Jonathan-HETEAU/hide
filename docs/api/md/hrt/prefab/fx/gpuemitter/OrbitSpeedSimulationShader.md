# hrt.prefab.fx.gpuemitter.OrbitSpeedSimulationShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation` · source [`hrt/prefab/fx/gpuemitter/OrbitSpeedSimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/OrbitSpeedSimulation.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Moves the particles around the emitter.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### axis

```haxe
var axis(get, set):hxsl.Vec
```

### center

```haxe
var center(get, set):hxsl.Vec
```

## Methods

### onDispatch

```haxe
override function onDispatch(emitter:GPUEmitterObject):Void
```

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

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md): `onDispatch`, `onRemove`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`
