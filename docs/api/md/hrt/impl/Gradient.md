# hrt.impl.Gradient

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/Gradient.hx`](../../../../../hrt/impl/Gradient.hx)

A color gradient, as stops interpolated in a color space, rendered to textures (cached).

## Constructor

### new

```haxe
function new():Void
```

Creates an empty gradient.

## Static methods

### getDefaultGradientData

```haxe
static function getDefaultGradientData():GradientData
```

Returns a black to white gradient.

### evalData

```haxe
static function evalData(data:GradientData, position:Float, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color of the gradient at a position, from `0` to `1`.

### getEditorCache _(editor (js) only)_

```haxe
static function getEditorCache():Map<{  }, EditorCacheData>
```

Returns the cache of the editor textures (editor only).

### purgeEditorCache _(editor (js) only)_

```haxe
static function purgeEditorCache():Void
```

Disposes the textures of the editor cache (editor only).

### getDataHash

```haxe
static function getDataHash(data:GradientData, ?forceOrientation:Bool):Int32
```

Returns the hash of a gradient, the key of the texture cache.

### textureFromCDB

```haxe
static function textureFromCDB(g:cdb.Gradient, size:Int):Null<h3d.mat.Texture>
```

Returns the texture of a CastleDB gradient, or `null`.

### fillTexArrayFromData

```haxe
static function fillTexArrayFromData(tex:h3d.mat.TextureArray, data:GradientData, idx:Int):Void
```

Renders a gradient in a layer of a texture array.

### textureFromData

```haxe
static function textureFromData(data:GradientData, ?forceOrientation:Bool):h3d.mat.Texture
```

Returns the texture of a gradient (cached).

## Variables

### data

```haxe
var data:GradientData
```

The data.

## Methods

### eval

```haxe
function eval(position:Float, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color at a position, from `0` to `1`.

### toTexture

```haxe
function toTexture():h3d.mat.Texture
```

Returns the texture of the gradient (cached).
