# hrt.shader.PreviewShaderAlpha

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/PreviewShaderAlpha.hx`](../../../../../hrt/shader/PreviewShaderAlpha.hx)

Extends: `hxsl.Shader`

Shader that displays a grid background on 2d elements where they are
transparent to help visualize the alpha channel.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### scale

```haxe
var scale(get, set):hxsl.Vec
```

### split

```haxe
var split(get, set):hxsl.Vec4
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
