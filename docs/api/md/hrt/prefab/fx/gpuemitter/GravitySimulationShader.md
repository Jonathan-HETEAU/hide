# hrt.prefab.fx.gpuemitter.GravitySimulationShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.GravitySimulation` · source [`hrt/prefab/fx/gpuemitter/GravitySimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/GravitySimulation.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Applies the gravity to the particles.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### gravity

```haxe
var gravity(get, set):hxsl.Vec
```

## Methods

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
