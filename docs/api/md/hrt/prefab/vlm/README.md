# Package `hrt.prefab.vlm`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BoundsClipping`](BoundsClipping.md) | class | Clips the probe lighting to its bounds. |
| [`BoundsFade`](BoundsFade.md) | class | Fades the probe lighting near its bounds. |
| [`DebugView`](DebugView.md) | class | Displays the environment of a probe on its preview spheres. |
| [`LightProbe`](LightProbe.md) | class | A local environment lighting in a volume (its unit box), from a texture or a capture of the scene. |
| [`LightProbeObject`](LightProbeObject.md) | class | The mesh of a `LightProbe`: applies its indirect lighting to the pixels inside it. |
| [`ProbeBaker`](ProbeBaker.md) | class | Captures the environment around a position and computes its spherical harmonics, for the volumetric lightmaps. |
| [`ProbeFadeMode`](ProbeFadeMode.md) | enum abstract | The fade of a `LightProbe` near its bounds. |
| [`ProbeMode`](ProbeMode.md) | enum abstract | Where the environment of a `LightProbe` comes from. |
| [`Shape`](Shape.md) | enum abstract | The shape of a `LightProbe`. |
| [`SphericalHarmonic`](SphericalHarmonic.md) | class | The spherical harmonic coefficients of a color. |
| [`VolumetricLightmap`](VolumetricLightmap.md) | class | A volumetric lightmap: a grid of light probes, baked as spherical harmonics in the editor, giving the indirect lighting inside its volume. |
| [`VolumetricMesh`](VolumetricMesh.md) | class | The mesh of a `VolumetricLightmap`: applies the lighting of its probes to the pixels inside its unit box. |
