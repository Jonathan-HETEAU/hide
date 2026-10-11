# hrt.prefab.rfx.FrustumJitter

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/FrustumJitter.hx`](../../../../../../hrt/prefab/rfx/FrustumJitter.hx)

Cycles through the sub-pixel offsets of a pattern, to jitter the camera frustum each frame (temporal anti-aliasing).

## Constructor

### new

```haxe
function new():Void
```

Creates the jitter, computing the Halton sequences.

## Variables

### points_Still

```haxe
var points_Still:Array<Float>
```

The offsets of the `Still` pattern, as `x, y` pairs.

### points_Uniform2

```haxe
var points_Uniform2:Array<Float>
```

The offsets of the `Uniform2` pattern, as `x, y` pairs.

### points_Uniform4

```haxe
var points_Uniform4:Array<Float>
```

The offsets of the `Uniform4` pattern, as `x, y` pairs.

### points_Uniform4_Helix

```haxe
var points_Uniform4_Helix:Array<Float>
```

The offsets of the `Uniform4_Helix` pattern, as `x, y` pairs.

### points_Uniform4_DoubleHelix

```haxe
var points_Uniform4_DoubleHelix:Array<Float>
```

The offsets of the `Uniform4_DoubleHelix` pattern, as `x, y` pairs.

### points_SkewButterfly

```haxe
var points_SkewButterfly:Array<Float>
```

The offsets of the `SkewButterfly` pattern, as `x, y` pairs.

### points_Rotated4

```haxe
var points_Rotated4:Array<Float>
```

The offsets of the `Rotated4` pattern, as `x, y` pairs.

### points_Rotated4_Helix

```haxe
var points_Rotated4_Helix:Array<Float>
```

The offsets of the `Rotated4_Helix` pattern, as `x, y` pairs.

### points_Rotated4_Helix2

```haxe
var points_Rotated4_Helix2:Array<Float>
```

The offsets of the `Rotated4_Helix2` pattern, as `x, y` pairs.

### points_Poisson10

```haxe
var points_Poisson10:Array<Float>
```

The offsets of the `Poisson10` pattern, as `x, y` pairs.

### points_Pentagram

```haxe
var points_Pentagram:Array<Float>
```

The offsets of the `Pentagram` pattern, as `x, y` pairs.

### points_Halton_2_3_x8

```haxe
var points_Halton_2_3_x8:Array<Float>
```

The offsets of the `Halton_2_3_x8` pattern, as `x, y` pairs.

### points_Halton_2_3_x16

```haxe
var points_Halton_2_3_x16:Array<Float>
```

The offsets of the `Halton_2_3_x16` pattern, as `x, y` pairs.

### points_Halton_2_3_x32

```haxe
var points_Halton_2_3_x32:Array<Float>
```

The offsets of the `Halton_2_3_x32` pattern, as `x, y` pairs.

### points_Halton_2_3_x256

```haxe
var points_Halton_2_3_x256:Array<Float>
```

The offsets of the `Halton_2_3_x256` pattern, as `x, y` pairs.

### points_MotionPerp2

```haxe
var points_MotionPerp2:Array<Float>
```

The offsets of the `MotionPerp2` pattern, as `x, y` pairs.

### points_MotionVPerp2

```haxe
var points_MotionVPerp2:Array<Float>
```

The offsets of the `MotionVPerp2` pattern, as `x, y` pairs.

### patternScale

```haxe
var patternScale:Float
```

The scale of the offsets.

### activeIndex

```haxe
var activeIndex:Int
```

The index of the current sample.

### curSample

```haxe
var curSample:h2d.col.Point
```

The current offset.

### prevSample

```haxe
var prevSample:h2d.col.Point
```

The offset of the previous frame.

### curPattern

```haxe
var curPattern:Pattern
```

The pattern.

## Methods

### update

```haxe
function update():Void
```

Moves to the next sample of the pattern.
