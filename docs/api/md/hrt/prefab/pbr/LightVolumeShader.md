# hrt.prefab.pbr.LightVolumeShader

**class** · package [`hrt.prefab.pbr`](README.md) · module `hrt.prefab.pbr.LightVolume` · source [`hrt/prefab/pbr/LightVolume.hx`](../../../../../../hrt/prefab/pbr/LightVolume.hx)

Extends: `hxsl.Shader`

Subclasses: [`hrt.prefab.pbr.PointLightVolumeShader`](PointLightVolumeShader.md), [`hrt.prefab.pbr.SpotLightVolumeShader`](SpotLightVolumeShader.md)

Ray marches the volume lit by a light.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### ditheringNoise

```haxe
var ditheringNoise(get, set):hxsl.Texture
```

### ditheringIntensity

```haxe
var ditheringIntensity(get, set):Float
```

### targetSize

```haxe
var targetSize(get, set):hxsl.Vec
```

### ditheringSize

```haxe
var ditheringSize(get, set):hxsl.Vec
```

### USE_DITHERING

```haxe
var USE_DITHERING(get, set):Bool
```

### lightPos

```haxe
var lightPos(get, set):hxsl.Vec
```

### lightColor

```haxe
var lightColor(get, set):hxsl.Vec
```

### opacity

```haxe
var opacity(get, set):Float
```

### range

```haxe
var range(get, set):Float
```

### fallOff

```haxe
var fallOff(get, set):Float
```

### steps

```haxe
var steps(get, set):Int
```

### HAS_SHADOW

```haxe
var HAS_SHADOW(get, set):Bool
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
