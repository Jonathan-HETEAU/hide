# hrt.prefab.rfx.ColorGradingTonemap

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.ColorGrading` · source [`hrt/prefab/rfx/ColorGrading.hx`](../../../../../../hrt/prefab/rfx/ColorGrading.hx)

Extends: `hxsl.Shader`

Subclasses: [`hrt.prefab.rfx.ColorGradingTonemapBlend`](ColorGradingTonemapBlend.md)

Applies the lookup table in the tonemapping.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### size

```haxe
var size(get, set):Int
```

### intensity

```haxe
var intensity(get, set):Float
```

### lut

```haxe
var lut(get, set):hxsl.Texture
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
