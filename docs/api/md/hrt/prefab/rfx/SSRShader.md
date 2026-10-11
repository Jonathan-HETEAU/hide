# hrt.prefab.rfx.SSRShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.SSR` · source [`hrt/prefab/rfx/SSR.hx`](../../../../../../hrt/prefab/rfx/SSR.hx)

Extends: `h3d.shader.ScreenShader`

Ray marches the reflections in screen space.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### depthBuffer

```haxe
var depthBuffer(get, set):hxsl.Texture
```

### USE_MASK

```haxe
var USE_MASK(get, set):Bool
```

### USE_ROUGHNESS

```haxe
var USE_ROUGHNESS(get, set):Bool
```

### CHECK_ANGLE

```haxe
var CHECK_ANGLE(get, set):Bool
```

### ssrNormalMask

```haxe
var ssrNormalMask(get, set):hxsl.Texture
```

### texSize

```haxe
var texSize(get, set):hxsl.Vec
```

### hdrMap

```haxe
var hdrMap(get, set):hxsl.Texture
```

### roughnessMap

```haxe
var roughnessMap(get, set):hxsl.Texture
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### cameraView

```haxe
var cameraView(get, set):hxsl.Matrix
```

### cameraInverseView

```haxe
var cameraInverseView(get, set):hxsl.Matrix
```

### cameraProj

```haxe
var cameraProj(get, set):hxsl.Matrix
```

### cameraInverseProj

```haxe
var cameraInverseProj(get, set):hxsl.Matrix
```

### cameraPos

```haxe
var cameraPos(get, set):hxsl.Vec
```

### intensity

```haxe
var intensity(get, set):Float
```

### colorMul

```haxe
var colorMul(get, set):Float
```

### thickness

```haxe
var thickness(get, set):Float
```

### maxRoughness

```haxe
var maxRoughness(get, set):Float
```

### minCosAngle

```haxe
var minCosAngle(get, set):Float
```

### rayMarchingResolution

```haxe
var rayMarchingResolution(get, set):Float
```

### frustum

```haxe
var frustum(get, set):hxsl.Buffer
```

### vignettingRadius

```haxe
var vignettingRadius(get, set):Float
```

### vignettingSoftness

```haxe
var vignettingSoftness(get, set):Float
```

### depthBufferPrecision

```haxe
var depthBufferPrecision(get, set):Float
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
