# hrt.impl.ColorSpace

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/ColorSpace.hx`](../../../../../hrt/impl/ColorSpace.hx)

Conversions between 8 bits RGB colors (`iRGB`) and other color spaces, stored in `h3d.Vector4`.

## Static variables

### colorModes

```haxe
static var colorModes:Array<ColorMode>
```

The color spaces: RGB, HSV, HSL, XYZ, LAB and HCL.

## Static methods

### iRGBtofRGB

```haxe
static function iRGBtofRGB(color:Color, outVector:h3d.Vector4):h3d.Vector4
```

Returns the color as floats from `0` to `1`.

### fRGBtoiRGB

```haxe
static function fRGBtoiRGB(color:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of floats from `0` to `1`, and returns it.

### iRGBtoHSV

```haxe
static function iRGBtoHSV(color:Color, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color in HSV (hue, saturation, value and alpha, from `0` to `1`).

### HSVtoiRGB

```haxe
static function HSVtoiRGB(hsv:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of a value in HSV (hue, saturation, value and alpha, from `0` to `1`), and returns it.

### iRGBtoHSL

```haxe
static function iRGBtoHSL(color:Color, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color in HSL (hue, saturation, lightness and alpha, from `0` to `1`).

### HSLtoiRGB

```haxe
static function HSLtoiRGB(hsl:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of a value in HSL (hue, saturation, lightness and alpha, from `0` to `1`), and returns it.

### iRGBtoXYZ

```haxe
static function iRGBtoXYZ(color:Color, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color in CIE XYZ.

### XYZtoiRGB

```haxe
static function XYZtoiRGB(value:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of a value in CIE XYZ, and returns it.

### LABtoiRGB

```haxe
static function LABtoiRGB(value:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of a value in CIE L*a*b*, and returns it.

### iRGBtoLAB

```haxe
static function iRGBtoLAB(color:Color, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color in CIE L*a*b*.

### iRGBtoHCL

```haxe
static function iRGBtoHCL(color:Color, ?outVector:h3d.Vector4):h3d.Vector4
```

Returns the color in HCL (hue, chroma, luminance).

### HCLtoiRGB

```haxe
static function HCLtoiRGB(value:h3d.Vector4, outColor:Color):Color
```

Sets `outColor` (created if `null`) to the color of a value in HCL (hue, chroma, luminance), and returns it.
