# hrt.prefab.fx.Value

**enum** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/Value.hx`](../../../../../../hrt/prefab/fx/Value.hx)

An animated value of an FX: constant, curve, random, or combination. Below, `random(rid)` is the random value `rid` of the particle, between `-1` and `1`.

## Constructors

### VZero

```haxe
VZero
```

Zero.

### VConst

```haxe
VConst(v:Float)
```

A constant.

### VCurve

```haxe
VCurve(c:hrt.prefab.Curve)
```

A curve.

### VCurveT

```haxe
VCurveT(c:hrt.prefab.Curve, scale:Float, add:Float)
```

`c * scale + add`.

### VRandom

```haxe
VRandom(rid:Int, scale:Float, add:Float)
```

`random(rid) * scale + add`.

### VRandMultCurve

```haxe
VRandMultCurve(rid:Int, scale:Float, add:Float, c:hrt.prefab.Curve)
```

`(random(rid) * scale + add) * c`.

### VRandAddCurve

```haxe
VRandAddCurve(rid:Int, scale:Float, add:Float, c:hrt.prefab.Curve)
```

`random(rid) * scale + add + c`.

### VBlendCurves

```haxe
VBlendCurves(scale:Float, add:Float, a:hrt.prefab.Curve, b:hrt.prefab.Curve, blendVar:String)
```

`lerp(a, b, blendVar) * scale + add`, blending by the FX parameter `blendVar`.

### VRandomBlendCurves

```haxe
VRandomBlendCurves(rid:Int, scale:Float, add:Float, a:hrt.prefab.Curve, b:hrt.prefab.Curve, blendVar:String)
```

`(random(rid) * scale + add) * lerp(a, b, blendVar)`.

### VRandomBetweenCurves

```haxe
VRandomBetweenCurves(rid:Int, a:hrt.prefab.Curve, b:hrt.prefab.Curve)
```

`lerp(a, b, (random(rid) + 1) / 2)`.

### VParamRemap

```haxe
VParamRemap(a:Value, param:String)
```

`a` evaluated at the value of the FX parameter `param` instead of the time.

### VValueRemap

```haxe
VValueRemap(v:Value, remap:Value)
```

`v` evaluated at the value of `remap` instead of the time.

### VAdd

```haxe
VAdd(a:Value, b:Value)
```

`a + b`.

### VMult

```haxe
VMult(a:Value, b:Value)
```

`a * b`.

### VVector

```haxe
VVector(x:Value, y:Value, z:Value, ?w:Value)
```

A vector (`w` is `1` if `null`).

### VHsl

```haxe
VHsl(h:Value, s:Value, l:Value, a:Value)
```

A color from hue, saturation, lightness and alpha.
