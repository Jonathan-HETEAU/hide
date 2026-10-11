# hrt.prefab.rfx.TemporalFilteringShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.TemporalFiltering` · source [`hrt/prefab/rfx/TemporalFiltering.hx`](../../../../../../hrt/prefab/rfx/TemporalFiltering.hx)

Extends: `h3d.shader.ScreenShader`

Blends the frame with the previous ones.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### VARIANCE_CLIPPING

```haxe
var VARIANCE_CLIPPING(get, set):Bool
```

### CATMULL_ROM

```haxe
var CATMULL_ROM(get, set):Bool
```

### VELOCITY

```haxe
var VELOCITY(get, set):Bool
```

### velocityBuffer

```haxe
var velocityBuffer(get, set):hxsl.Texture
```

### prevFrame

```haxe
var prevFrame(get, set):hxsl.Texture
```

### curFrame

```haxe
var curFrame(get, set):hxsl.Texture
```

### amount

```haxe
var amount(get, set):Float
```

### prevCamMat

```haxe
var prevCamMat(get, set):hxsl.Matrix
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

### KEEP_ALPHA

```haxe
var KEEP_ALPHA(get, set):Bool
```

### KEEP_SKY_ALPHA

```haxe
var KEEP_SKY_ALPHA(get, set):Bool
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
