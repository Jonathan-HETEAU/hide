# hrt.shader.MaskColorAlpha

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/MaskColorAlpha.hx`](../../../../../hrt/shader/MaskColorAlpha.hx)

Extends: `hxsl.Shader`

Tints the surface with a color through a mask texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### MULTIPLY

```haxe
var MULTIPLY(get, set):Bool
```

### color

```haxe
var color(get, set):hxsl.Vec4
```

### mask

```haxe
var mask(get, set):hxsl.Texture
```

### UVOffset

```haxe
var UVOffset(get, set):hxsl.Vec
```

### UVScale

```haxe
var UVScale(get, set):hxsl.Vec
```

### alpha

```haxe
var alpha(get, set):Float
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
