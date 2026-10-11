# Package `hrt.prefab.vlm`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.vlm.LightProbe

- Fichier : `hrt/prefab/vlm/LightProbe.hx` — 978 lignes — 40 blocs doc — contient du `#if`
- Types : `enum_abstract ProbeMode`, `enum_abstract ProbeFadeMode`, `enum_abstract Shape`, `class DebugView`, `class BoundsFade`, `class BoundsClipping`, `class LightProbeObject`, `class LightProbe`
- Héritage : `DebugView` extends `hxsl.Shader`, `BoundsFade` extends `hxsl.Shader`, `BoundsClipping` extends `hxsl.Shader`, `LightProbeObject` extends `h3d.scene.Mesh`, `LightProbe` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.vlm.ProbeBaker`
- Utilisé par : `hrt.prefab.vlm.ProbeBaker`

## hrt.prefab.vlm.ProbeBaker

- Fichier : `hrt/prefab/vlm/ProbeBaker.hx` — 332 lignes — 5 blocs doc
- Types : `class ProbeBaker`
- Dépend de : `hrt.prefab.vlm.LightProbe` (import/use), `hrt.prefab.vlm.SphericalHarmonic`, `hrt.prefab.vlm.VolumetricMesh`, `hrt.shader.ComputeSH`
- Utilisé par : `hrt.prefab.vlm.LightProbe`

## hrt.prefab.vlm.SphericalHarmonic

- Fichier : `hrt/prefab/vlm/SphericalHarmonic.hx` — 36 lignes — 6 blocs doc
- Types : `class SphericalHarmonic`
- Utilisé par : `hide.view.l3d.LightProbeBaker`, `hrt.prefab.vlm.ProbeBaker`, `hrt.prefab.vlm.VolumetricMesh`

## hrt.prefab.vlm.VolumetricLightmap

- Fichier : `hrt/prefab/vlm/VolumetricLightmap.hx` — 317 lignes — 4 blocs doc — contient du `#if`
- Types : `class VolumetricLightmap`
- Héritage : `VolumetricLightmap` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hide.view.l3d.ProbeBakerProcess`, `hrt.prefab.ContextShared`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.vlm.VolumetricMesh`, `hrt.shader.DisplaySH`
- Utilisé par : `hide.view.l3d.ProbeBakerProcess`

## hrt.prefab.vlm.VolumetricMesh

- Fichier : `hrt/prefab/vlm/VolumetricMesh.hx` — 235 lignes — 19 blocs doc
- Types : `class VolumetricMesh`
- Héritage : `VolumetricMesh` extends `h3d.scene.Mesh`
- Dépend de : `hrt.prefab.vlm.SphericalHarmonic`, `hrt.shader.VolumetricLightmap`
- Utilisé par : `hide.view.l3d.LightProbeBaker`, `hrt.prefab.vlm.ProbeBaker`, `hrt.prefab.vlm.VolumetricLightmap`
