# hrt.shader.DisplaySH

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/DisplaySH.hx`](../../../../../hrt/shader/DisplaySH.hx)

Extends: `hxsl.Shader`

Displays the irradiance of spherical harmonics.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### order

```haxe
var order(get, set):Int
```

### SIZE

```haxe
var SIZE(get, set):Int
```

### shCoefsRed

```haxe
var shCoefsRed(get, set):Array<Float>
```

### shCoefsGreen

```haxe
var shCoefsGreen(get, set):Array<Float>
```

### shCoefsBlue

```haxe
var shCoefsBlue(get, set):Array<Float>
```

### strength

```haxe
var strength(get, set):Float
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
