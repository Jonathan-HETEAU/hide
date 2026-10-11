# hrt.shader.Bloom

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/Bloom.hx`](../../../../../hrt/shader/Bloom.hx)

Extends: `h3d.shader.ScreenShader`

Keeps the pixels brighter than a threshold, for the bloom.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### threshold

```haxe
var threshold(get, set):Float
```

### intensity

```haxe
var intensity(get, set):Float
```

### colorMatrix

```haxe
var colorMatrix(get, set):hxsl.Matrix
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

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```
