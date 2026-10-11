# hrt.prefab.rfx.GenFogShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.GenFog` · source [`hrt/prefab/rfx/GenFog.hx`](../../../../../../hrt/prefab/rfx/GenFog.hx)

Extends: [`hrt.shader.PbrShader`](../../shader/PbrShader.md) → `h3d.shader.ScreenShader`

Renders the fog of `GenFog`.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### intensity

```haxe
var intensity(get, set):Float
```

### startDistance

```haxe
var startDistance(get, set):Float
```

### distanceScale

```haxe
var distanceScale(get, set):Float
```

### distanceOpacity

```haxe
var distanceOpacity(get, set):Float
```

### cameraDistance

```haxe
var cameraDistance(get, set):Float
```

### startHeight

```haxe
var startHeight(get, set):Float
```

### heightScale

```haxe
var heightScale(get, set):Float
```

### heightOpacity

```haxe
var heightOpacity(get, set):Float
```

### startColor

```haxe
var startColor(get, set):hxsl.Vec4
```

### endColor

```haxe
var endColor(get, set):hxsl.Vec4
```

### usePosition

```haxe
var usePosition(get, set):Bool
```

### position

```haxe
var position(get, set):hxsl.Vec
```

### useNoise

```haxe
var useNoise(get, set):Bool
```

### noiseTex

```haxe
var noiseTex(get, set):hxsl.Texture
```

### noiseScale

```haxe
var noiseScale(get, set):Float
```

### noiseSpeed

```haxe
var noiseSpeed(get, set):Float
```

### noiseAmount

```haxe
var noiseAmount(get, set):hxsl.Vec
```

### lightDirection

```haxe
var lightDirection(get, set):hxsl.Vec
```

### lightColor

```haxe
var lightColor(get, set):hxsl.Vec
```

### dotThreshold

```haxe
var dotThreshold(get, set):Float
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
