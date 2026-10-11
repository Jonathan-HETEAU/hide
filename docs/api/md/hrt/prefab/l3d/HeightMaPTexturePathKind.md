# hrt.prefab.l3d.HeightMaPTexturePathKind

**enum abstract** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

The kind of a texture of a `HeightMap`.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Albedo` | `"albedo"` | An albedo texture, blended by the splat maps. |
| `Height` | `"height"` | The height texture. |
| `Normal` | `"normal"` | The normal map (computed from the height if none). |
| `SplatMap` | `"splatmap"` | A splat map, giving the weights of the albedo textures. |
