# hrt.shader.GradientFlat

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/GradientFlat.hx`](../../../../../hrt/shader/GradientFlat.hx)

Extends: `hxsl.Shader`

Blends the color with a gradient texture along the texture coordinates.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### USE_SOURCE_UV

```haxe
var USE_SOURCE_UV(get, set):Bool
```

### amount

```haxe
var amount(get, set):Float
```

### gradient

```haxe
var gradient(get, set):hxsl.Texture
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
