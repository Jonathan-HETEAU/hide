# hrt.shader.SDF

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/SDF.hx`](../../../../../hrt/shader/SDF.hx)

Extends: `hxsl.Shader`

Renders a signed distance field texture, antialiased.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### sampler

```haxe
var sampler(get, set):hxsl.Texture
```

### pxRange

```haxe
var pxRange(get, set):Float
```

### bgColor

```haxe
var bgColor(get, set):hxsl.Vec4
```

### fgColor

```haxe
var fgColor(get, set):hxsl.Vec4
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
