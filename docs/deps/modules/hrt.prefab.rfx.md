# Package `hrt.prefab.rfx`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.rfx.AutoExposure

- Fichier : `hrt/prefab/rfx/AutoExposure.hx` — 83 lignes — 1 blocs doc — contient du `#if`
- Types : `class AutoExposure`
- Héritage : `AutoExposure` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.Bloom

- Fichier : `hrt/prefab/rfx/Bloom.hx` — 151 lignes — 9 blocs doc — contient du `#if`
- Types : `class BloomTonemap`, `class Bloom`
- Héritage : `BloomTonemap` extends `hxsl.Shader`, `Bloom` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use), `hrt.shader.Bloom`
- Utilisé par : `hrt.prefab.rfx.TemporalBloom`

## hrt.prefab.rfx.Border

- Fichier : `hrt/prefab/rfx/Border.hx` — 57 lignes — 5 blocs doc
- Types : `class BorderShader`, `class Border`
- Héritage : `BorderShader` extends `h3d.shader.ScreenShader`, `Border` extends `RendererFX`
- Dépend de : `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)
- Utilisé par : `hrt.prefab.l3d.Camera`

## hrt.prefab.rfx.ChromaticAberration

- Fichier : `hrt/prefab/rfx/ChromaticAberration.hx` — 117 lignes — 2 blocs doc — contient du `#if`
- Types : `class ChromaticAberrationShader`, `class ChromaticAberration`
- Héritage : `ChromaticAberrationShader` extends `h3d.shader.ScreenShader`, `ChromaticAberration` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.CloudShadow

- Fichier : `hrt/prefab/rfx/CloudShadow.hx` — 282 lignes — 8 blocs doc — contient du `#if`
- Types : `class DirLightWithClouds`, `class CloudShadow`
- Héritage : `DirLightWithClouds` extends `h3d.shader.pbr.Light`, `CloudShadow` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.ColorGrading

- Fichier : `hrt/prefab/rfx/ColorGrading.hx` — 243 lignes — 9 blocs doc — contient du `#if`
- Types : `class ColorGradingFunc`, `class ColorGradingTonemap`, `class ColorGradingTonemapBlend`, `class ColorGrading`
- Héritage : `ColorGradingFunc` extends `hxsl.Shader`, `ColorGradingTonemap` extends `hxsl.Shader`, `ColorGradingTonemapBlend` extends `ColorGradingTonemap`, `ColorGrading` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.Configurator

- Fichier : `hrt/prefab/rfx/Configurator.hx` — 349 lignes — 8 blocs doc — contient du `#if`
- Types : `typedef ChangedVar`, `class ConfiguratorInterp`, `class Configurator`
- Héritage : `ConfiguratorInterp` extends `hscript.Interp`, `Configurator` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.comp.ContextMenu`, `hide.comp.ScriptEditor`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.DistanceBlur

- Fichier : `hrt/prefab/rfx/DistanceBlur.hx` — 208 lignes — 14 blocs doc — contient du `#if`
- Types : `class DistanceBlurShader`, `class DistanceBlur`
- Héritage : `DistanceBlurShader` extends `hrt.shader.PbrShader`, `DistanceBlur` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use), `hrt.shader.PbrShader` (extends/use)

## hrt.prefab.rfx.Distortion

- Fichier : `hrt/prefab/rfx/Distortion.hx` — 71 lignes — 3 blocs doc — contient du `#if`
- Types : `class DistortionTonemap`, `class Distortion`
- Héritage : `DistortionTonemap` extends `hxsl.Shader`, `Distortion` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.FrustumJitter

- Fichier : `hrt/prefab/rfx/FrustumJitter.hx` — 360 lignes — 43 blocs doc
- Types : `enum_abstract Pattern`, `class FrustumJitter`
- Utilisé par : `hrt.prefab.rfx.TemporalFiltering`

## hrt.prefab.rfx.GenFog

- Fichier : `hrt/prefab/rfx/GenFog.hx` — 745 lignes — 37 blocs doc — contient du `#if`
- Types : `class GenFogFunc`, `class GenFogShader`, `class GenFogBlendShader`, `typedef GenFogNoise`, `enum_abstract GenFogRenderMode`, `class GenFog`
- Héritage : `GenFogFunc` extends `hrt.shader.PbrShader`, `GenFogShader` extends `hrt.shader.PbrShader`, `GenFogBlendShader` extends `hrt.shader.PbrShader`, `GenFog` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use), `hrt.shader.PbrShader` (extends/use)

## hrt.prefab.rfx.HierarchicalSSR

- Fichier : `hrt/prefab/rfx/HierarchicalSSR.hx` — 69 lignes — 1 blocs doc — contient du `#if`
- Types : `class HierarchicalSSR`
- Héritage : `HierarchicalSSR` extends `RendererFX`
- Dépend de : `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.KuwaharaFilter

- Fichier : `hrt/prefab/rfx/KuwaharaFilter.hx` — 234 lignes — 2 blocs doc — contient du `#if`
- Types : `class KuwaharaShader`, `class KuwaharaFilter`
- Héritage : `KuwaharaShader` extends `hrt.shader.PbrShader`, `KuwaharaFilter` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use), `hrt.shader.PbrShader` (extends/use)

## hrt.prefab.rfx.LightVolume

- Fichier : `hrt/prefab/rfx/LightVolume.hx` — 113 lignes — 6 blocs doc — contient du `#if`
- Types : `class LightVolume`
- Héritage : `LightVolume` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.Outline

- Fichier : `hrt/prefab/rfx/Outline.hx` — 82 lignes — 3 blocs doc
- Types : `class Outline`
- Héritage : `Outline` extends `RendererFX`
- Dépend de : `hide.Renderer`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)
- Utilisé par : `hide.comp.SceneEditor`, `hide.prefab.PolygonEditor`, `hide.view.Model`, `hrt.prefab.Material`, `hrt.prefab.Object3D`, `hrt.ui.HuiSceneEditor`

## hrt.prefab.rfx.Refraction

- Fichier : `hrt/prefab/rfx/Refraction.hx` — 103 lignes — 2 blocs doc
- Types : `class RefractionShader`, `class Refraction`
- Héritage : `RefractionShader` extends `hxsl.Shader`, `Refraction` extends `RendererFX`
- Dépend de : `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.RendererFX

- Fichier : `hrt/prefab/rfx/RendererFX.hx` — 128 lignes — 6 blocs doc — contient du `#if`
- Types : `class RendererFX`
- Héritage : `RendererFX` extends `Prefab`, `RendererFX` implements `h3d.impl.RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab` (extends/use), `hrt.ui.HuiRes`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.RenderProps`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.FX`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.rfx.AutoExposure`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.Border`, `hrt.prefab.rfx.ChromaticAberration`, `hrt.prefab.rfx.CloudShadow`, `hrt.prefab.rfx.ColorGrading`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.Distortion`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.HierarchicalSSR`, `hrt.prefab.rfx.KuwaharaFilter`, `hrt.prefab.rfx.LightVolume`, `hrt.prefab.rfx.Outline`, `hrt.prefab.rfx.Refraction`, `hrt.prefab.rfx.SSR`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.prefab.rfx.Sharpen`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.rfx.TemporalFiltering`, `hrt.prefab.rfx.Vignetting`, `hrt.prefab.rfx.VolumetricLighting`

## hrt.prefab.rfx.SSR

- Fichier : `hrt/prefab/rfx/SSR.hx` — 414 lignes — 17 blocs doc — contient du `#if`
- Types : `class SSRShader`, `class SSR`
- Héritage : `SSRShader` extends `h3d.shader.ScreenShader`, `SSR` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.Sao

- Fichier : `hrt/prefab/rfx/Sao.hx` — 349 lignes — 25 blocs doc — contient du `#if`
- Types : `class SaoMerge`, `enum_abstract SaoBlendMode`, `class Sao`
- Héritage : `SaoMerge` extends `h3d.shader.ScreenShader`, `Sao` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.ScreenShaderGraph

- Fichier : `hrt/prefab/rfx/ScreenShaderGraph.hx` — 377 lignes — 11 blocs doc — contient du `#if`
- Types : `class GraphShader`, `enum_abstract ScreenShaderGraphMode`, `class ScreenShaderGraph`
- Héritage : `GraphShader` extends `h3d.shader.ScreenShader`, `ScreenShaderGraph` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.comp.PropsEditor`, `hide.prefab.EditContext`, `hrt.impl.TextureType`, `hrt.prefab.Cache`, `hrt.prefab.ContextShared`, `hrt.prefab.Prefab`, `hrt.prefab.Props`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.rfx.RendererFX` (extends/import/use), `hrt.shgraph.ShaderGraph`
- Utilisé par : `hide.view.FXEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.fx.BaseFX`

## hrt.prefab.rfx.Sharpen

- Fichier : `hrt/prefab/rfx/Sharpen.hx` — 81 lignes — 3 blocs doc — contient du `#if`
- Types : `class SharpenShader`, `class Sharpen`
- Héritage : `SharpenShader` extends `h3d.shader.ScreenShader`, `Sharpen` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.TemporalBloom

- Fichier : `hrt/prefab/rfx/TemporalBloom.hx` — 253 lignes — 11 blocs doc — contient du `#if`
- Types : `class DualFilterDown`, `class DualFilterUp`, `class Threshold`, `class TemporalBloom`
- Héritage : `DualFilterDown` extends `h3d.shader.ScreenShader`, `DualFilterUp` extends `h3d.shader.ScreenShader`, `Threshold` extends `h3d.shader.ScreenShader`, `TemporalBloom` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.TemporalFiltering

- Fichier : `hrt/prefab/rfx/TemporalFiltering.hx` — 404 lignes — 12 blocs doc — contient du `#if`
- Types : `class TemporalFilteringShader`, `class TemporalFiltering`
- Héritage : `TemporalFilteringShader` extends `h3d.shader.ScreenShader`, `TemporalFiltering` extends `hrt.prefab.rfx.RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.FrustumJitter`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.rfx.Vignetting

- Fichier : `hrt/prefab/rfx/Vignetting.hx` — 144 lignes — 7 blocs doc — contient du `#if`
- Types : `class VignettingShader`, `class Vignetting`
- Héritage : `VignettingShader` extends `h3d.shader.ScreenShader`, `Vignetting` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/import/use)

## hrt.prefab.rfx.VolumetricLighting

- Fichier : `hrt/prefab/rfx/VolumetricLighting.hx` — 857 lignes — 41 blocs doc — contient du `#if`
- Types : `class VolumetricLightingShader`, `enum VolumetricLightingMode`, `class VolumetricLighting`
- Héritage : `VolumetricLightingShader` extends `h3d.shader.pbr.DefaultForward`, `VolumetricLighting` extends `RendererFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.impl.ColorSpace`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.rfx.RendererFX` (extends/use)
