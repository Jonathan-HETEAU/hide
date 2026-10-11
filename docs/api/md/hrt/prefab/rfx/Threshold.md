# hrt.prefab.rfx.Threshold

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.TemporalBloom` · source [`hrt/prefab/rfx/TemporalBloom.hx`](../../../../../../hrt/prefab/rfx/TemporalBloom.hx)

Extends: `h3d.shader.ScreenShader`

Keeps the bright pixels, with a temporal filter.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### hdr

```haxe
var hdr(get, set):hxsl.Texture
```

### threshold

```haxe
var threshold(get, set):Float
```

### intensity

```haxe
var intensity(get, set):Float
```

### maxIntensity

```haxe
var maxIntensity(get, set):Float
```

### USE_TEMPORAL_FILTER

```haxe
var USE_TEMPORAL_FILTER(get, set):Bool
```

### PREVENT_GHOSTING

```haxe
var PREVENT_GHOSTING(get, set):Bool
```

### prev

```haxe
var prev(get, set):hxsl.Texture
```

### prevCamMat

```haxe
var prevCamMat(get, set):hxsl.Matrix
```

### cameraInverseViewProj

```haxe
var cameraInverseViewProj(get, set):hxsl.Matrix
```

### strength

```haxe
var strength(get, set):Float
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
