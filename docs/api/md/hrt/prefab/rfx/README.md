# Package `hrt.prefab.rfx`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AutoExposure`](AutoExposure.md) | class | Adapts the exposure of the PBR renderer to the direction of the camera relative to the main directional light. |
| [`Bloom`](Bloom.md) | class | Adds a glow around the bright pixels. |
| [`BloomTonemap`](BloomTonemap.md) | class | Adds the bloom texture in the tonemapping. |
| [`Border`](Border.md) | class | Draws a colored border around the screen. |
| [`BorderShader`](BorderShader.md) | class | Draws a colored border around the screen. |
| [`ChromaticAberration`](ChromaticAberration.md) | class | Shifts the red and blue channels toward the screen borders, as a lens would. |
| [`ChromaticAberrationShader`](ChromaticAberrationShader.md) | class | Shifts the red and blue channels toward the screen borders. |
| [`CloudShadow`](CloudShadow.md) | class | Projects the shadows of scrolling clouds with the main directional light. |
| [`ColorGrading`](ColorGrading.md) | class | Transforms the colors with a lookup table texture, in the tonemapping. |
| [`ColorGradingFunc`](ColorGradingFunc.md) | class | Applies a color lookup table. |
| [`ColorGradingTonemap`](ColorGradingTonemap.md) | class | Applies the lookup table in the tonemapping. |
| [`ColorGradingTonemapBlend`](ColorGradingTonemapBlend.md) | class | Applies a blend of two lookup tables in the tonemapping, for transitions. |
| [`Configurator`](Configurator.md) | class | Runs a script each frame to change properties of the renderer and prefabs, depending on variables. |
| [`ConfiguratorInterp`](ConfiguratorInterp.md) | class | The script interpreter of a `Configurator`: remembers the fields it changes, to restore them after the frame. |
| [`DirLightWithClouds`](DirLightWithClouds.md) | class | A directional light attenuated by a scrolling cloud texture. |
| [`DistanceBlur`](DistanceBlur.md) | class | Blurs the near and far parts of the screen (depth of field). |
| [`DistanceBlurShader`](DistanceBlurShader.md) | class | Blends the blurred screen depending on the distance. |
| [`Distortion`](Distortion.md) | class | Distorts the screen with the objects drawn in the `distortion` pass. |
| [`DistortionTonemap`](DistortionTonemap.md) | class | Offsets the texture coordinates of the tonemapping by the distortion map. |
| [`DualFilterDown`](DualFilterDown.md) | class | Downscales the bloom (dual filtering). |
| [`DualFilterUp`](DualFilterUp.md) | class | Upscales the bloom (dual filtering). |
| [`FrustumJitter`](FrustumJitter.md) | class | Cycles through the sub-pixel offsets of a pattern, to jitter the camera frustum each frame (temporal anti-aliasing). |
| [`GenFog`](GenFog.md) | class | A fog depending on the distance and the height, with a color gradient and a light scattering toward the shadow light. |
| [`GenFogBlendShader`](GenFogBlendShader.md) | class | Renders a blend of two `GenFog` fogs, for transitions. |
| [`GenFogFunc`](GenFogFunc.md) | class | The functions computing the fog of `GenFog`. |
| [`GenFogNoise`](GenFogNoise.md) | typedef | The noise displacing the fog. |
| [`GenFogRenderMode`](GenFogRenderMode.md) | enum abstract | When the fog of `GenFog` is rendered. |
| [`GenFogShader`](GenFogShader.md) | class | Renders the fog of `GenFog`. |
| [`HierarchicalSSR`](HierarchicalSSR.md) | class | Hierarchical screen space reflections (`h3d.pass.SSR`). |
| [`KuwaharaFilter`](KuwaharaFilter.md) | class | A Kuwahara filter, giving a painting look, with an opacity depending on the distance. |
| [`KuwaharaShader`](KuwaharaShader.md) | class | Applies a Kuwahara filter (painting effect), depending on the distance. |
| [`LightVolume`](LightVolume.md) | class | Renders the light volumes (`hrt.prefab.pbr.LightVolume`) drawn in the `lightVolume` pass. |
| [`Outline`](Outline.md) | class | Draws an outline around the objects drawn in the `highlight` passes. |
| [`Pattern`](Pattern.md) | enum abstract | A pattern of sub-pixel offsets of the camera, for temporal anti-aliasing. |
| [`Refraction`](Refraction.md) | class | Renders the objects drawn in the `refraction` pass with a refraction of the scene behind them. |
| [`RefractionShader`](RefractionShader.md) | class | Renders the refracting surfaces, sampling the screen displaced by their normal. |
| [`RendererFX`](RendererFX.md) | class | The base of the renderer effect prefabs: a `h3d.impl.RendererFX` added to the renderer. |
| [`SSR`](SSR.md) | class | Screen space reflections, on the surfaces with a low roughness (or marked by the `ssrNormalMask` pass). |
| [`SSRShader`](SSRShader.md) | class | Ray marches the reflections in screen space. |
| [`Sao`](Sao.md) | class | Scalable ambient occlusion: a screen space ambient occlusion, combined with the material occlusion. |
| [`SaoBlendMode`](SaoBlendMode.md) | enum abstract | How the screen space occlusion is combined with the material occlusion. |
| [`SaoMerge`](SaoMerge.md) | class | Combines the screen space occlusion with the material occlusion. |
| [`ScreenShaderGraph`](ScreenShaderGraph.md) | class | A screen effect made with a shader graph (`source`). |
| [`ScreenShaderGraphMode`](ScreenShaderGraphMode.md) | enum abstract | When a `ScreenShaderGraph` is rendered. |
| [`Sharpen`](Sharpen.md) | class | Sharpens the screen. |
| [`SharpenShader`](SharpenShader.md) | class | Sharpens the screen. |
| [`TemporalBloom`](TemporalBloom.md) | class | A bloom with dual filtering and a temporal filter, more stable than `Bloom`. |
| [`TemporalFiltering`](TemporalFiltering.md) | class | Temporal anti-aliasing: jitters the camera each frame and blends with the previous frames. |
| [`TemporalFilteringShader`](TemporalFilteringShader.md) | class | Blends the frame with the previous ones. |
| [`Threshold`](Threshold.md) | class | Keeps the bright pixels, with a temporal filter. |
| [`Vignetting`](Vignetting.md) | class | Colors the screen borders. |
| [`VignettingShader`](VignettingShader.md) | class | Colors the screen borders. |
| [`VolumetricLighting`](VolumetricLighting.md) | class | A volumetric fog lit by the lights (with their shadows), computed by ray marching at half resolution. |
| [`VolumetricLightingMode`](VolumetricLightingMode.md) | enum | The lights of `VolumetricLighting`. |
| [`VolumetricLightingShader`](VolumetricLightingShader.md) | class | Ray marches the fog and the lights of `VolumetricLighting`. |
