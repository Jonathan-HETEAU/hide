# hrt.shader.FrequencyValue

**class** · package [`hrt.shader`](README.md) · module `hrt.shader.AnisotropicForward` · source [`hrt/shader/AnisotropicForward.hx`](../../../../../hrt/shader/AnisotropicForward.hx)

Extends: `hxsl.Shader`

Gives a constant anisotropy direction, rotated by a noise along the texture coordinates.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### intensity

```haxe
var intensity(get, set):Float
```

### noiseIntensity

```haxe
var noiseIntensity(get, set):Float
```

### noiseFrequency

```haxe
var noiseFrequency(get, set):Float
```

### dirVector

```haxe
var dirVector(get, set):hxsl.Vec
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
