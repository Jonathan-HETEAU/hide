# hrt.prefab.rfx.Pattern

**enum abstract** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.FrustumJitter` · source [`hrt/prefab/rfx/FrustumJitter.hx`](../../../../../../hrt/prefab/rfx/FrustumJitter.hx)

A pattern of sub-pixel offsets of the camera, for temporal anti-aliasing.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Still` | `"Still"` | No jitter. |
| `Uniform2` | `"Uniform2"` | 2 samples on a diagonal. |
| `Uniform4` | `"Uniform4"` | 4 samples on a square. |
| `Uniform4_Helix` | `"Uniform4_Helix"` | 4 samples on a square, in helix order. |
| `Uniform4_DoubleHelix` | `"Uniform4_DoubleHelix"` | 8 samples: the square in helix order, then in a Z order. |
| `SkewButterfly` | `"SkewButterfly"` | 4 samples on two skewed diagonals. |
| `Rotated4` | `"Rotated4"` | 4 samples on a rotated square. |
| `Rotated4_Helix` | `"Rotated4_Helix"` | 4 samples on a rotated square, in helix order. |
| `Rotated4_Helix2` | `"Rotated4_Helix2"` | 4 samples on a rotated square, in another helix order. |
| `Poisson10` | `"Poisson10"` | 10 samples of a Poisson disc distribution. |
| `Pentagram` | `"Pentagram"` | 5 samples on a pentagram. |
| `Halton_2_3_x8` | `"Halton_2_3_x8"` | 8 samples of the Halton (2, 3) sequence. |
| `Halton_2_3_x16` | `"Halton_2_3_x16"` | 16 samples of the Halton (2, 3) sequence. |
| `Halton_2_3_x32` | `"Halton_2_3_x32"` | 32 samples of the Halton (2, 3) sequence. |
| `Halton_2_3_x256` | `"Halton_2_3_x256"` | 256 samples of the Halton (2, 3) sequence. |
| `MotionPerp2` | `"MotionPerp2"` | 2 samples on the vertical axis. |
| `MotionVPerp2` | `"MotionVPerp2"` | 2 samples on the horizontal axis. |
