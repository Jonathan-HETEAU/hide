# hrt.shgraph.ShaderType

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderType.hx`](../../../../../hrt/shgraph/ShaderType.hx)

Conversions between `SType` and HXSL types.

## Static methods

### getType

```haxe
static function getType(type:SType):hxsl.Type
```

Returns the HXSL type of a `SType`.

### getSType

```haxe
static function getSType(type:hxsl.Type):SType
```

Returns the `SType` of a HXSL type (`Variant` if none).

### checkCompatibilities

```haxe
static function checkCompatibilities(a:SType, b:SType):Bool
```

Tells if one type converts to the other.

### checkConversion

```haxe
static function checkConversion(from:SType, to:SType):Bool
```

Tells if `from` converts to `to`.
