# hrt.prefab.l3d.LayerView2DRFXShader

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Layers2D` · source [`hrt/prefab/l3d/Layers2D.hx`](../../../../../../hrt/prefab/l3d/Layers2D.hx)

Extends: `h3d.shader.ScreenShader`

Displays the painted layer over the scene.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### layerAlpha

```haxe
var layerAlpha(get, set):Float
```

### worldSize

```haxe
var worldSize(get, set):Float
```

### offsetX

```haxe
var offsetX(get, set):Float
```

### offsetY

```haxe
var offsetY(get, set):Float
```

### collideMap

```haxe
var collideMap(get, set):hxsl.Texture
```

### collideEnable

```haxe
var collideEnable(get, set):Bool
```

### collideMask

```haxe
var collideMask(get, set):hxsl.Vec4
```

### collideScale

```haxe
var collideScale(get, set):Float
```

### layerEnable

```haxe
var layerEnable(get, set):Bool
```

### layerMap

```haxe
var layerMap(get, set):hxsl.Texture
```

### layerScale

```haxe
var layerScale(get, set):Float
```

### colors

```haxe
var colors(get, set):hxsl.Texture
```

### nbColorsIndexes

```haxe
var nbColorsIndexes(get, set):Int
```

### curFrame

```haxe
var curFrame(get, set):hxsl.Texture
```

### cameraInverseViewProj

```haxe
var cameraInverseViewProj(get, set):hxsl.Matrix
```

### PACKED_DEPTH

```haxe
var PACKED_DEPTH(get, set):Bool
```

### depthChannel

```haxe
var depthChannel(get, set):hxsl.TextureChannel
```

### depthChannelChannel

```haxe
var depthChannelChannel(get, set):hxsl.Channel
```

### depthTexture

```haxe
var depthTexture(get, set):hxsl.Texture
```

### highlightNoPixels

```haxe
var highlightNoPixels(get, set):Bool
```

### highlightColor

```haxe
var highlightColor(get, set):hxsl.Vec4
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
