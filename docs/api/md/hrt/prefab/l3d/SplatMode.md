# hrt.prefab.l3d.SplatMode

**enum abstract** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

How the splat maps give the weights of the albedo textures.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Weights3` | `"Weights3"` | Each splat map gives the weights (RGB) of 3 albedo textures. |
| `Weights4` | `"Weights4"` | Each splat map gives the weights (RGBA) of 4 albedo textures. |
| `BaseWeights3` | `"BaseWeights3"` | Like `Weights3`, over the first albedo texture. |
| `BaseWeights4` | `"BaseWeights4"` | Like `Weights4`, over the first albedo texture. |
| `I1I2W1W2` | `"I1I2W1W2"` | Each splat map gives two albedo indexes (RG) and their weights (BA). |
