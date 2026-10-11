# hrt.prefab.fx.gpuemitter.BaseSpawn

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/BaseSpawn.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/BaseSpawn.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

The base spawn of the GPU particles: life, random value and initial speed.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### batchBuffer

```haxe
var batchBuffer(get, set):hxsl.Buffer
```

### particleBuffer

```haxe
var particleBuffer(get, set):hxsl.Buffer
```

### atomic

```haxe
var atomic(get, set):hxsl.Buffer
```

### FORCED

```haxe
var FORCED(get, set):Bool
```

### INFINITE

```haxe
var INFINITE(get, set):Bool
```

### SPEED_NORMAL

```haxe
var SPEED_NORMAL(get, set):Bool
```

### minLifeTime

```haxe
var minLifeTime(get, set):Float
```

### maxLifeTime

```haxe
var maxLifeTime(get, set):Float
```

### minStartSpeed

```haxe
var minStartSpeed(get, set):Float
```

### maxStartSpeed

```haxe
var maxStartSpeed(get, set):Float
```

### rate

```haxe
var rate(get, set):Int
```

### absPos

```haxe
var absPos(get, set):hxsl.Matrix
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
