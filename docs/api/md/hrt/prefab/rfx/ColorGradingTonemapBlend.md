# hrt.prefab.rfx.ColorGradingTonemapBlend

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.ColorGrading` · source [`hrt/prefab/rfx/ColorGrading.hx`](../../../../../../hrt/prefab/rfx/ColorGrading.hx)

Extends: [`hrt.prefab.rfx.ColorGradingTonemap`](ColorGradingTonemap.md) → `hxsl.Shader`

Applies a blend of two lookup tables in the tonemapping, for transitions.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### lut1

```haxe
var lut1(get, set):hxsl.Texture
```

### lut2

```haxe
var lut2(get, set):hxsl.Texture
```

### blendFactor

```haxe
var blendFactor(get, set):Float
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

## Inherited members

- from [`hrt.prefab.rfx.ColorGradingTonemap`](ColorGradingTonemap.md): `size`, `intensity`, `lut`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
