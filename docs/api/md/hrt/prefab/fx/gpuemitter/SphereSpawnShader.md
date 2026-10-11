# hrt.prefab.fx.gpuemitter.SphereSpawnShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.SphereSpawn` · source [`hrt/prefab/fx/gpuemitter/SphereSpawn.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/SphereSpawn.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Spawns the particles in a sphere.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### minRadius

```haxe
var minRadius(get, set):Float
```

### maxRadius

```haxe
var maxRadius(get, set):Float
```

### randOffset

```haxe
var randOffset(get, set):Int
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
