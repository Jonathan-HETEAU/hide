# hrt.prefab.rfx.GenFogBlendShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.GenFog` · source [`hrt/prefab/rfx/GenFog.hx`](../../../../../../hrt/prefab/rfx/GenFog.hx)

Extends: [`hrt.shader.PbrShader`](../../shader/PbrShader.md) → `h3d.shader.ScreenShader`

Renders a blend of two `GenFog` fogs, for transitions.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### blendFactor

```haxe
var blendFactor(get, set):Float
```

### cameraDistance

```haxe
var cameraDistance(get, set):Float
```

### intensity1

```haxe
var intensity1(get, set):Float
```

### startDistance1

```haxe
var startDistance1(get, set):Float
```

### distanceScale1

```haxe
var distanceScale1(get, set):Float
```

### distanceOpacity1

```haxe
var distanceOpacity1(get, set):Float
```

### startHeight1

```haxe
var startHeight1(get, set):Float
```

### heightScale1

```haxe
var heightScale1(get, set):Float
```

### heightOpacity1

```haxe
var heightOpacity1(get, set):Float
```

### startColor1

```haxe
var startColor1(get, set):hxsl.Vec4
```

### endColor1

```haxe
var endColor1(get, set):hxsl.Vec4
```

### usePosition1

```haxe
var usePosition1(get, set):Bool
```

### position1

```haxe
var position1(get, set):hxsl.Vec
```

### useNoise1

```haxe
var useNoise1(get, set):Bool
```

### noiseTex1

```haxe
var noiseTex1(get, set):hxsl.Texture
```

### noiseScale1

```haxe
var noiseScale1(get, set):Float
```

### noiseSpeed1

```haxe
var noiseSpeed1(get, set):Float
```

### noiseAmount1

```haxe
var noiseAmount1(get, set):hxsl.Vec
```

### lightDirection1

```haxe
var lightDirection1(get, set):hxsl.Vec
```

### lightColor1

```haxe
var lightColor1(get, set):hxsl.Vec
```

### dotThreshold1

```haxe
var dotThreshold1(get, set):Float
```

### intensity2

```haxe
var intensity2(get, set):Float
```

### startDistance2

```haxe
var startDistance2(get, set):Float
```

### distanceScale2

```haxe
var distanceScale2(get, set):Float
```

### distanceOpacity2

```haxe
var distanceOpacity2(get, set):Float
```

### startHeight2

```haxe
var startHeight2(get, set):Float
```

### heightScale2

```haxe
var heightScale2(get, set):Float
```

### heightOpacity2

```haxe
var heightOpacity2(get, set):Float
```

### startColor2

```haxe
var startColor2(get, set):hxsl.Vec4
```

### endColor2

```haxe
var endColor2(get, set):hxsl.Vec4
```

### usePosition2

```haxe
var usePosition2(get, set):Bool
```

### position2

```haxe
var position2(get, set):hxsl.Vec
```

### useNoise2

```haxe
var useNoise2(get, set):Bool
```

### noiseTex2

```haxe
var noiseTex2(get, set):hxsl.Texture
```

### noiseScale2

```haxe
var noiseScale2(get, set):Float
```

### noiseSpeed2

```haxe
var noiseSpeed2(get, set):Float
```

### noiseAmount2

```haxe
var noiseAmount2(get, set):hxsl.Vec
```

### lightDirection2

```haxe
var lightDirection2(get, set):hxsl.Vec
```

### lightColor2

```haxe
var lightColor2(get, set):hxsl.Vec
```

### dotThreshold2

```haxe
var dotThreshold2(get, set):Float
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
