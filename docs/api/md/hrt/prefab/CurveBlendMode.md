# hrt.prefab.CurveBlendMode

**enum abstract** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Curve` · source [`hrt/prefab/Curve.hx`](../../../../../hrt/prefab/Curve.hx)

How a curve gets its values.

Underlying type: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `None` | `0` | The values of the keys. |
| `Blend` | `1` | Blends the two children curves by the FX parameter `blendParam`. |
| `RandomBlend` | `2` | Blends the two children curves by a random factor (for each particle). |
| `Reference` | `3` | The values of the curve referenced by `blendParam`, scaled and offset. |
