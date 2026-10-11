# Package `hrt.prefab`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.Cache

- Fichier : `hrt/prefab/Cache.hx` — 63 lignes — 10 blocs doc
- Types : `typedef ShaderDef`, `typedef ShaderDefCache`, `class Cache`
- Utilisé par : `hide.view.Model`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.ContextShared`, `hrt.prefab.DynamicShader`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.shgraph.ShaderGraph`

## hrt.prefab.ContextShared

- Fichier : `hrt/prefab/ContextShared.hx` — 380 lignes — 33 blocs doc — contient du `#if`
- Types : `typedef ContextShared`
- Dépend de : `hide.prefab.ContextShared`, `hrt.prefab.Cache`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`
- Utilisé par : `hide.ThumbnailGeneratorApp`, `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.prefab.ContextShared`, `hide.view.Prefab`, `hide.view.l3d.LightProbeBaker`, `hrt.animgraph.Resource`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Macros`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.RenderProfile`, `hrt.prefab.RenderProps`, `hrt.prefab.Resource`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Instance`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.Border`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.Outline`, `hrt.prefab.rfx.Refraction`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.vlm.VolumetricLightmap`

## hrt.prefab.CrashTest

- Fichier : `hrt/prefab/CrashTest.hx` — 98 lignes — 8 blocs doc
- Types : `class CrashTest`, `class CrashTestObject`
- Héritage : `CrashTest` extends `hrt.prefab.Object3D`, `CrashTestObject` extends `h3d.scene.Object`
- Dépend de : `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.CullingContainer

- Fichier : `hrt/prefab/CullingContainer.hx` — 105 lignes — 4 blocs doc — contient du `#if`
- Types : `class CullingContainerObject`, `class CullingContainer`
- Héritage : `CullingContainerObject` extends `h3d.scene.Object`, `CullingContainer` extends `Object3D`
- Dépend de : `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.Curve

- Fichier : `hrt/prefab/Curve.hx` — 1125 lignes — 61 blocs doc — contient du `#if`
- Types : `class CurveHandle`, `enum_abstract CurveKeyMode`, `enum_abstract CurveBlendMode`, `class CurveKey`, `typedef CurveKeys`, `class Curve`
- Héritage : `Curve` extends `Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.CurveEditor`, `hide.prefab.EditContext` (import/use), `hide.prefab.HideProps` (import/use), `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Macros`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.Reference`, `hrt.prefab.fx.Evaluator` (import/use), `hrt.prefab.fx.FX`, `hrt.prefab.fx.Value` (import/use)
- Utilisé par : `hide.comp.CurveEditor`, `hide.comp.cdb.Cell`, `hide.kit.Curve`, `hide.view.FXEditor`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.Value`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.l2d.Particle2D`, `hrt.ui.HuiCurveBox`

## hrt.prefab.Diff

- Fichier : `hrt/prefab/Diff.hx` — 611 lignes — 14 blocs doc — contient du `#if`
- Types : `enum DiffResult`, `class Diff`
- Dépend de : `hrt.tools.MapUtils`
- Utilisé par : `hide.kit.Gradient`, `hide.kit.KitRoot`, `hide.kit.List`, `hide.kit.Widget`, `hide.view.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.RenderProps`, `hrt.prefab.Unknown`

## hrt.prefab.DynamicShader

- Fichier : `hrt/prefab/DynamicShader.hx` — 342 lignes — 6 blocs doc — contient du `#if`
- Types : `class DynamicShader`
- Héritage : `DynamicShader` extends `Shader`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.PropsEditor`, `hide.prefab.EditContext`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.Cache`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.Shader` (extends/use), `hrt.shgraph.ShaderGraph`
- Utilisé par : `hide.ThumbnailGeneratorApp`, `hide.comp.SceneEditor`, `hide.tools.ShaderLoader`, `hide.tools.ThumbnailGenerator`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`

## hrt.prefab.EditContext2

- Fichier : `hrt/prefab/EditContext2.hx` — 289 lignes — 36 blocs doc — contient du `#if`
- Types : `enum SettingCategory`, `class EditContext2`
- Dépend de : `hide.kit.Element`, `hide.kit.KitRoot`, `hide.kit.Macros`, `hide.view.CameraController`, `hrt.prefab.Prefab`, `hrt.prefab.SceneEditorAPI`, `hrt.prefab.editor.QuickTool`, `hrt.prefab.editor.Tool`
- Utilisé par : `hide.kit.Element`, `hide.kit.KitRoot`, `hide.prefab.EditContext`, `hide.prefab.propsEditor.AnyPropsEditor`, `hide.prefab.propsEditor.Material`, `hide.prefab.propsEditor.PbrMaterial`, `hide.prefab.propsEditor.PbrRenderer`, `hide.view.Prefab`, `hrt.prefab.CullingContainer`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.Shader`, `hrt.prefab.Unknown`, `hrt.prefab.editor.Tool`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SphereSpawn`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Blur`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.Text`, `hrt.prefab.l2d.Tile`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Box`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Instance`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.Level3D`, `hrt.prefab.l3d.LocalVolumetricLighting`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trails`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.pbr.SpecularColor`, `hrt.prefab.rfx.AutoExposure`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.Border`, `hrt.prefab.rfx.ChromaticAberration`, `hrt.prefab.rfx.CloudShadow`, `hrt.prefab.rfx.ColorGrading`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.Distortion`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.HierarchicalSSR`, `hrt.prefab.rfx.KuwaharaFilter`, `hrt.prefab.rfx.LightVolume`, `hrt.prefab.rfx.Outline`, `hrt.prefab.rfx.Refraction`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.SSR`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.Sharpen`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.rfx.TemporalFiltering`, `hrt.prefab.rfx.Vignetting`, `hrt.prefab.rfx.VolumetricLighting`, `hrt.prefab.vlm.LightProbe`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`

## hrt.prefab.Light

- Fichier : `hrt/prefab/Light.hx` — 1122 lignes — 62 blocs doc — contient du `#if`
- Types : `enum_abstract LightKind`, `typedef LightShadows`, `enum_abstract ShadowSamplingKind`, `typedef ShadowSamplingMode`, `typedef ShadowSamplingESM`, `typedef ShadowSamplingPCF`, `typedef CascadeParams`, `class Light`
- Héritage : `Light` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.PropsEditor`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.EditorTools`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Reference`
- Utilisé par : `hide.comp.Scene`, `hide.view.FXEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.RenderProps`

## hrt.prefab.Macros

- Fichier : `hrt/prefab/Macros.hx` — 1020 lignes — 17 blocs doc — contient du `#if`
- Types : `enum PrefabFieldType`, `class Macros`
- Dépend de : `hrt.prefab.ContextShared`, `hrt.prefab.Prefab`, `hrt.prefab.editor.Props`, `hrt.ui.HuiRes`
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.BlendSpace2D`, `hrt.animgraph.Macros`, `hrt.prefab.Curve`, `hrt.prefab.Prefab`, `hrt.prefab.fx.EmitterMacros`

## hrt.prefab.Material

- Fichier : `hrt/prefab/Material.hx` — 1174 lignes — 23 blocs doc — contient du `#if`
- Types : `typedef OverrideProperty`, `class Material`, `class GradientFollower`
- Héritage : `Material` extends `Prefab`, `GradientFollower` extends `h2d.ObjectFollower`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.kit.Button`, `hide.kit.Element`, `hide.kit.Widget`, `hide.prefab.EditContext`, `hide.prefab.HideProps` (import/use), `hide.prefab.propsEditor.AnyPropsEditor`, `hide.view.FXEditor`, `hide.view.Prefab`, `hide.view.RefViewer`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.MaterialLibrary`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.fx.FX`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.rfx.Outline`
- Utilisé par : `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.kit.Matlib`, `hide.view.Prefab`, `hrt.prefab.Model`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.Swarm`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.l3d.modellibrary.Signature`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.SpecularColor`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiSceneEditor`

## hrt.prefab.MaterialLibrary

- Fichier : `hrt/prefab/MaterialLibrary.hx` — 19 lignes — 2 blocs doc
- Types : `class MaterialLibrary`
- Héritage : `MaterialLibrary` extends `Prefab`
- Dépend de : `hrt.prefab.Prefab` (extends/use), `hrt.ui.HuiRes`
- Utilisé par : `hide.view.Prefab`, `hrt.prefab.Material`, `hrt.ui.HuiFileBrowser`

## hrt.prefab.MaterialSelector

- Fichier : `hrt/prefab/MaterialSelector.hx` — 296 lignes — 15 blocs doc — contient du `#if`
- Types : `enum Inclusion`, `typedef PassQuery`, `typedef SelectedPass`, `class MaterialSelector`
- Héritage : `MaterialSelector` extends `hrt.prefab.Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.fx.ShaderTarget`
- Utilisé par : `hrt.prefab.Model`, `hrt.prefab.Shader`, `hrt.prefab.fx.ShaderTarget`

## hrt.prefab.Model

- Fichier : `hrt/prefab/Model.hx` — 360 lignes — 3 blocs doc — contient du `#if`
- Types : `class Model`
- Héritage : `Model` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Dropdown`, `hide.comp.FileSelect`, `hide.comp.Select`, `hide.kit.Select`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.Shader`, `hrt.prefab.fx.AnimEvent`
- Utilisé par : `hide.ThumbnailGeneratorApp`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.tools.ThumbnailGenerator`, `hide.view.Prefab`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Spray`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.l3d.modellibrary.Signature`

## hrt.prefab.Object2D

- Fichier : `hrt/prefab/Object2D.hx` — 256 lignes — 16 blocs doc — contient du `#if`
- Types : `class Object2D`
- Héritage : `Object2D` extends `Prefab`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab` (extends/use)
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.FXEditor`, `hide.view.Prefab`, `hrt.prefab.Prefab`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.FX2D`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l2d.Text`

## hrt.prefab.Object3D

- Fichier : `hrt/prefab/Object3D.hx` — 642 lignes — 27 blocs doc — contient du `#if`
- Types : `class Object3D`
- Héritage : `Object3D` extends `Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.cdb.DataFiles`, `hide.prefab.ContextShared`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.EditorTools`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.Reference`, `hrt.prefab.l3d.Spray`, `hrt.prefab.rfx.Outline`, `hrt.ui.HuiRes`
- Utilisé par : `hide.comp.SceneEditor`, `hide.kit.CDB`, `hide.prefab.PolygonEditor`, `hide.view.FXEditor`, `hide.view.Prefab`, `hrt.prefab.ContextShared`, `hrt.prefab.CrashTest`, `hrt.prefab.CullingContainer`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.RenderProfile`, `hrt.prefab.RenderProps`, `hrt.prefab.Resource`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Box`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Instance`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.Level3D`, `hrt.prefab.l3d.LocalVolumetricLighting`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spline`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`, `hrt.prefab.l3d.Spray`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.prefab.vlm.VolumetricLightmap`

## hrt.prefab.Prefab

- Fichier : `hrt/prefab/Prefab.hx` — 1211 lignes — 97 blocs doc — contient du `#if`
- Types : `typedef PrefabField`, `typedef PrefabMeta`, `typedef PrefabInfo`, `abstract ContextMake`, `enum TreeChangedResult`, `class Prefab`
- Dépend de : `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.comp.cdb.DataFiles`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Macros`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Reference`, `hrt.prefab.Unknown`, `hrt.prefab.editor.Props`, `hrt.tools.ClassUtils`, `hrt.ui.HuiRes`
- Utilisé par : `hide.Ide`, `hide.ThumbnailGeneratorApp`, `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Editor`, `hide.kit.CDB`, `hide.kit.KitRoot`, `hide.kit.Object3dRef`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hide.tools.IdeData`, `hide.tools.ThumbnailGenerator`, `hide.view.FXEditor`, `hide.view.Prefab`, `hide.view.PrefabUndo`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.l3d.LightProbeBaker`, `hide.view.l3d.ProbeBakerProcess`, `hide.view.shadereditor.ShaderEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.BlendSpace2D`, `hrt.animgraph.Resource`, `hrt.impl.Macros`, `hrt.impl.RemoteConsole`, `hrt.impl.RemoteTools`, `hrt.prefab.ContextShared`, `hrt.prefab.CrashTest`, `hrt.prefab.CullingContainer`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.EditContext2`, `hrt.prefab.Light`, `hrt.prefab.Macros`, `hrt.prefab.Material`, `hrt.prefab.MaterialLibrary`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Reference`, `hrt.prefab.RenderProfile`, `hrt.prefab.RenderProps`, `hrt.prefab.Resource`, `hrt.prefab.SceneEditorAPI`, `hrt.prefab.Shader`, `hrt.prefab.Unknown`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SimulationShader`, `hrt.prefab.fx.gpuemitter.SpawnShader`, `hrt.prefab.fx.gpuemitter.SphereSpawn`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Blur`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l2d.Text`, `hrt.prefab.l2d.Tile`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Box`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Instance`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.Level3D`, `hrt.prefab.l3d.LocalVolumetricLighting`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spline`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`, `hrt.prefab.l3d.Spray`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.pbr.SpecularColor`, `hrt.prefab.rfx.AutoExposure`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.Border`, `hrt.prefab.rfx.ChromaticAberration`, `hrt.prefab.rfx.CloudShadow`, `hrt.prefab.rfx.ColorGrading`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.Distortion`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.HierarchicalSSR`, `hrt.prefab.rfx.KuwaharaFilter`, `hrt.prefab.rfx.LightVolume`, `hrt.prefab.rfx.Outline`, `hrt.prefab.rfx.Refraction`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.SSR`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.prefab.rfx.Sharpen`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.rfx.TemporalFiltering`, `hrt.prefab.rfx.Vignetting`, `hrt.prefab.rfx.VolumetricLighting`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.prefab.vlm.VolumetricLightmap`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`, `hrt.shgraph.ShaderGraph`, `hrt.texgraph.TexGraph`, `hrt.tools.FileManager`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiPrefabInspectorHeader`, `hrt.ui.HuiSceneEditor`, `hrt.ui.tests.HuiPrefabEditorTests`

## hrt.prefab.Props

- Fichier : `hrt/prefab/Props.hx` — 82 lignes — 19 blocs doc
- Types : `enum PropType`, `typedef PropDef`
- Utilisé par : `hide.comp.PropsEditor`, `hide.kit.Element`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.rfx.ScreenShaderGraph`

## hrt.prefab.Reference

- Fichier : `hrt/prefab/Reference.hx` — 726 lignes — 19 blocs doc — contient du `#if`
- Types : `enum EditMode`, `typedef LoadedReference`, `class Reference`
- Héritage : `Reference` extends `Object3D`
- Dépend de : `hide.Ide`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.prefab.ContextShared`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.Diff`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.view.Prefab`, `hrt.prefab.Curve`, `hrt.prefab.Light`, `hrt.prefab.Model`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.fx.SubFX`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spray`

## hrt.prefab.RenderProfile

- Fichier : `hrt/prefab/RenderProfile.hx` — 28 lignes — 3 blocs doc
- Types : `class RenderProfile`
- Héritage : `RenderProfile` extends `Object3D`
- Dépend de : `hrt.prefab.ContextShared`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.RenderProps`, `hrt.ui.HuiRes`
- Utilisé par : `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiSceneEditor`

## hrt.prefab.RenderProps

- Fichier : `hrt/prefab/RenderProps.hx` — 238 lignes — 8 blocs doc — contient du `#if`
- Types : `class RenderPropsObject`, `class RenderProps`
- Héritage : `RenderPropsObject` extends `h3d.scene.Object`, `RenderProps` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.HideProps`, `hide.prefab.propsEditor.AnyPropsEditor`, `hrt.prefab.ContextShared`, `hrt.prefab.Diff`, `hrt.prefab.Light`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.fx.FX`, `hrt.prefab.l3d.Environment`, `hrt.prefab.rfx.RendererFX`
- Utilisé par : `hide.comp.GradientEditor`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.view.Prefab`, `hrt.prefab.RenderProfile`, `hrt.ui.HuiSceneEditor`

## hrt.prefab.Resource

- Fichier : `hrt/prefab/Resource.hx` — 91 lignes — 7 blocs doc — contient du `#if`
- Types : `class Resource`
- Héritage : `Resource` extends `hxd.res.Resource`
- Dépend de : `hrt.prefab.ContextShared`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.l3d.Instance`

## hrt.prefab.SceneEditorAPI

- Fichier : `hrt/prefab/SceneEditorAPI.hx` — 21 lignes — 4 blocs doc — contient du `#if`
- Types : `interface SceneEditorAPI`
- Dépend de : `hrt.prefab.Prefab`
- Utilisé par : `hide.comp.SceneEditor`, `hide.prefab.EditContext`, `hide.view.Prefab`, `hrt.prefab.EditContext2`

## hrt.prefab.Shader

- Fichier : `hrt/prefab/Shader.hx` — 466 lignes — 5 blocs doc — contient du `#if`
- Types : `class Shader`
- Héritage : `Shader` extends `Prefab`
- Dépend de : `hide.Element`, `hide.comp.PropsEditor`, `hide.kit.Select`, `hide.prefab.EditContext`, `hide.prefab.HideProps` (import/use), `hrt.impl.Gradient` (import), `hrt.impl.TextureType` (import/use), `hrt.prefab.ContextShared`, `hrt.prefab.DynamicShader`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.Props`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.ui.HuiRes`
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.FXEditor`, `hrt.prefab.DynamicShader`, `hrt.prefab.Model`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.SimulationShader`, `hrt.prefab.fx.gpuemitter.SpawnShader`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`

## hrt.prefab.Unknown

- Fichier : `hrt/prefab/Unknown.hx` — 92 lignes — 2 blocs doc — contient du `#if`
- Types : `class Unknown`
- Héritage : `Unknown` extends `Prefab`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Diff`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab` (extends/use)
- Utilisé par : `hide.view.Prefab`, `hrt.prefab.Prefab`
