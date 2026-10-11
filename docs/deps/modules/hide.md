# Package `hide`

[← retour](../DEPENDENCIES.md)

## hide.App

- Fichier : `hide_hl/hide/App.hx` — 226 lignes — 0 blocs doc — contient du `#if`
- Types : `class App`
- Héritage : `App` extends `hxd.App`
- Dépend de : `hide.Ide`, `hide.ThumbnailGeneratorApp`, `hide.tools.AutoProfiler`, `hide.tools.GameLauncher`, `hide.tools.Profiler`, `hrt.ui.HuiBase`, `hrt.ui.HuiRes`
- Utilisé par : `hide.Ide`, `hide.view.FileBrowser`, `hide.view.Prefab`, `hrt.ui.HuiBase`, `hrt.ui.HuiElement`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiPopup`, `hrt.ui.HuiView`

## hide.Config

- Fichier : `hide/Config.hx` — 594 lignes — 54 blocs doc — contient du `#if`
- Types : `typedef ConfigField`, `typedef HideGlobalConfig`, `typedef ConfigDef`, `class Config`
- Dépend de : `hide.HideProjectConfig`, `hide.Ide`, `hide.tools.IdeData`
- Utilisé par : `hide.Ide`, `hide.ThumbnailGeneratorApp`, `hide.comp.DomkitEditor`, `hide.comp.Scene`, `hide.comp.ScenePreview`, `hide.comp.ScriptEditor`, `hide.comp.Toolbar`, `hide.comp.cdb.Editor`, `hide.tools.IdeData`, `hide.tools.ThumbnailGenerator`, `hide.ui.Keys`, `hide.ui.View`, `hide.view.FileView`, `hide.view.GraphEditor`, `hide.view.Prefab`, `hrt.prefab.l3d.MeshGenerator`, `hrt.shgraph.ShaderNode`, `hrt.ui.HuiSceneEditor`

## hide.Element

- Fichier : `hide/Element.hx` — 18 lignes — 3 blocs doc — contient du `#if`
- Types : `typedef Element`, `typedef Event`, `typedef HTMLElement`
- Utilisé par : `hide.comp.Button`, `hide.comp.CameraControllerEditor`, `hide.comp.CodeEditor`, `hide.comp.ColorPicker`, `hide.comp.Component`, `hide.comp.ContentEditable`, `hide.comp.CurveEditor`, `hide.comp.DetachablePanel`, `hide.comp.DomkitEditor`, `hide.comp.Dropdown`, `hide.comp.ExpRange`, `hide.comp.FancyArray`, `hide.comp.FancyClosable`, `hide.comp.FancyGallery`, `hide.comp.FancySearch`, `hide.comp.FancyTooltip`, `hide.comp.FancyTree`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.GlobalSeek`, `hide.comp.GradientEditor`, `hide.comp.JsTools`, `hide.comp.Modal`, `hide.comp.MultiRange`, `hide.comp.Popup`, `hide.comp.PropsEditor`, `hide.comp.RadialMenu`, `hide.comp.Range`, `hide.comp.ResizablePanel`, `hide.comp.SVG`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.ScriptEditor`, `hide.comp.Select`, `hide.comp.ShapeEditor`, `hide.comp.Tabs`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.TextureSelect`, `hide.comp.TileSelector`, `hide.comp.Toolbar`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.ModalColumnForm`, `hide.comp.cdb.ObjEditor`, `hide.comp.cdb.Separator`, `hide.comp.cdb.SubTable`, `hide.comp.cdb.Table`, `hide.kit.CDB`, `hide.kit.Category`, `hide.kit.Curve`, `hide.kit.File`, `hide.kit.KitRoot`, `hide.kit.List`, `hide.kit.SliderGroup`, `hide.prefab.EditContext`, `hide.prefab.PolygonEditor`, `hide.prefab.terrain.TerrainEditor`, `hide.tools.FileWatcher`, `hide.tools.ThumbnailGenerator`, `hide.ui.Keys`, `hide.ui.Menu`, `hide.ui.QueryHelper`, `hide.ui.View`, `hide.view.CdbFavorites`, `hide.view.CdbTable`, `hide.view.DevTools`, `hide.view.DomkitStudio`, `hide.view.FXEditor`, `hide.view.GenericGraphEditor`, `hide.view.GraphEditor`, `hide.view.GraphInterface`, `hide.view.Gym`, `hide.view.Image`, `hide.view.MemProfiler`, `hide.view.Model`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.Prefab`, `hide.view.RefViewer`, `hide.view.RemoteConsoleView`, `hide.view.Script`, `hide.view.Texture`, `hide.view.Timeline`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimList`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.settings.ProjectSettings`, `hide.view.settings.Settings`, `hide.view.settings.UserSettings`, `hide.view.shadereditor.Box`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.BlendPerBone`, `hrt.animgraph.nodes.Input`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.RenderProps`, `hrt.prefab.Shader`, `hrt.prefab.Unknown`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.Billboard`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.LookAt`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SphereSpawn`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Bitmap`, `hrt.prefab.l2d.Blur`, `hrt.prefab.l2d.Flow`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l2d.Text`, `hrt.prefab.l2d.Tile`, `hrt.prefab.l3d.AnimSpeedControl`, `hrt.prefab.l3d.Camera`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Environment`, `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.LocalVolumetricLighting`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.Polygon`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Spline`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`, `hrt.prefab.l3d.Spray`, `hrt.prefab.l3d.Text3D`, `hrt.prefab.l3d.Trail`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.pbr.Anisotropy`, `hrt.prefab.pbr.LightVolume`, `hrt.prefab.pbr.SpecularColor`, `hrt.prefab.rfx.AutoExposure`, `hrt.prefab.rfx.Bloom`, `hrt.prefab.rfx.ChromaticAberration`, `hrt.prefab.rfx.CloudShadow`, `hrt.prefab.rfx.ColorGrading`, `hrt.prefab.rfx.Configurator`, `hrt.prefab.rfx.DistanceBlur`, `hrt.prefab.rfx.Distortion`, `hrt.prefab.rfx.GenFog`, `hrt.prefab.rfx.KuwaharaFilter`, `hrt.prefab.rfx.LightVolume`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.SSR`, `hrt.prefab.rfx.Sao`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.prefab.rfx.Sharpen`, `hrt.prefab.rfx.TemporalBloom`, `hrt.prefab.rfx.TemporalFiltering`, `hrt.prefab.rfx.Vignetting`, `hrt.prefab.rfx.VolumetricLighting`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.prefab.vlm.VolumetricLightmap`, `hrt.shader.Refraction`, `hrt.shader.WireframeOverlay`, `hrt.shgraph.CustomVarChooser`, `hrt.shgraph.ShaderConst`, `hrt.shgraph.ShaderCustomGlobal`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderInput`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderOutput`, `hrt.shgraph.ShaderParticleInput`, `hrt.shgraph.nodes.BoolConst`, `hrt.shgraph.nodes.CameraToWorld`, `hrt.shgraph.nodes.Color`, `hrt.shgraph.nodes.Cond`, `hrt.shgraph.nodes.DecalProjection`, `hrt.shgraph.nodes.FloatConst`, `hrt.shgraph.nodes.Fresnel`, `hrt.shgraph.nodes.ObjectToWorld`, `hrt.shgraph.nodes.Rotate`, `hrt.shgraph.nodes.RotateAboutAxis`, `hrt.shgraph.nodes.Sampler`, `hrt.shgraph.nodes.Text`, `hrt.shgraph.nodes.TriplanarParams`, `hrt.shgraph.nodes.WorldToCamera`, `hrt.shgraph.nodes.WorldToObject`, `hrt.texgraph.TexNode`, `hrt.texgraph.nodes.Blur`, `hrt.texgraph.nodes.BnWNoise`, `hrt.texgraph.nodes.TexOutput`, `hrt.texgraph.nodes.WhiteNoise`

## hide.Extension

- Fichier : `hide_js/hide/Extension.hx` — 90 lignes — 12 blocs doc
- Types : `typedef ExtensionOptions`, `typedef ExtensionDesc`, `class Extension`
- Dépend de : `hide.ui.View`
- Utilisé par : `hide.comp.cdb.Editor`, `hide.view.DomkitStudio`, `hide.view.FXEditor`, `hide.view.Image`, `hide.view.MSDFView`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.Script`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`

## hide.HideProjectConfig

- Fichier : `hide_hl/hide/HideProjectConfig.hx` — 5 lignes — 0 blocs doc
- Types : `typedef HideProjectConfig`
- Dépend de : `hrt.ui.HuiTabViewContainer`
- Utilisé par : `hide.Config`, `hide.tools.IdeData`

## hide.HlMacros

- Fichier : `hide_hl/hide/HlMacros.hx` — 22 lignes — 0 blocs doc — contient du `#if`
- Types : `class HlMacros`
- Dépend de : `hide.tools.Macros`, `hrt.ui.CssParser`

## hide.Ide

- Fichier : `hide_hl/hide/Ide.hx` — 441 lignes — 3 blocs doc — contient du `#if`
- Types : `enum HideViewPosition`, `class Ide`
- Héritage : `Ide` extends `hide.tools.IdeData`
- Dépend de : `hide.App`, `hide.Config`, `hide.tools.IdeData` (extends/use), `hide.view.FileBrowser`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hrt.prefab.Prefab`, `hrt.tools.FileManager`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiView`
- Utilisé par : `hide.App`, `hide.Config`, `hide.Renderer`, `hide.ThumbnailGeneratorApp`, `hide.comp.CameraControllerEditor`, `hide.comp.Component`, `hide.comp.ContextMenu`, `hide.comp.DomkitEditor`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.Scene`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.ScriptEditor`, `hide.comp.TextureSelect`, `hide.comp.TextureSelect2`, `hide.comp.Toolbar`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.SubTable`, `hide.kit.Element`, `hide.kit.File`, `hide.kit.Object3dRef`, `hide.prefab.ContextShared`, `hide.prefab.EditContext`, `hide.prefab.propsEditor.PbrMaterial`, `hide.tools.CdbAccess`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hide.tools.FileWatcher`, `hide.tools.GameLauncher`, `hide.tools.IdeData`, `hide.tools.ShaderLoader`, `hide.tools.ThumbnailGenerator`, `hide.ui.View`, `hide.view.CameraController`, `hide.view.FXEditor`, `hide.view.FileBrowser`, `hide.view.FileView`, `hide.view.GraphEditor`, `hide.view.Image`, `hide.view.MSDFView`, `hide.view.MemProfiler`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.RemoteConsoleView`, `hide.view.Texture`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.settings.ProjectSettings`, `hide.view.settings.Settings`, `hide.view.settings.UserSettings`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.animgraph.AnimGraph`, `hrt.impl.EditorTools`, `hrt.impl.RemoteConsole`, `hrt.prefab.Curve`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Model`, `hrt.prefab.Object3D`, `hrt.prefab.Reference`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.l2d.NoiseGenerator`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.prefab.l3d.modellibrary.Signature`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.vlm.LightProbe`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.nodes.SubGraph`, `hrt.texgraph.TexGraph`, `hrt.tools.FileManager`, `hrt.ui.HuiBase`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiCdbTable`, `hrt.ui.HuiElement`, `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiFilePicker`, `hrt.ui.HuiMainLayout`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiModelInspector`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiView`, `hrt.ui.HuiViewGym`, `hrt.ui.hide.HideMissingProject`

## hide.Plugin

- Fichier : `hide/Plugin.hx` — 125 lignes — 0 blocs doc — contient du `#if`
- Types : `class Plugin`
- Dépend de : `hrt.ui.CssParser`

## hide.Renderer

- Fichier : `hide/Renderer.hx` — 166 lignes — 7 blocs doc — contient du `#if`
- Types : `class MaterialSetup`, `class Renderer`, `class PbrSetup`, `class ScreenOutline`, `class PbrRenderer`
- Héritage : `MaterialSetup` extends `h3d.mat.MaterialSetup`, `Renderer` extends `h3d.scene.fwd.Renderer`, `PbrSetup` extends `h3d.mat.PbrMaterialSetup`, `ScreenOutline` extends `h3d.shader.ScreenShader`, `PbrRenderer` extends `h3d.scene.pbr.Renderer`
- Dépend de : `hide.Ide`, `hide.comp.Scene`
- Utilisé par : `hrt.prefab.rfx.Outline`

## hide.Search

- Fichier : `hide/Search.hx` — 203 lignes — 1 blocs doc
- Types : `typedef SearchRanges`, `typedef SearchQuery`, `typedef FuzzySearchResult`, `typedef BatchFuzzySearchAsyncResult`, `class Search`
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FancyTree`, `hrt.tools.FileManager`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiMenu`, `hrt.ui.HuiTree`, `hrt.ui.HuiTreeLine`, `hrt.ui.HuiViewGym`

## hide.ThumbnailGeneratorApp

- Fichier : `hide_hl/hide/ThumbnailGeneratorApp.hx` — 626 lignes — 2 blocs doc
- Types : `class ThumbnailGeneratorApp`, `typedef RenderInfo`, `class MessageHandler`, `class ThumbnailGenerator`
- Héritage : `ThumbnailGeneratorApp` extends `hxd.App`
- Dépend de : `hide.Config`, `hide.Ide`, `hrt.prefab.ContextShared`, `hrt.prefab.DynamicShader`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.prefab.fx.FX`, `hrt.shader.PreviewShaderAlpha`, `hrt.tools.FileManager`, `hrt.tools.MapUtils`, `hrt.ui.HuiRes`
- Utilisé par : `hide.App`, `hrt.tools.FileManager`
