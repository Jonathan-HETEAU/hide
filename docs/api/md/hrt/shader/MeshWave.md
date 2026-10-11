# hrt.shader.MeshWave

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/MeshWave.hx`](../../../../../hrt/shader/MeshWave.hx)

Extends: `hxsl.Shader`

Deforms a mesh with waves along an axis.

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

### speed

```haxe
var speed(get, set):Float
```

### length

```haxe
var length(get, set):Float
```

### scale

```haxe
var scale(get, set):Float
```

### fmSpeed

```haxe
var fmSpeed(get, set):Float
```

### fmAmplitude

```haxe
var fmAmplitude(get, set):Float
```

### randomScale

```haxe
var randomScale(get, set):Float
```

### randomSpeed

```haxe
var randomSpeed(get, set):Float
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
