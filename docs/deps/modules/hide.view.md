# Package `hide.view`

[← retour](../DEPENDENCIES.md)

## hide.view.About

- Fichier : `hide_js/hide/view/About.hx` — 27 lignes — 2 blocs doc
- Types : `class About`
- Héritage : `About` extends `hide.ui.View`
- Dépend de : `hide.ui.View` (extends/use)

## hide.view.CameraController

- Fichier : `hide_js/hide/view/CameraController.hx` — 813 lignes — 18 blocs doc
- Types : `class CameraControllerBase`, `class OrthoController`, `class FPSController`, `class CamController`, `class FlightController`
- Héritage : `CameraControllerBase` extends `h3d.scene.CameraController`, `OrthoController` extends `CameraControllerBase`, `FPSController` extends `CameraControllerBase`, `CamController` extends `CameraControllerBase`, `FlightController` extends `CameraControllerBase`
- Dépend de : `hide.Ide`, `hide.comp.SceneEditor`
- Utilisé par : `hide.comp.CameraControllerEditor`, `hide.comp.SceneEditor`, `hide.prefab.EditContext`, `hide.view.FXEditor`, `hrt.prefab.EditContext2`

## hide.view.CdbCustomTypes

- Fichier : `hide_js/hide/view/CdbCustomTypes.hx` — 122 lignes — 1 blocs doc
- Types : `class CdbCustomTypes`
- Héritage : `CdbCustomTypes` extends `hide.ui.View`
- Dépend de : `hide.comp.CodeEditor`, `hide.ui.View` (extends/use)

## hide.view.CdbFavorites

- Fichier : `hide_js/hide/view/CdbFavorites.hx` — 54 lignes — 3 blocs doc
- Types : `class CdbFavorites`
- Héritage : `CdbFavorites` extends `hide.ui.View`
- Dépend de : `hide.Element`, `hide.ui.View` (extends/use), `hide.view.RefViewer`
- Utilisé par : `hide.comp.cdb.Editor`

## hide.view.CdbTable

- Fichier : `hide_js/hide/view/CdbTable.hx` — 486 lignes — 8 blocs doc — contient du `#if`
- Types : `class CdbTable`
- Héritage : `CdbTable` extends `hide.ui.View`
- Dépend de : `hide.Element`, `hide.comp.ContextMenu`, `hide.comp.Tabs`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.ScriptTable`, `hide.tools.DragAndDrop`, `hide.tools.Extensions` (using), `hide.tools.FileManager`, `hide.ui.View` (extends/use), `hide.view.Script`, `hrt.tools.CdbUtils`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.GlobalSeek`, `hide.comp.cdb.Editor`, `hrt.impl.RemoteConsole`

## hide.view.DevTools

- Fichier : `hide_js/hide/view/DevTools.hx` — 101 lignes — 3 blocs doc
- Types : `class DevTools`
- Héritage : `DevTools` extends `hide.ui.View`
- Dépend de : `hide.Element`, `hide.ui.View` (extends/use), `hrt.ui.HuiMenu`

## hide.view.DomkitStudio

- Fichier : `hide_js/hide/view/DomkitStudio.hx` — 382 lignes — 2 blocs doc
- Types : `typedef CompPackage`, `typedef CompDef`, `class DomkitStudio`, `class DomkitLess`
- Héritage : `DomkitStudio` extends `hide.ui.View`, `DomkitLess` extends `FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.comp.DomkitEditor`, `hide.comp.FancyTree`, `hide.comp.Scene`, `hide.tools.FileWatcher`, `hide.ui.View` (extends/use), `hide.view.FileView` (extends/use)
- Utilisé par : `hrt.impl.RemoteConsole`

## hide.view.FXEditor

- Fichier : `hide_js/hide/view/FXEditor.hx` — 1936 lignes — 18 blocs doc
- Types : `typedef PropTrackDef`, `typedef Section`, `class FXEditContext`, `class FXSceneEditor`, `class FXEditor`, `class FX2DEditor`
- Héritage : `FXEditContext` extends `hide.prefab.EditContext`, `FXSceneEditor` extends `hide.comp.SceneEditor`, `FXEditor` extends `hide.view.FileView`, `FX2DEditor` extends `FXEditor`
- Dépend de : `hide.Element` (import/use), `hide.Extension`, `hide.Ide`, `hide.comp.Button`, `hide.comp.CameraControllerEditor`, `hide.comp.ContextMenu`, `hide.comp.CurveEditor`, `hide.comp.FancyTree`, `hide.comp.Popup`, `hide.comp.PropsEditor`, `hide.comp.ResizablePanel`, `hide.comp.ResizeObserver`, `hide.comp.Scene`, `hide.comp.SceneEditor` (extends/use), `hide.comp.Tabs`, `hide.comp.Toolbar`, `hide.prefab.EditContext` (extends/use), `hide.view.CameraController` (import), `hide.view.FileView` (extends/use), `hrt.prefab.Curve` (import/use), `hrt.prefab.Light` (import/use), `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (import/use), `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.Event` (import/use), `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.SubFX`, `hrt.prefab.l2d.Particle2D`, `hrt.prefab.l3d.Trails`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.tools.Gizmo`, `hrt.tools.MapUtils` (import), `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.CurveEditor`, `hide.comp.SceneEditor`, `hrt.impl.RemoteConsole`, `hrt.prefab.Material`

## hide.view.FileBrowser

- Fichier : `hide_hl/hide/view/FileBrowser.hx` — 66 lignes — 0 blocs doc
- Types : `class FileBrowser`
- Héritage : `FileBrowser` extends `HuiView`
- Dépend de : `hide.App`, `hide.Ide`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiMenu`, `hrt.ui.HuiTabContainer`, `hrt.ui.HuiView` (extends/use)
- Utilisé par : `hide.Ide`, `hide.comp.FileSelect2`, `hide.view.settings.UserSettings`, `hrt.ui.HuiMainLayout`

## hide.view.FileView

- Fichier : `hide_js/hide/view/FileView.hx` — 269 lignes — 8 blocs doc
- Types : `class FileView`
- Héritage : `FileView` extends `hide.ui.View`
- Dépend de : `hide.Config`, `hide.Ide`, `hide.tools.IdeData`, `hide.ui.View` (extends/use), `hide.view.RefViewer`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.SceneEditor`, `hide.comp.cdb.ObjEditor`, `hide.view.DomkitStudio`, `hide.view.FXEditor`, `hide.view.GenericGraphEditor`, `hide.view.Image`, `hide.view.MSDFView`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.Script`, `hide.view.Sound`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`

## hide.view.GenericGraphEditor

- Fichier : `hide_js/hide/view/GenericGraphEditor.hx` — 223 lignes — 14 blocs doc
- Types : `class GenericGraphEditor`
- Héritage : `GenericGraphEditor` extends `hide.view.FileView`, `GenericGraphEditor` implements `IGraphEditor`
- Dépend de : `hide.Element`, `hide.comp.ScenePreview`, `hide.ui.UndoHistory`, `hide.view.FileView` (extends/use), `hide.view.GraphEditor`, `hide.view.GraphInterface` (implements/import/use), `hrt.ui.HuiMenu`
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`

## hide.view.GraphEditor

- Fichier : `hide_js/hide/view/GraphEditor.hx` — 2110 lignes — 52 blocs doc
- Types : `enum EdgeState`, `typedef UndoFn`, `typedef UndoBuffer`, `typedef SelectionUndoSave`, `typedef CopySelectionData`, `class PreviewShaderAlpha`, `class GraphEditor`
- Héritage : `PreviewShaderAlpha` extends `hxsl.Shader`, `GraphEditor` extends `hide.comp.Component`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.SVG` (import/use), `hide.comp.Scene`, `hide.comp.Toolbar`, `hide.ui.Keys`, `hide.view.GraphInterface` (import/use), `hide.view.shadereditor.Box` (import/use), `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (import), `hrt.shgraph.ShaderType` (import), `hrt.tools.MapUtils` (import/use), `hrt.tools.OneToMany`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.tools.ThumbnailGenerator`, `hide.view.GenericGraphEditor`, `hide.view.GraphInterface`, `hide.view.shadereditor.Box`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.animgraph.Node`, `hrt.shgraph.ShaderNode`, `hrt.texgraph.TexNode`

## hide.view.GraphInterface

- Fichier : `hide_js/hide/view/GraphInterface.hx` — 276 lignes — 61 blocs doc
- Types : `enum PinShape`, `typedef GraphNodeInfo`, `typedef NodeInput`, `typedef NodeOutput`, `typedef AddNodeMenuEntry`, `typedef Edge`, `interface IGraphNode`, `interface IGraphEditor`
- Dépend de : `hide.Element`, `hide.ui.UndoHistory`, `hide.view.GraphEditor`
- Utilisé par : `hide.view.GenericGraphEditor`, `hide.view.GraphEditor`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.shadereditor.Box`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.Output`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.nodes.Comment`, `hrt.shgraph.nodes.Reroute`, `hrt.shgraph.nodes.ShaderVar`, `hrt.texgraph.TexNode`, `hrt.texgraph.nodes.Comment`

## hide.view.Gym

- Fichier : `hide_js/hide/view/Gym.hx` — 418 lignes — 2 blocs doc
- Types : `class Gym`
- Héritage : `Gym` extends `hide.ui.View`
- Dépend de : `hide.Element`, `hide.comp.ContentEditable`, `hide.comp.ContextMenu`, `hide.comp.Scene`, `hide.ui.View` (extends/use)

## hide.view.Image

- Fichier : `hide_js/hide/view/Image.hx` — 884 lignes — 18 blocs doc
- Types : `class ImageViewerShader`, `enum ViewMode`, `class Image`
- Héritage : `ImageViewerShader` extends `hxsl.Shader`, `Image` extends `FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.Ide`, `hide.comp.Scene`, `hide.comp.Toolbar`, `hide.view.FileView` (extends/use), `hide.view.l3d.CameraController2D`

## hide.view.MSDFView

- Fichier : `hide_js/hide/view/MSDFView.hx` — 447 lignes — 12 blocs doc
- Types : `class MSDFViewerShader`, `enum MSDFViewMode`, `class MSDFView`
- Héritage : `MSDFViewerShader` extends `h3d.shader.AlphaMSDF`, `MSDFView` extends `FileView`
- Dépend de : `hide.Extension`, `hide.Ide`, `hide.comp.Scene`, `hide.comp.Toolbar`, `hide.view.FileView` (extends/use), `hide.view.l3d.CameraController2D`

## hide.view.MemProfiler

- Fichier : `hide_js/hide/view/MemProfiler.hx` — 763 lignes — 34 blocs doc — contient du `#if`
- Types : `class MemProfiler`, `class MemProfilerSearchBar`, `class MemProfilerSummaryView`, `class MemProfilerInspectView`, `class MemProfilerTable`, `class MemProfilerTableLine`
- Héritage : `MemProfiler` extends `hide.ui.View`, `MemProfilerSearchBar` extends `hide.comp.Component`, `MemProfilerSummaryView` extends `hide.comp.Component`, `MemProfilerInspectView` extends `hide.comp.Component`, `MemProfilerTable` extends `hide.comp.Component`, `MemProfilerTableLine` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.FileSelect`, `hide.ui.View` (extends/use), `hrt.ui.HuiMenu`
- Utilisé par : `hide.view.RemoteConsoleView`

## hide.view.Model

- Fichier : `hide_hl/hide/view/Model.hx` — 898 lignes — 0 blocs doc — contient du `#if`
- Types : `enum_abstract CollisionMode`, `class CollisionSettings`, `class Model`
- Héritage : `Model` extends `HuiView`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.tools.IdeData`, `hide.view.Timeline`, `hrt.prefab.Cache`, `hrt.prefab.rfx.Outline`, `hrt.ui.HuiButton`, `hrt.ui.HuiCommands`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiElement`, `hrt.ui.HuiIcon`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiMenu`, `hrt.ui.HuiModelInspector`, `hrt.ui.HuiRes`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiSelect`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiText`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiView` (extends/use)
- Utilisé par : `hide.Ide`, `hide.comp.SceneEditor`, `hrt.impl.RemoteConsole`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiModelInspector`

## hide.view.Particles2D

- Fichier : `hide_js/hide/view/Particles2D.hx` — 349 lignes — 2 blocs doc
- Types : `class Particles2D`
- Héritage : `Particles2D` extends `FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hide.comp.Scene`, `hide.view.FileView` (extends/use), `hide.view.l3d.CameraController2D`
- Utilisé par : `hrt.prefab.l2d.Particle2D`

## hide.view.Particles3D

- Fichier : `hide_js/hide/view/Particles3D.hx` — 332 lignes — 1 blocs doc
- Types : `class Particles3D`
- Héritage : `Particles3D` extends `FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hide.comp.Scene`, `hide.view.FileView` (extends/use)

## hide.view.Prefab

- Fichier : `hide_hl/hide/view/Prefab.hx` — 2987 lignes — 14 blocs doc — contient du `#if`
- Types : `enum SelectionFlag`, `typedef SelectionFlags`, `typedef TagInfo`, `typedef PrefabError`, `class Prefab`, `class EditContext`, `class HuiPrefabInspectorError`
- Héritage : `Prefab` extends `HuiView`, `EditContext` extends `hrt.prefab.EditContext2`, `HuiPrefabInspectorError` extends `HuiElement`
- Dépend de : `hide.App`, `hide.Config`, `hide.Element`, `hide.Ide`, `hide.kit.KitRoot`, `hide.tools.IdeData`, `hide.view.PrefabUndo`, `hide.view.Timeline`, `hrt.impl.ColorSpace`, `hrt.prefab.ContextShared`, `hrt.prefab.Diff`, `hrt.prefab.EditContext2` (extends/use), `hrt.prefab.Material`, `hrt.prefab.MaterialLibrary`, `hrt.prefab.Model`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.RenderProps`, `hrt.prefab.SceneEditorAPI`, `hrt.prefab.Unknown`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.SubFX`, `hrt.shader.DissolveBurn`, `hrt.shader.EmissiveMult`, `hrt.shader.GradientFlat`, `hrt.shader.GradientMap`, `hrt.shader.GradientMapLife`, `hrt.shader.HeightGradient`, `hrt.shader.MaskColorAlpha`, `hrt.shader.MeshWave`, `hrt.shader.ParticleColorLife`, `hrt.shader.ParticleColorRandom`, `hrt.shader.ParticleFade`, `hrt.shader.ParticleRandomMesh`, `hrt.shader.SDF`, `hrt.shader.Spinner`, `hrt.shader.TextureMult`, `hrt.shader.TextureRotate`, `hrt.shader.UVDebug`, `hrt.tools.ClassUtils`, `hrt.tools.FileManager`, `hrt.tools.Gizmo`, `hrt.tools.MapUtils`, `hrt.tools.Undo`, `hrt.ui.HuiButton`, `hrt.ui.HuiCommands`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiIcon`, `hrt.ui.HuiMenu`, `hrt.ui.HuiPrefabInspectorHeader`, `hrt.ui.HuiRes`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiTree`, `hrt.ui.HuiView` (extends/use)
- Utilisé par : `hide.Ide`, `hide.comp.SceneEditor`, `hide.comp.cdb.DataFiles`, `hide.kit.List`, `hide.kit.Object3dRef`, `hide.prefab.EditContext`, `hrt.impl.RemoteConsole`, `hrt.prefab.Material`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiPrefabInspectorHeader`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiToolbar`

## hide.view.PrefabUndo

- Fichier : `hide_hl/hide/view/PrefabUndo.hx` — 32 lignes — 3 blocs doc
- Types : `class PrefabUndo`
- Héritage : `PrefabUndo` extends `hrt.tools.Undo`
- Dépend de : `hrt.prefab.Prefab`, `hrt.tools.Undo` (extends/use)
- Utilisé par : `hide.view.Prefab`, `hrt.ui.HuiCdbInspector`

## hide.view.RefViewer

- Fichier : `hide_js/hide/view/RefViewer.hx` — 142 lignes — 11 blocs doc
- Types : `typedef Reference`, `typedef Result`, `class RefViewer`
- Héritage : `RefViewer` extends `hide.ui.View`
- Dépend de : `hide.Element`, `hide.ui.View` (extends/use)
- Utilisé par : `hide.comp.cdb.Editor`, `hide.view.CdbFavorites`, `hide.view.FileView`, `hrt.prefab.Material`

## hide.view.RemoteConsoleView

- Fichier : `hide_js/hide/view/RemoteConsoleView.hx` — 800 lignes — 29 blocs doc — contient du `#if`
- Types : `class RemoteConsoleView`, `class RemoteConsolePanel`, `class RemoteConsoleCommand`, `class RemoteConsoleSubCommandDump`, `class RemoteConsoleCommandHL`, `class RemoteConsoleCommandHeaps`, `class RemoteConsoleCommandCustom`
- Héritage : `RemoteConsoleView` extends `hide.ui.View`, `RemoteConsolePanel` extends `hide.comp.Component`, `RemoteConsoleCommand` extends `hide.comp.Component`, `RemoteConsoleSubCommandDump` extends `hide.comp.Component`, `RemoteConsoleCommandHL` extends `RemoteConsoleCommand`, `RemoteConsoleCommandHeaps` extends `RemoteConsoleCommand`, `RemoteConsoleCommandCustom` extends `RemoteConsoleCommand`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.tools.IdeData`, `hide.ui.View` (extends/use), `hide.view.MemProfiler`, `hrt.impl.RemoteConsole`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`

## hide.view.Script

- Fichier : `hide_js/hide/view/Script.hx` — 134 lignes — 1 blocs doc
- Types : `class Script`
- Héritage : `Script` extends `FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.comp.ScriptEditor`, `hide.view.FileView` (extends/use), `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.cdb.Editor`, `hide.comp.cdb.Formulas`, `hide.view.CdbTable`

## hide.view.Sound

- Fichier : `hide_js/hide/view/Sound.hx` — 17 lignes — 1 blocs doc
- Types : `class Sound`
- Héritage : `Sound` extends `FileView`
- Dépend de : `hide.view.FileView` (extends/use)

## hide.view.Texture

- Fichier : `hide_hl/hide/view/Texture.hx` — 850 lignes — 0 blocs doc — contient du `#if`
- Types : `class TextureViewerShader`, `class HuiHistogramRange`, `class Texture`
- Héritage : `TextureViewerShader` extends `hxsl.Shader`, `HuiHistogramRange` extends `HuiElement`, `Texture` extends `HuiView`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.tools.IdeData`, `hrt.ui.CssParser`, `hrt.ui.HuiButton`, `hrt.ui.HuiCommands`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiIcon`, `hrt.ui.HuiInputBox`, `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`, `hrt.ui.HuiSelect`, `hrt.ui.HuiSplitContainer`, `hrt.ui.HuiText`, `hrt.ui.HuiToggle`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiView` (extends/use)
- Utilisé par : `hide.Ide`

## hide.view.Timeline

- Fichier : `hide_hl/hide/view/Timeline.hx` — 598 lignes — 0 blocs doc
- Types : `enum Unit`, `enum ClearFlag`, `typedef Track`, `typedef Clip`, `typedef Marker`, `class GridShader`, `class Timeline`
- Héritage : `GridShader` extends `hxsl.Shader`, `Timeline` extends `HuiView`
- Dépend de : `hide.Element`, `hrt.ui.HuiButton`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiIcon`, `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`, `hrt.ui.HuiSplitContainer`, `hrt.ui.HuiText`, `hrt.ui.HuiTextInput`, `hrt.ui.HuiView` (extends/use)
- Utilisé par : `hide.Ide`, `hide.view.Model`, `hide.view.Prefab`, `hrt.ui.HuiMainLayout`

## hide.view.Unknown

- Fichier : `hide_js/hide/view/Unknown.hx` — 14 lignes — 1 blocs doc
- Types : `class Unknown`
- Héritage : `Unknown` extends `hide.ui.View`
- Dépend de : `hide.ui.View` (extends/use)

## hide.view.VirtualListTest

- Fichier : `hide_hl/hide/view/VirtualListTest.hx` — 67 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef Item`, `class VirtualListTest`
- Héritage : `VirtualListTest` extends `HuiView`
- Dépend de : `hrt.ui.HuiElement`, `hrt.ui.HuiText`, `hrt.ui.HuiView` (extends/use), `hrt.ui.HuiVirtualList`
