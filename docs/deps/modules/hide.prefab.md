# Package `hide.prefab`

[← retour](../DEPENDENCIES.md)

## hide.prefab.ContextShared

- Fichier : `hide_js/hide/prefab/ContextShared.hx` — 129 lignes — 5 blocs doc — contient du `#if`
- Types : `class ContextShared`
- Héritage : `ContextShared` extends `hrt.prefab.ContextShared.ContextSharedBase`
- Dépend de : `hide.Ide`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hrt.prefab.ContextShared` (extends/use)
- Utilisé par : `hide.comp.Scene`, `hide.comp.ScenePreview`, `hide.tools.ThumbnailGenerator`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.ContextShared`, `hrt.prefab.Object3D`, `hrt.prefab.Reference`

## hide.prefab.EditContext

- Fichier : `hide_js/hide/prefab/EditContext.hx` — 389 lignes — 23 blocs doc — contient du `#if`
- Types : `class EditContext`, `class HideJsEditContext2`
- Héritage : `HideJsEditContext2` extends `hrt.prefab.EditContext2`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.PropsEditor`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.ui.UndoHistory`, `hide.view.CameraController`, `hide.view.Prefab`, `hrt.prefab.EditContext2` (extends/use), `hrt.prefab.Prefab` (import/use), `hrt.prefab.SceneEditorAPI`
- Utilisé par : `hide.comp.SceneEditor`, `hide.kit.CDB`, `hide.kit.Curve`, `hide.prefab.PolygonEditor`, `hide.prefab.terrain.TerrainEditor`, `hide.view.FXEditor`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.Shader`, `hrt.prefab.Unknown`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SphereSpawn`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Blur`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l2d.Text`, `hrt.prefab.l2d.Tile`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.LocalVolumetricLighting`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spline`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`, `hrt.prefab.l3d.Spray`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.pbr.SpecularColor`, `hrt.prefab.rfx.AutoExposure`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.ChromaticAberration`, `hrt.prefab.rfx.CloudShadow`, `hrt.prefab.rfx.ColorGrading`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.Distortion`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.KuwaharaFilter`, `hrt.prefab.rfx.LightVolume`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.SSR`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.prefab.rfx.Sharpen`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.rfx.TemporalFiltering`, `hrt.prefab.rfx.Vignetting`, `hrt.prefab.rfx.VolumetricLighting`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.prefab.vlm.VolumetricLightmap`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`

## hide.prefab.HideProps

- Fichier : `hide_js/hide/prefab/HideProps.hx` — 52 lignes — 12 blocs doc
- Types : `typedef HideProps`
- Dépend de : `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.Curve`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.RenderProps`, `hrt.prefab.Shader`, `hrt.prefab.Unknown`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SimulationShader`, `hrt.prefab.fx.gpuemitter.SpawnShader`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Blur`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l2d.Text`, `hrt.prefab.l2d.Tile`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Box`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Instance`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.Level3D`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spline`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.pbr.SpecularColor`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.prefab.vlm.VolumetricLightmap`, `hrt.shader.Refraction`

## hide.prefab.PolygonEditor

- Fichier : `hide_js/hide/prefab/PolygonEditor.hx` — 1012 lignes — 33 blocs doc
- Types : `enum ColorState`, `class Edge`, `class SphereHandle`, `class MovablePoint`, `class PolygonEditor`
- Héritage : `SphereHandle` extends `h3d.scene.Mesh`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.ui.UndoHistory`, `hrt.prefab.Object3D` (use/using), `hrt.prefab.l3d.Polygon`, `hrt.prefab.rfx.Outline`
- Utilisé par : `hrt.prefab.l3d.Polygon`
