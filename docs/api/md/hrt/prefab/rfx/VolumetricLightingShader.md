# hrt.prefab.rfx.VolumetricLightingShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.VolumetricLighting` · source [`hrt/prefab/rfx/VolumetricLighting.hx`](../../../../../../hrt/prefab/rfx/VolumetricLighting.hx)

Extends: `h3d.shader.pbr.DefaultForward`

Ray marches the fog and the lights of `VolumetricLighting`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### MODE

```haxe
var MODE(get, set):Int
```

### invViewProj

```haxe
var invViewProj(get, set):hxsl.Matrix
```

### intensity

```haxe
var intensity(get, set):Float
```

### noiseTurmoil

```haxe
var noiseTurmoil(get, set):Float
```

### noiseScale

```haxe
var noiseScale(get, set):Float
```

### noiseLacunarity

```haxe
var noiseLacunarity(get, set):Float
```

### noisePersistence

```haxe
var noisePersistence(get, set):Float
```

### noiseSharpness

```haxe
var noiseSharpness(get, set):Float
```

### noiseOctave

```haxe
var noiseOctave(get, set):Int
```

### noiseTex

```haxe
var noiseTex(get, set):hxsl.Texture
```

### halfDepthMap

```haxe
var halfDepthMap(get, set):hxsl.Texture
```

### steps

```haxe
var steps(get, set):Int
```

### startDistance

```haxe
var startDistance(get, set):Float
```

### endDistance

```haxe
var endDistance(get, set):Float
```

### maxCamDist

```haxe
var maxCamDist(get, set):Float
```

### distanceOpacity

```haxe
var distanceOpacity(get, set):Float
```

### ditheringNoise

```haxe
var ditheringNoise(get, set):hxsl.Texture
```

### ditheringSize

```haxe
var ditheringSize(get, set):hxsl.Vec
```

### targetSize

```haxe
var targetSize(get, set):hxsl.Vec
```

### ditheringIntensity

```haxe
var ditheringIntensity(get, set):Float
```

### color

```haxe
var color(get, set):hxsl.Vec
```

### fogDensity

```haxe
var fogDensity(get, set):Float
```

### fogUseNoise

```haxe
var fogUseNoise(get, set):Float
```

### fogBottom

```haxe
var fogBottom(get, set):Float
```

### fogTop

```haxe
var fogTop(get, set):Float
```

### fogHeightFalloff

```haxe
var fogHeightFalloff(get, set):Float
```

### fogEnvPower

```haxe
var fogEnvPower(get, set):Float
```

### fogEnvColorMult

```haxe
var fogEnvColorMult(get, set):Float
```

### secondFogColor

```haxe
var secondFogColor(get, set):hxsl.Vec
```

### secondFogDensity

```haxe
var secondFogDensity(get, set):Float
```

### secondFogUseNoise

```haxe
var secondFogUseNoise(get, set):Float
```

### secondFogBottom

```haxe
var secondFogBottom(get, set):Float
```

### secondFogTop

```haxe
var secondFogTop(get, set):Float
```

### secondFogHeightFalloff

```haxe
var secondFogHeightFalloff(get, set):Float
```

### emissiveColor

```haxe
var emissiveColor(get, set):hxsl.Vec
```

### emissiveIntensity

```haxe
var emissiveIntensity(get, set):Float
```

### offsetCamHeight

```haxe
var offsetCamHeight(get, set):Float
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
