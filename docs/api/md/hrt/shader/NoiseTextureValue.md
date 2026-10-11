# hrt.shader.NoiseTextureValue

**class** · package [`hrt.shader`](README.md) · module `hrt.shader.AnisotropicForward` · source [`hrt/shader/AnisotropicForward.hx`](../../../../../hrt/shader/AnisotropicForward.hx)

Extends: `hxsl.Shader`

Gives the anisotropy intensity and direction from textures.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### intensityFactor

```haxe
var intensityFactor(get, set):Float
```

### rotationOffset

```haxe
var rotationOffset(get, set):Float
```

### noiseIntensityTexture

```haxe
var noiseIntensityTexture(get, set):hxsl.Texture
```

### noiseDirectionTexture

```haxe
var noiseDirectionTexture(get, set):hxsl.Texture
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
