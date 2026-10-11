# Package `hrt.prefab.pbr`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.pbr.Anisotropy

- Fichier : `hrt/prefab/pbr/Anisotropy.hx` — 248 lignes — 18 blocs doc — contient du `#if`
- Types : `enum_abstract AnisotropyMode`, `class Anisotropy`
- Héritage : `Anisotropy` extends `Prefab`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Prefab` (extends/use), `hrt.shader.AnisotropicForward` (import/use)

## hrt.prefab.pbr.LightVolume

- Fichier : `hrt/prefab/pbr/LightVolume.hx` — 268 lignes — 7 blocs doc — contient du `#if`
- Types : `class LightVolumeShader`, `class PointLightVolumeShader`, `class SpotLightVolumeShader`, `class LightVolumeObject`, `class LightVolume`
- Héritage : `LightVolumeShader` extends `hxsl.Shader`, `PointLightVolumeShader` extends `LightVolumeShader`, `SpotLightVolumeShader` extends `LightVolumeShader`, `LightVolumeObject` extends `h3d.scene.Mesh`, `LightVolume` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.rfx.LightVolume`

## hrt.prefab.pbr.SpecularColor

- Fichier : `hrt/prefab/pbr/SpecularColor.hx` — 202 lignes — 10 blocs doc — contient du `#if`
- Types : `enum_abstract SpecularColorMode`, `class SpecularColor`
- Héritage : `SpecularColor` extends `Prefab`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Prefab` (extends/use), `hrt.shader.SpecularColor` (import/use)
