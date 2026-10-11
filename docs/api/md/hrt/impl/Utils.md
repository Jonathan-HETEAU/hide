# hrt.impl.Utils

**class** · package [`hrt.impl`](README.md) · module `hrt.impl.TextureType` · source [`hrt/impl/TextureType.hx`](../../../../../hrt/impl/TextureType.hx)

Helpers for the texture values of prefab properties: a path, or a gradient.

## Static methods

### getTextureFromValue

```haxe
static function getTextureFromValue(val:Any, ?wrap:h3d.mat.Wrap = Repeat):h3d.mat.Texture
```

Returns the texture of a value, or `null`.

### getGradientData

```haxe
static function getGradientData(value:Any):Null<GradientData>
```

Returns the gradient data of a value, or `null` if it is not a gradient.

### getTextureType

```haxe
static function getTextureType(value:Any):Null<TextureType>
```

Returns the type of a value (`path` for a string or `null`), or `null` if unknown.

### copyTextureData

```haxe
static function copyTextureData(val:Any):Any
```

Returns a copy of a value.
