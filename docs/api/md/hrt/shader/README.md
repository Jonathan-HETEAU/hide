# Package `hrt.shader`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnisotropicForward`](AnisotropicForward.md) | class | The PBR forward lighting with anisotropic specular reflections. |
| [`BaseEmitter`](BaseEmitter.md) | class | The base shader of the particles of an emitter: gives their life, lifetime and random value, and the billboard orientation. |
| [`BaseTrails`](BaseTrails.md) | class | Computes the texture coordinates of the trails (stretch and repeat). |
| [`Bloom`](Bloom.md) | class | Keeps the pixels brighter than a threshold, for the bloom. |
| [`Brush`](Brush.md) | class | Displays the terrain brush. |
| [`ComputeSH`](ComputeSH.md) | class | Computes the spherical harmonics of an environment cube map. |
| [`CurvedNormal`](CurvedNormal.md) | class | Curves the normals of a flat mesh, as if it was a sphere cap. |
| [`DebugDir`](DebugDir.md) | class | Displays the anisotropy direction as a color. |
| [`DisplaySH`](DisplaySH.md) | class | Displays the irradiance of spherical harmonics. |
| [`DissolveBurn`](DissolveBurn.md) | class | Dissolves the surface with a noise texture, with a burning edge color. |
| [`EmissiveMult`](EmissiveMult.md) | class | Multiplies the emissive. |
| [`FlatValue`](FlatValue.md) | class | Gives a constant anisotropy intensity and direction. |
| [`FlowmapValue`](FlowmapValue.md) | class | Gives the anisotropy direction from a flow map. |
| [`FrequencyValue`](FrequencyValue.md) | class | Gives a constant anisotropy direction, rotated by a noise along the texture coordinates. |
| [`GradientFlat`](GradientFlat.md) | class | Blends the color with a gradient texture along the texture coordinates. |
| [`GradientMap`](GradientMap.md) | class | Replaces the color with a gradient indexed by its luminance (or alpha). |
| [`GradientMapLife`](GradientMapLife.md) | class | Colors the particles with a gradient over their life. |
| [`HeightGradient`](HeightGradient.md) | class | Colors the surface with a gradient along a direction (height). |
| [`MaskColorAlpha`](MaskColorAlpha.md) | class | Tints the surface with a color through a mask texture. |
| [`MeshWave`](MeshWave.md) | class | Deforms a mesh with waves along an axis. |
| [`NoiseTextureValue`](NoiseTextureValue.md) | class | Gives the anisotropy intensity and direction from textures. |
| [`ParticleColorLife`](ParticleColorLife.md) | class | Multiplies the color of the particles by a gradient over their life. |
| [`ParticleColorRandom`](ParticleColorRandom.md) | class | Multiplies the color of the particles by a random color of a gradient. |
| [`ParticleFade`](ParticleFade.md) | class | Fades the particles in and out over their life. |
| [`ParticleForward`](ParticleForward.md) | class | The PBR forward lighting of the particles, with a cheap normal basis. |
| [`ParticleRandomMesh`](ParticleRandomMesh.md) | class | Shows a random cell of a mesh made of several variations along an axis, per particle. |
| [`ParticleRandomMeshAxis`](ParticleRandomMeshAxis.md) | enum | The axis along which `ParticleRandomMesh` picks a cell. |
| [`PbrShader`](PbrShader.md) | class | The base of the PBR screen shaders: reads the depth, occlusion and HDR maps. |
| [`PreviewShaderAlpha`](PreviewShaderAlpha.md) | class | Shader that displays a grid background on 2d elements where they are transparent to help visualize the alpha channel. |
| [`Refraction`](Refraction.md) | class | Makes the material refract the scene behind it (rendered by the `hrt.prefab.rfx.Refraction` effect). |
| [`RefractionPropsShader`](RefractionPropsShader.md) | class | Sets the refraction parameters of a surface. |
| [`SDF`](SDF.md) | class | Renders a signed distance field texture, antialiased. |
| [`SpecularColor`](SpecularColor.md) | class | Applies the specular color and tint to the PBR lighting. |
| [`SpecularColorAlbedo`](SpecularColorAlbedo.md) | class | Sets the specular color to the albedo. |
| [`SpecularColorFlat`](SpecularColorFlat.md) | class | Sets the specular color to a constant. |
| [`SpecularColorTexture`](SpecularColorTexture.md) | class | Sets the specular color from a texture. |
| [`Spinner`](Spinner.md) | class | Draws animated trails along a shape (signed distance field). |
| [`Terrain`](Terrain.md) | class | Renders a terrain tile: displacement by the height map, and blending of the surfaces by their weights. |
| [`TextureMult`](TextureMult.md) | class | Multiplies the color by a texture. |
| [`TextureRotate`](TextureRotate.md) | class | Rotates (and flips) the texture coordinates. |
| [`UVDebug`](UVDebug.md) | class | Displays the texture coordinates as colors. |
| [`VertexValue`](VertexValue.md) | class | Gives the anisotropy direction from the vertex data. |
| [`VolumetricLightmap`](VolumetricLightmap.md) | class | Applies the irradiance of a volumetric lightmap, interpolated between its probes. |
| [`WireframeOverlay`](WireframeOverlay.md) | class | Draws an overlay of the mesh in a flat color. |
| [`WireframeOverlayShader`](WireframeOverlayShader.md) | class | Draws the mesh slightly inflated, in a flat color. |
