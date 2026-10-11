# hrt.prefab.rfx.ColorGradingFunc

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.ColorGrading` · source [`hrt/prefab/rfx/ColorGrading.hx`](../../../../../../hrt/prefab/rfx/ColorGrading.hx)

Extends: `hxsl.Shader`

Applies a color lookup table.

## Constructor

### new

```haxe
function new():Void
```

## Static methods

### getColorGrading

```haxe
static function getColorGrading(base:h3d.Vector, pixels:hxd.Pixels, size:Int):h3d.Vector
```

Returns `base` transformed by the lookup table `lut` of `size` colors per channel.

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
