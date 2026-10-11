# hrt.prefab.pbr.AnisotropyMode

**enum abstract** · package [`hrt.prefab.pbr`](README.md) · module `hrt.prefab.pbr.Anisotropy` · source [`hrt/prefab/pbr/Anisotropy.hx`](../../../../../../hrt/prefab/pbr/Anisotropy.hx)

Where the anisotropy of an `Anisotropy` comes from.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Flat` | `"Flat"` | A constant intensity and direction. |
| `NoiseTexture` | `"NoiseTexture"` | Intensity and direction textures. |
| `Vertex` | `"Vertex"` | The vertex data. |
| `Frequency` | `"Frequency"` | A constant direction, with a noise on the intensity. |
| `FlowMap` | `"FlowMap"` | A flow map texture giving the direction. |
