# hrt.prefab.pbr.SpotLightVolumeShader

**class** · package [`hrt.prefab.pbr`](README.md) · module `hrt.prefab.pbr.LightVolume` · source [`hrt/prefab/pbr/LightVolume.hx`](../../../../../../hrt/prefab/pbr/LightVolume.hx)

Extends: [`hrt.prefab.pbr.LightVolumeShader`](LightVolumeShader.md) → `hxsl.Shader`

Ray marches the volume lit by a spot light, with its shadows.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### shadowMap

```haxe
var shadowMap(get, set):hxsl.Texture
```

### shadowViewProj

```haxe
var shadowViewProj(get, set):hxsl.Matrix
```

### angleFalloff

```haxe
var angleFalloff(get, set):Float
```

### angle

```haxe
var angle(get, set):Float
```

### lightDir

```haxe
var lightDir(get, set):hxsl.Vec
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

- from [`hrt.prefab.pbr.LightVolumeShader`](LightVolumeShader.md): `ditheringNoise`, `ditheringIntensity`, `targetSize`, `ditheringSize`, `USE_DITHERING`, `lightPos`, `lightColor`, `opacity`, `range`, `fallOff`, `steps`, `HAS_SHADOW`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`, `clone`
