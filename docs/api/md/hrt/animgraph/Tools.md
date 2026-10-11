# hrt.animgraph.Tools

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/Tools.hx`](../../../../../hrt/animgraph/Tools.hx)

Animation helpers.

## Static methods

### weightedBlend

```haxe
static function weightedBlend(inRotations:Array<h3d.Quat>, inReference:h3d.Quat, inWeights:Array<Float>, outRotation:h3d.Quat):Void
```

Sets `outRotation` to the weighted average of rotations, relative to `inReference`.

### decomposeMatrix

```haxe
static function decomposeMatrix(inMatrix:h3d.Matrix, outMatrix:h3d.Matrix):Void
```

Decompose a 3d matrix so the rotation quaternion is stored in [m12,m13,m21,m23] instead of mixed with the scale

### recomposeMatrix

```haxe
static function recomposeMatrix(inMatrix:h3d.Matrix, outMatrix:h3d.Matrix):Void
```

Transform a decomposed matrix into a normal one
