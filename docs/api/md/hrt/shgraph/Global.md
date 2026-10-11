# hrt.shgraph.Global

**enum abstract** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.Variables` · source [`hrt/shgraph/Variables.hx`](../../../../../hrt/shgraph/Variables.hx)

A global variable available to the shader graph nodes (see `Variables.Globals`).

Underlying type: `Int`

Implicit casts to: `Int`

## Values

| Name | Value | Description |
|---|---|---|
| `PixelColor` | `0` | `pixelColor`: the color of the pixel. |
| `PixelColorColor` | `1` | The RGB of the pixel color (not in `Variables.Globals`). |
| `PixelColorAlpha` | `2` | The alpha of the pixel color (not in `Variables.Globals`). |
| `Time` | `3` | `global.time`: the time, in seconds. |
| `PixelSize` | `4` | `global.pixelSize`: the size of a pixel. |
| `Global` | `5` | `global`: the global variables. |
| `CalculatedUV` | `6` | `calculatedUV`: the texture coordinates computed by the shaders. |
| `Input` | `7` | `input`: the vertex inputs. |
| `UV` | `8` | `input.uv`: the first texture coordinates. |
| `RelativePosition` | `9` | `relativePosition`: the position in the space of the object. |
| `TransformedPosition` | `10` | `transformedPosition`: the position in world space. |
| `ProjectedPosition` | `11` | `projectedPosition`: the projected position. |
| `Normal` | `12` | `input.normal`: the normal in the space of the object. |
| `FakeNormal` | `13` | `fakeNormal`: the replacement of the normal in the previews. |
| `TransformedNormal` | `14` | `transformedNormal`: the normal in world space. |
| `Depth` | `15` | `depth`: the depth. |
| `Metalness` | `16` | `metalness`: the PBR metalness. |
| `Roughness` | `17` | `roughness`: the PBR roughness. |
| `Emissive` | `18` | `emissive`: the PBR emissive. |
| `Occlusion` | `19` | `occlusion`: the PBR occlusion. |
| `PreviewSelect` | `20` | The parameter selecting the node preview. |
| `PreviewColor` | `21` | `_previewColor`: the color of a node preview. |
| `Camera` | `22` | `camera`: the camera variables. |
| `CameraPosition` | `23` | `camera.position`: the position of the camera. |
| `ParticleLife` | `24` | `particleLife`: the age of the particle. |
| `ParticleLifeTime` | `25` | `particleLifeTime`: the lifetime of the particle. |
| `ParticleRandom` | `26` | `particleRandom`: the random value of the particle. |
| `SGPixelColor` | `27` | `_sg_out_color`: the RGB output of the graph. |
| `SGPixelAlpha` | `28` | `_sg_out_alpha`: the alpha output of the graph. |
| `EmitterPosition` | `29` | `emitterPosition`: the position of the particle emitter. |
| `SourceTexture` | `30` | `global.screenShaderInput`: the input texture of a screen shader graph. |
| `UV2` | `31` | `input.uv2`: the second texture coordinates. |
| `UV3` | `32` | `input.uv3`: the third texture coordinates. |
| `UV4` | `33` | `input.uv4`: the fourth texture coordinates. |
