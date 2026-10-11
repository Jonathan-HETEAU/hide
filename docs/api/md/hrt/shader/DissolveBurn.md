# hrt.shader.DissolveBurn

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/DissolveBurn.hx`](../../../../../hrt/shader/DissolveBurn.hx)

Extends: `hxsl.Shader`

Dissolves the surface with a noise texture, with a burning edge color.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### noise

```haxe
var noise(get, set):hxsl.Texture
```

### noiseScale

```haxe
var noiseScale(get, set):hxsl.Vec
```

### noiseOffset

```haxe
var noiseOffset(get, set):hxsl.Vec
```

### dissolveWidth

```haxe
var dissolveWidth(get, set):Float
```

### alphaThreshold

```haxe
var alphaThreshold(get, set):Float
```

### dissolveAmmount

```haxe
var dissolveAmmount(get, set):Float
```

### colorBurn

```haxe
var colorBurn(get, set):hxsl.Vec4
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
