# hrt.prefab.fx.gpuemitter.BaseSimulation

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/BaseSimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/BaseSimulation.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

The base simulation of the GPU particles: life, speed, size and orientation.

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

### FACE_CAM

```haxe
var FACE_CAM(get, set):Bool
```

### CAMERA_BOUNDS

```haxe
var CAMERA_BOUNDS(get, set):Bool
```

### INFINITE

```haxe
var INFINITE(get, set):Bool
```

### dtParam

```haxe
var dtParam(get, set):Float
```

### cameraUp

```haxe
var cameraUp(get, set):hxsl.Vec
```

### boundsPos

```haxe
var boundsPos(get, set):hxsl.Vec
```

### boundsSize

```haxe
var boundsSize(get, set):hxsl.Vec
```

### minSize

```haxe
var minSize(get, set):Float
```

### maxSize

```haxe
var maxSize(get, set):Float
```

### curCount

```haxe
var curCount(get, set):Int
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
