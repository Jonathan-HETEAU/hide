# hrt.prefab.l3d.DecalMode

**enum abstract** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Decal` · source [`hrt/prefab/l3d/Decal.hx`](../../../../../../hrt/prefab/l3d/Decal.hx)

How a `Decal` is rendered.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Default` | `"Default"` | A PBR decal, modifying the albedo, normal and material of the surfaces. |
| `BeforeTonemapping` | `"BeforeTonemapping"` | A color decal, before the tonemapping. |
| `AfterTonemapping` | `"AfterTonemapping"` | A color decal, after the tonemapping. |
| `Terrain` | `"Terrain"` | A PBR decal on the terrain. |
