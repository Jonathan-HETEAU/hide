# hrt.impl.Color

**class** · package [`hrt.impl`](README.md) · module `hrt.impl.ColorSpace` · source [`hrt/impl/ColorSpace.hx`](../../../../../hrt/impl/ColorSpace.hx)

A color with 8 bits components.

## Constructor

### new

```haxe
inline function new(?r:Int = 0, ?g:Int = 0, ?b:Int = 0, ?a:Int = 0):Void
```

Creates a color.

## Static methods

### fromInt

```haxe
static inline function fromInt(rgb:Int, ?withAlpha:Bool = true):Color
```

Returns the color of an RGB or ARGB integer (alpha `255` without alpha).

### intFromString

```haxe
static function intFromString(str:String, withAlpha:Bool):Null<Int>
```

Returns the color of a hexadecimal string (`#` optional): `GG` gray, `RGB`, `RRGGBB` or `AARRGGBB`, or `null` if invalid. The alpha is set to `0xFF` or removed according to `withAlpha`.

## Variables

### r

```haxe
var r:Int
```

The red component, from `0` to `255`.

### g

```haxe
var g:Int
```

The green component, from `0` to `255`.

### b

```haxe
var b:Int
```

The blue component, from `0` to `255`.

### a

```haxe
var a:Int
```

The alpha component, from `0` to `255`.

## Methods

### load

```haxe
function load(rgb:Int, ?withAlpha:Bool = true):Void
```

Sets the components from an RGB or ARGB integer (alpha `255` without alpha).

### toInt

```haxe
inline function toInt(includeAlpha:Bool):Int
```

Returns the color as an RGB or ARGB integer.
