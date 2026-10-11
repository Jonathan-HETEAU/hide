# hrt.impl.GradientData

**typedef** · package [`hrt.impl`](README.md) · module `hrt.impl.Gradient` · source [`hrt/impl/Gradient.hx`](../../../../../hrt/impl/Gradient.hx)

The data of a gradient.

## Fields

### stops

```haxe
var stops:Array<ColorStop>
```

The color stops, by position.

### resolution

```haxe
var resolution:Int
```

The size of the texture.

### isVertical

```haxe
var isVertical:Bool
```

Makes a vertical texture.

### interpolation

```haxe
var interpolation:GradientInterpolation
```

The interpolation between the stops.

### colorMode

```haxe
var colorMode:Int
```

The color space of the interpolation, as an index in `ColorSpace.colorModes`.
