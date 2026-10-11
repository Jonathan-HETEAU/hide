# hrt.prefab.rfx.DistanceBlurShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.DistanceBlur` · source [`hrt/prefab/rfx/DistanceBlur.hx`](../../../../../../hrt/prefab/rfx/DistanceBlur.hx)

Extends: [`hrt.shader.PbrShader`](../../shader/PbrShader.md) → `h3d.shader.ScreenShader`

Blends the blurred screen depending on the distance.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### nearStartDistance

```haxe
var nearStartDistance(get, set):Float
```

### nearEndDistance

```haxe
var nearEndDistance(get, set):Float
```

### nearStartIntensity

```haxe
var nearStartIntensity(get, set):Float
```

### nearEndIntensity

```haxe
var nearEndIntensity(get, set):Float
```

### farStartDistance

```haxe
var farStartDistance(get, set):Float
```

### farEndDistance

```haxe
var farEndDistance(get, set):Float
```

### farStartIntensity

```haxe
var farStartIntensity(get, set):Float
```

### farEndIntensity

```haxe
var farEndIntensity(get, set):Float
```

### blurredTexture

```haxe
var blurredTexture(get, set):hxsl.Texture
```

### DEBUG

```haxe
var DEBUG(get, set):Bool
```

### affectSky

```haxe
var affectSky(get, set):Bool
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

- from [`hrt.shader.PbrShader`](../../shader/PbrShader.md): `updateConstants`, `getParamValue`, `getParamFloatValue`, `writeParam`, `clone`
