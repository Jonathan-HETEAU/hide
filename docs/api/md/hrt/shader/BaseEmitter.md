# hrt.shader.BaseEmitter

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/BaseEmitter.hx`](../../../../../hrt/shader/BaseEmitter.hx)

Extends: `hxsl.Shader`

The base shader of the particles of an emitter: gives their life, lifetime and random value, and the billboard orientation.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lifeTime

```haxe
var lifeTime(get, set):Float
```

### life

```haxe
var life(get, set):Float
```

### random

```haxe
var random(get, set):Float
```

### emitPosition

```haxe
var emitPosition(get, set):hxsl.Vec
```

### meshTransform

```haxe
var meshTransform(get, set):hxsl.Matrix
```

### meshTransformInverse

```haxe
var meshTransformInverse(get, set):hxsl.Matrix
```

### billboardMode

```haxe
var billboardMode(get, set):Bool
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

### clone

```haxe
override function clone():hxsl.Shader
```
