# hrt.shader.GradientMap

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/GradientMap.hx`](../../../../../hrt/shader/GradientMap.hx)

Extends: `hxsl.Shader`

Replaces the color with a gradient indexed by its luminance (or alpha).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### USE_ALPHA

```haxe
var USE_ALPHA(get, set):Bool
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
