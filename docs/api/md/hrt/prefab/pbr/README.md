# Package `hrt.prefab.pbr`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Anisotropy`](Anisotropy.md) | class | Adds anisotropic specular reflections to the materials of its parent `Material` (brushed metal, hair...). |
| [`AnisotropyMode`](AnisotropyMode.md) | enum abstract | Where the anisotropy of an `Anisotropy` comes from. |
| [`LightVolume`](LightVolume.md) | class | A volumetric light around its parent point or spot light, rendered by the `hrt.prefab.rfx.LightVolume` effect. |
| [`LightVolumeObject`](LightVolumeObject.md) | class | The mesh of a `LightVolume`, synced with its parent light. |
| [`LightVolumeShader`](LightVolumeShader.md) | class | Ray marches the volume lit by a light. |
| [`PointLightVolumeShader`](PointLightVolumeShader.md) | class | Ray marches the volume lit by a point light, with its shadows. |
| [`SpecularColor`](SpecularColor.md) | class | Sets the specular color of the materials of its parent `Material`. |
| [`SpecularColorMode`](SpecularColorMode.md) | enum abstract | Where the specular color of a `SpecularColor` comes from. |
| [`SpotLightVolumeShader`](SpotLightVolumeShader.md) | class | Ray marches the volume lit by a spot light, with its shadows. |
