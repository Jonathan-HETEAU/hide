# hrt.shader.GradientMapLife

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/GradientMapLife.hx`](../../../../../hrt/shader/GradientMapLife.hx)

Extends: `hxsl.Shader`

Colors the particles with a gradient over their life.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### colorMult

```haxe
var colorMult(get, set):Bool
```

### destAlpha

```haxe
var destAlpha(get, set):Bool
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
