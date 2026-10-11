# Package `hide.comp`

[← retour](../DEPENDENCIES.md)

## hide.comp.Button

- Fichier : `hide_js/hide/comp/Button.hx` — 60 lignes — 6 blocs doc
- Types : `typedef Options`, `class Button`
- Héritage : `Button` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.Toolbar`, `hide.view.FXEditor`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hrt.animgraph.nodes.BlendPerBone`

## hide.comp.CameraControllerEditor

- Fichier : `hide_js/hide/comp/CameraControllerEditor.hx` — 175 lignes — 3 blocs doc
- Types : `class CameraControllerEditor`
- Héritage : `CameraControllerEditor` extends `Popup`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.ExpRange` (import/use), `hide.comp.Popup` (extends/import/use), `hide.comp.Range` (import/use), `hide.comp.SceneEditor`, `hide.view.CameraController` (import/use)
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.FXEditor`

## hide.comp.CodeEditor

- Fichier : `hide_js/hide/comp/CodeEditor.hx` — 252 lignes — 14 blocs doc
- Types : `class CodeEditor`
- Héritage : `CodeEditor` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.DomkitEditor`, `hide.comp.ScriptEditor`, `hide.view.CdbCustomTypes`

## hide.comp.ColorPicker

- Fichier : `hide_js/hide/comp/ColorPicker.hx` — 823 lignes — 40 blocs doc
- Types : `class ColorBox`, `typedef ColorSliderComponent`, `class ColorPicker`, `class ColorSlider`, `class SliderGroup`
- Héritage : `ColorBox` extends `Component`, `ColorPicker` extends `Popup`, `ColorSlider` extends `Component`, `SliderGroup` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.JsTools`, `hide.comp.Popup` (extends/use), `hide.comp.SVG`, `hrt.impl.ColorSpace` (import/use)
- Utilisé par : `hide.comp.GradientEditor`, `hide.comp.PropsEditor`, `hide.comp.SceneEditor`, `hide.comp.TileSelector`, `hide.comp.Toolbar`, `hide.kit.Color`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.fx.FX`, `hrt.shgraph.nodes.Color`

## hide.comp.Component

- Fichier : `hide_js/hide/comp/Component.hx` — 61 lignes — 5 blocs doc
- Types : `class Component`
- Dépend de : `hide.Element`, `hide.Ide`
- Utilisé par : `hide.comp.Button`, `hide.comp.CodeEditor`, `hide.comp.ColorPicker`, `hide.comp.ContentEditable`, `hide.comp.CurveEditor`, `hide.comp.DetachablePanel`, `hide.comp.Dropdown`, `hide.comp.FancyArray`, `hide.comp.FancyClosable`, `hide.comp.FancyGallery`, `hide.comp.FancySearch`, `hide.comp.FancyTooltip`, `hide.comp.FancyTree`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.GradientEditor`, `hide.comp.Modal`, `hide.comp.MultiRange`, `hide.comp.Popup`, `hide.comp.PropsEditor`, `hide.comp.Range`, `hide.comp.ResizablePanel`, `hide.comp.SVG`, `hide.comp.Scene`, `hide.comp.Scrollable`, `hide.comp.Select`, `hide.comp.ShapeEditor`, `hide.comp.Tabs`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.TileSelector`, `hide.comp.Toolbar`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`, `hide.comp.cdb.Separator`, `hide.comp.cdb.Table`, `hide.ui.View`, `hide.view.GraphEditor`, `hide.view.MemProfiler`, `hide.view.RemoteConsoleView`, `hide.view.animgraph.AnimList`, `hide.view.animgraph.AnimPicker`, `hrt.prefab.l3d.HeightMap`, `hrt.shgraph.CustomVarChooser`

## hide.comp.ContentEditable

- Fichier : `hide_js/hide/comp/ContentEditable.hx` — 103 lignes — 6 blocs doc
- Types : `class ContentEditable`
- Héritage : `ContentEditable` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FancyTree`, `hide.view.Gym`, `hide.view.shadereditor.Box`, `hrt.prefab.fx.FX`

## hide.comp.ContextMenu

- Fichier : `hide/comp/ContextMenu.hx` — 699 lignes — 21 blocs doc — contient du `#if`
- Types : `typedef ContextMenuItem`, `enum SearchMode`, `typedef MenuOptions`, `class ContextMenu`
- Dépend de : `hide.Ide`, `hrt.ui.HuiMenu` (import/use)
- Utilisé par : `hide.comp.ExpRange`, `hide.comp.FancyArray`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.GradientEditor`, `hide.comp.MultiRange`, `hide.comp.PropsEditor`, `hide.comp.Range`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.Select`, `hide.comp.ShapeEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.Toolbar`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Separator`, `hide.kit.Element`, `hide.kit.Object3dRef`, `hide.kit.Select`, `hide.ui.View`, `hide.view.CdbTable`, `hide.view.FXEditor`, `hide.view.GraphEditor`, `hide.view.Gym`, `hide.view.MemProfiler`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.animgraph.nodes.BlendPerBone`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.rfx.Configurator`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.nodes.ShaderVar`

## hide.comp.CurveEditor

- Fichier : `hide_js/hide/comp/CurveEditor.hx` — 2103 lignes — 72 blocs doc
- Types : `typedef CurveKey`, `interface CurveEditorComponent`, `class EventsEditor`, `class OverviewEditor`, `class CurvePopup`, `class CurveEditor`, `enum EventMoveMode`, `class EventMoving`
- Héritage : `EventsEditor` extends `Component`, `EventsEditor` implements `CurveEditorComponent`, `OverviewEditor` extends `Component`, `OverviewEditor` implements `CurveEditorComponent`, `CurvePopup` extends `hide.comp.Popup`, `CurveEditor` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.Popup` (extends/use), `hide.comp.SVG`, `hide.ui.UndoHistory`, `hide.view.FXEditor`, `hrt.prefab.Curve` (import/use), `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.FX`
- Utilisé par : `hide.kit.Curve`, `hide.view.FXEditor`, `hrt.prefab.Curve`

## hide.comp.DetachablePanel

- Fichier : `hide_js/hide/comp/DetachablePanel.hx` — 179 lignes — 13 blocs doc
- Types : `enum Side`, `class DetachablePanel`
- Héritage : `DetachablePanel` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.SceneEditor`, `hide.kit.CDB`

## hide.comp.DomkitEditor

- Fichier : `hide_js/hide/comp/DomkitEditor.hx` — 292 lignes — 17 blocs doc
- Types : `enum DomkitEditorKind`, `class DomkitCssParser`, `class DomkitChecker`, `class DomkitEditor`
- Héritage : `DomkitCssParser` extends `domkit.CssParser`, `DomkitEditor` extends `CodeEditor`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.CodeEditor` (extends/use), `hide.comp.ScriptEditor`
- Utilisé par : `hide.view.DomkitStudio`

## hide.comp.Dropdown

- Fichier : `hide_js/hide/comp/Dropdown.hx` — 317 lignes — 14 blocs doc — contient du `#if`
- Types : `typedef Choice`, `class Dropdown`
- Héritage : `Dropdown` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.tools.Extensions` (using)
- Utilisé par : `hide.comp.GlobalSeek`, `hide.comp.Select`, `hrt.prefab.Model`, `hrt.prefab.fx.AnimEvent`

## hide.comp.ExpRange

- Fichier : `hide_js/hide/comp/ExpRange.hx` — 117 lignes — 3 blocs doc
- Types : `class ExpRange`
- Héritage : `ExpRange` extends `Range`
- Dépend de : `hide.Element`, `hide.comp.ContextMenu`, `hide.comp.Range` (extends/use)
- Utilisé par : `hide.comp.CameraControllerEditor`

## hide.comp.FancyArray

- Fichier : `hide_js/hide/comp/FancyArray.hx` — 311 lignes — 19 blocs doc
- Types : `typedef FancyItemState`, `class FancyArray`
- Héritage : `FancyArray` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.kit.List`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.shadereditor.ShaderEditor`

## hide.comp.FancyClosable

- Fichier : `hide_js/hide/comp/FancyClosable.hx` — 64 lignes — 6 blocs doc
- Types : `class FancyClosable`
- Héritage : `FancyClosable` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.FancyTree`
- Utilisé par : `hide.comp.FancyTree`

## hide.comp.FancyGallery

- Fichier : `hide_js/hide/comp/FancyGallery.hx` — 684 lignes — 38 blocs doc
- Types : `enum GalleryRefreshFlag`, `typedef GalleryRefreshFlags`, `typedef GalleryItemData`, `class FancyGallery`
- Héritage : `FancyGallery` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.Search`, `hide.comp.Component` (extends/use), `hide.comp.ContentEditable`, `hide.comp.FancySearch`, `hide.comp.FancyTooltip`, `hide.comp.ResizeObserver`, `hide.tools.DragAndDrop`, `hrt.tools.MapUtils`

## hide.comp.FancySearch

- Fichier : `hide_js/hide/comp/FancySearch.hx` — 201 lignes — 12 blocs doc
- Types : `typedef SearchRanges`, `typedef SearchQuery`, `class FancySearch`
- Héritage : `FancySearch` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FancyTree`

## hide.comp.FancyTooltip

- Fichier : `hide_js/hide/comp/FancyTooltip.hx` — 57 lignes — 6 blocs doc
- Types : `class FancyTooltip`
- Héritage : `FancyTooltip` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FileSelect2`

## hide.comp.FancyTree

- Fichier : `hide_js/hide/comp/FancyTree.hx` — 1323 lignes — 77 blocs doc
- Types : `enum DropFlag`, `typedef DropFlags`, `enum RefreshFlag`, `typedef RefreshFlags`, `enum FilterFlag`, `typedef FilterFlags`, `typedef TreeItemData`, `enum DropOperation`, `typedef TreeButton`, `typedef Params`, `class FancyTree`
- Héritage : `FancyTree` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.Search`, `hide.comp.Component` (extends/use), `hide.comp.ContentEditable`, `hide.comp.FancyClosable`, `hide.comp.FancySearch`, `hide.comp.ResizeObserver`, `hide.tools.DragAndDrop`, `hide.ui.Keys`, `hrt.tools.MapUtils`
- Utilisé par : `hide.comp.FancyClosable`, `hide.comp.SceneEditor`, `hide.view.DomkitStudio`, `hide.view.FXEditor`

## hide.comp.FileSelect

- Fichier : `hide_js/hide/comp/FileSelect.hx` — 193 lignes — 9 blocs doc
- Types : `class FileSelect`
- Héritage : `FileSelect` extends `Component`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hide.tools.IdeData`
- Utilisé par : `hide.comp.PropsEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.TextureSelect`, `hide.view.MemProfiler`, `hide.view.settings.ProjectSettings`, `hrt.prefab.Model`, `hrt.prefab.l2d.Atlas`, `hrt.prefab.l2d.Text`, `hrt.prefab.l3d.Text3D`

## hide.comp.FileSelect2

- Fichier : `hide_js/hide/comp/FileSelect2.hx` — 257 lignes — 9 blocs doc
- Types : `class FileSelect2`
- Héritage : `FileSelect2` extends `Component`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.FancyTooltip`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hide.tools.IdeData`, `hide.view.FileBrowser`
- Utilisé par : `hide.comp.TextureSelect2`, `hide.kit.File`

## hide.comp.GlobalSeek

- Fichier : `hide_js/hide/comp/GlobalSeek.hx` — 119 lignes — 6 blocs doc
- Types : `enum SeekMode`, `class GlobalSeek`
- Héritage : `GlobalSeek` extends `Modal`
- Dépend de : `hide.Element`, `hide.comp.Dropdown`, `hide.comp.Modal` (extends/use), `hide.tools.Extensions` (using), `hide.view.CdbTable`
- Utilisé par : `hide.comp.cdb.Editor`

## hide.comp.GradientEditor

- Fichier : `hide_js/hide/comp/GradientEditor.hx` — 956 lignes — 27 blocs doc
- Types : `class GradientBox`, `class GradientEditor`, `class GradientView`, `typedef DataOverride`, `typedef PreviewSettings`
- Héritage : `GradientBox` extends `Component`, `GradientEditor` extends `Popup`, `GradientView` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.ColorPicker` (import/use), `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.Popup` (extends/use), `hide.comp.SVG`, `hide.comp.Scene`, `hide.tools.Extensions` (using), `hide.ui.Keys`, `hrt.impl.ColorSpace`, `hrt.impl.Gradient` (import/use), `hrt.impl.TextureType`, `hrt.prefab.ContextShared`, `hrt.prefab.Prefab`, `hrt.prefab.RenderProps`
- Utilisé par : `hide.comp.PropsEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.cdb.Editor`, `hide.kit.Gradient`

## hide.comp.JsTools

- Fichier : `hide_js/hide/comp/JsTools.hx` — 17 lignes — 2 blocs doc
- Types : `class JsTools`
- Dépend de : `hide.Element`
- Utilisé par : `hide.comp.ColorPicker`, `hide.comp.MultiRange`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`

## hide.comp.Modal

- Fichier : `hide_js/hide/comp/Modal.hx` — 135 lignes — 11 blocs doc — contient du `#if`
- Types : `class Modal`, `class Modal2`
- Héritage : `Modal` extends `Component`, `Modal2` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.GlobalSeek`, `hide.comp.cdb.ModalColumnForm`

## hide.comp.MultiRange

- Fichier : `hide_js/hide/comp/MultiRange.hx` — 207 lignes — 4 blocs doc
- Types : `class MultiRange`
- Héritage : `MultiRange` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.JsTools`, `hide.comp.PropsEditor`, `hide.comp.Range`
- Utilisé par : `hide.comp.PropsEditor`

## hide.comp.Popup

- Fichier : `hide_js/hide/comp/Popup.hx` — 241 lignes — 17 blocs doc
- Types : `enum PopupPosition`, `class Popup`
- Héritage : `Popup` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.CameraControllerEditor`, `hide.comp.ColorPicker`, `hide.comp.CurveEditor`, `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.comp.Toolbar`, `hide.view.FXEditor`

## hide.comp.PropsEditor

- Fichier : `hide_js/hide/comp/PropsEditor.hx` — 1114 lignes — 30 blocs doc
- Types : `typedef GroupMap`, `class PropsEditor`, `class PropsField`
- Héritage : `PropsEditor` extends `Component`, `PropsField` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.ColorPicker`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.FileSelect`, `hide.comp.GradientEditor` (import/use), `hide.comp.MultiRange`, `hide.comp.Range`, `hide.comp.TextureChoice`, `hide.comp.TextureSelect`, `hide.ui.UndoHistory`, `hrt.impl.TextureType` (import/use), `hrt.prefab.Props` (import/use), `hrt.tools.MapUtils`
- Utilisé par : `hide.comp.MultiRange`, `hide.comp.SceneEditor`, `hide.prefab.EditContext`, `hide.view.FXEditor`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.DynamicShader`, `hrt.prefab.Light`, `hrt.prefab.Shader`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.LookAt`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.PrefabSpray`, `hrt.prefab.rfx.ScreenShaderGraph`

## hide.comp.RadialMenu

- Fichier : `hide_js/hide/comp/RadialMenu.hx` — 158 lignes — 9 blocs doc
- Types : `typedef RadialMenuItem`, `class RadialMenu`
- Dépend de : `hide.Element`
- Utilisé par : `hide.comp.SceneEditor`

## hide.comp.Range

- Fichier : `hide_js/hide/comp/Range.hx` — 222 lignes — 10 blocs doc
- Types : `class Range`
- Héritage : `Range` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.ui.UndoHistory`
- Utilisé par : `hide.comp.CameraControllerEditor`, `hide.comp.ExpRange`, `hide.comp.MultiRange`, `hide.comp.PropsEditor`, `hide.comp.Toolbar`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.fx.FX`

## hide.comp.ResizablePanel

- Fichier : `hide_js/hide/comp/ResizablePanel.hx` — 130 lignes — 12 blocs doc
- Types : `enum LayoutDirection`, `enum SplitterPosition`, `class ResizablePanel`
- Héritage : `ResizablePanel` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.view.FXEditor`, `hide.view.animgraph.BlendSpace2DEditor`

## hide.comp.ResizeObserver

- Fichier : `hide_js/hide/comp/ResizeObserver.hx` — 27 lignes — 5 blocs doc
- Types : `class ResizeObserver`
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FancyTree`, `hide.comp.cdb.Table`, `hide.kit.Curve`, `hide.view.FXEditor`

## hide.comp.SVG

- Fichier : `hide_js/hide/comp/SVG.hx` — 176 lignes — 16 blocs doc
- Types : `class SVG`
- Héritage : `SVG` extends `Component`
- Dépend de : `hide.Element` (import/use), `hide.comp.Component` (extends/use)
- Utilisé par : `hide.comp.ColorPicker`, `hide.comp.CurveEditor`, `hide.comp.GradientEditor`, `hide.view.GraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.Box`

## hide.comp.Scene

- Fichier : `hide_js/hide/comp/Scene.hx` — 1050 lignes — 46 blocs doc
- Types : `class Scene`, `class PreviewCamController`, `class Preview2DCamController`
- Héritage : `Scene` extends `hide.comp.Component`, `Scene` implements `h3d.IDrawable`, `PreviewCamController` extends `h3d.scene.Object`, `Preview2DCamController` extends `h2d.Object`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.SceneEditor`, `hide.prefab.ContextShared`, `hrt.prefab.Light`, `hrt.prefab.Material`, `hrt.prefab.Reference`, `hrt.prefab.RenderProps`
- Utilisé par : `hide.Renderer`, `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.ShapeEditor`, `hide.comp.Tabs`, `hide.comp.TextureSelect`, `hide.comp.TextureSelect2`, `hide.prefab.ContextShared`, `hide.prefab.EditContext`, `hide.tools.ThumbnailGenerator`, `hide.ui.View`, `hide.view.DomkitStudio`, `hide.view.FXEditor`, `hide.view.GraphEditor`, `hide.view.Gym`, `hide.view.Image`, `hide.view.MSDFView`, `hide.view.Particles2D`, `hide.view.Particles3D`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.l3d.LightProbeBaker`, `hide.view.l3d.ProbeBakerProcess`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`

## hide.comp.SceneEditor

- Fichier : `hide_js/hide/comp/SceneEditor.hx` — 6844 lignes — 177 blocs doc — contient du `#if`
- Types : `enum SelectMode`, `class RulerTool`, `class ViewportOverlaysPopup`, `class SnapSettingsPopup`, `class SceneEditorContext`, `enum RefreshMode`, `typedef CustomPivot`, `typedef TagInfo`, `class ViewModePopup`, `class IconVisibilityPopup`, `class HelpPopup`, `class RenderPropsPopup`, `class CustomEditor`, `enum Tree`, `class SceneEditor`, `class HideSceneEditorAPI`
- Héritage : `ViewportOverlaysPopup` extends `hide.comp.Popup`, `SnapSettingsPopup` extends `hide.comp.Popup`, `SceneEditorContext` extends `hide.prefab.EditContext`, `ViewModePopup` extends `hide.comp.Popup`, `IconVisibilityPopup` extends `hide.comp.Popup`, `HelpPopup` extends `hide.comp.Popup`, `RenderPropsPopup` extends `Popup`, `HideSceneEditorAPI` implements `hrt.prefab.SceneEditorAPI`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.CameraControllerEditor` (import/use), `hide.comp.ColorPicker`, `hide.comp.ContextMenu`, `hide.comp.DetachablePanel`, `hide.comp.FancyTree`, `hide.comp.Popup` (extends/use), `hide.comp.PropsEditor`, `hide.comp.RadialMenu`, `hide.comp.Scene`, `hide.comp.cdb.DataFiles` (import/use), `hide.comp.cdb.ObjEditor`, `hide.kit.KitRoot`, `hide.prefab.EditContext` (extends/use), `hide.tools.DragAndDrop`, `hide.tools.Extensions` (using), `hide.tools.FileManager`, `hide.ui.UndoHistory`, `hide.view.CameraController` (import/use), `hide.view.FXEditor`, `hide.view.FileView`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.l3d.CameraController2D`, `hide.view.l3d.Gizmo2D`, `hrt.impl.EditorTools`, `hrt.impl.Gradient`, `hrt.prefab.ContextShared` (import/use), `hrt.prefab.DynamicShader`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.Object2D` (import/use/using), `hrt.prefab.Object3D` (import/use/using), `hrt.prefab.Prefab` (import/use), `hrt.prefab.Reference` (import/use), `hrt.prefab.RenderProps`, `hrt.prefab.SceneEditorAPI` (implements/use), `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.SubFX`, `hrt.prefab.l3d.Particles3D`, `hrt.prefab.rfx.Outline`, `hrt.shader.DissolveBurn`, `hrt.shader.EmissiveMult`, `hrt.shader.GradientFlat`, `hrt.shader.GradientMap`, `hrt.shader.GradientMapLife`, `hrt.shader.HeightGradient`, `hrt.shader.MaskColorAlpha`, `hrt.shader.MeshWave`, `hrt.shader.ParticleColorLife`, `hrt.shader.ParticleColorRandom`, `hrt.shader.ParticleFade`, `hrt.shader.ParticleRandomMesh`, `hrt.shader.SDF`, `hrt.shader.Spinner`, `hrt.shader.TextureMult`, `hrt.shader.TextureRotate`, `hrt.shader.UVDebug`, `hrt.tools.ClassUtils`, `hrt.tools.Gizmo`, `hrt.tools.MapUtils` (import), `hrt.tools.ViewportAxis`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.CameraControllerEditor`, `hide.comp.Scene`, `hide.kit.CDB`, `hide.prefab.ContextShared`, `hide.prefab.EditContext`, `hide.view.CameraController`, `hide.view.FXEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.impl.RemoteConsole`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.Spray`

## hide.comp.ScenePreview

- Fichier : `hide_js/hide/comp/ScenePreview.hx` — 255 lignes — 15 blocs doc
- Types : `class ScenePreviewSettings`, `class ScenePreview`
- Héritage : `ScenePreview` extends `Scene`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.ContextMenu`, `hide.comp.Scene` (extends/use), `hide.prefab.ContextShared`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.tools.ThumbnailGenerator`, `hide.view.GenericGraphEditor`, `hide.view.animgraph.BlendSpace2DEditor`

## hide.comp.ScriptEditor

- Fichier : `hide_js/hide/comp/ScriptEditor.hx` — 940 lignes — 31 blocs doc — contient du `#if`
- Types : `typedef GlobalsDef`, `class ScriptCache`, `class ScriptChecker`, `class ScriptEditor`
- Héritage : `ScriptEditor` extends `CodeEditor`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.CodeEditor` (extends/use), `hide.comp.cdb.Formulas`
- Utilisé par : `hide.comp.DomkitEditor`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.ScriptTable`, `hide.view.Script`, `hrt.prefab.rfx.Configurator`

## hide.comp.Scrollable

- Fichier : `hide_js/hide/comp/Scrollable.hx` — 10 lignes — 0 blocs doc
- Types : `class Scrollable`
- Héritage : `Scrollable` extends `Component`
- Dépend de : `hide.comp.Component` (extends/use)

## hide.comp.Select

- Fichier : `hide_js/hide/comp/Select.hx` — 85 lignes — 5 blocs doc
- Types : `class Select`
- Héritage : `Select` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.Dropdown`
- Utilisé par : `hrt.prefab.Model`, `hrt.prefab.fx.AnimEvent`

## hide.comp.ShapeEditor

- Fichier : `hide_js/hide/comp/ShapeEditor.hx` — 633 lignes — 19 blocs doc
- Types : `enum Shape`, `typedef ShapeEditorOptions`, `class ShapeEditor`
- Héritage : `ShapeEditor` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.Scene`, `hrt.tools.Gizmo`

## hide.comp.Tabs

- Fichier : `hide_js/hide/comp/Tabs.hx` — 126 lignes — 11 blocs doc — contient du `#if`
- Types : `class Tabs`
- Héritage : `Tabs` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.Scene`
- Utilisé par : `hide.view.CdbTable`, `hide.view.FXEditor`

## hide.comp.TextureChoice

- Fichier : `hide_js/hide/comp/TextureChoice.hx` — 171 lignes — 6 blocs doc
- Types : `class TextureChoice`
- Héritage : `TextureChoice` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.FileSelect`, `hide.comp.GradientEditor` (import/use), `hide.comp.JsTools`, `hide.comp.TextureSelect`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hrt.impl.Gradient` (import/use), `hrt.impl.TextureType` (import/use)
- Utilisé par : `hide.comp.PropsEditor`, `hide.view.shadereditor.ShaderEditor`

## hide.comp.TextureChoice2

- Fichier : `hide_js/hide/comp/TextureChoice2.hx` — 169 lignes — 6 blocs doc
- Types : `class TextureChoice2`
- Héritage : `TextureChoice2` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.FileSelect`, `hide.comp.GradientEditor` (import/use), `hide.comp.JsTools`, `hide.comp.TextureSelect`, `hide.comp.TextureSelect2`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hrt.impl.Gradient` (import/use), `hrt.impl.TextureType` (import/use)
- Utilisé par : `hide.kit.Texture`

## hide.comp.TextureSelect

- Fichier : `hide_js/hide/comp/TextureSelect.hx` — 72 lignes — 5 blocs doc
- Types : `class TextureSelect`
- Héritage : `TextureSelect` extends `FileSelect`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.FileSelect` (extends/use), `hide.comp.Scene`
- Utilisé par : `hide.comp.PropsEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.comp.TileSelector`

## hide.comp.TextureSelect2

- Fichier : `hide_js/hide/comp/TextureSelect2.hx` — 62 lignes — 5 blocs doc
- Types : `class TextureSelect2`
- Héritage : `TextureSelect2` extends `FileSelect2`
- Dépend de : `hide.Ide`, `hide.comp.FileSelect2` (extends/use), `hide.comp.Scene`
- Utilisé par : `hide.comp.TextureChoice2`

## hide.comp.TileSelector

- Fichier : `hide_js/hide/comp/TileSelector.hx` — 417 lignes — 9 blocs doc
- Types : `class TileSelector`
- Héritage : `TileSelector` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.ColorPicker`, `hide.comp.Component` (extends/use), `hide.comp.TextureSelect`

## hide.comp.Toolbar

- Fichier : `hide_js/hide/comp/Toolbar.hx` — 445 lignes — 45 blocs doc
- Types : `enum ToolType`, `typedef ToolDef`, `typedef ToolToggle`, `typedef ToolSelect`, `typedef ToolMenu`, `class Toolbar`
- Héritage : `Toolbar` extends `Component`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.Button`, `hide.comp.ColorPicker`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.Popup`, `hide.comp.Range`, `hide.ui.Keys`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.view.FXEditor`, `hide.view.GraphEditor`, `hide.view.Image`, `hide.view.MSDFView`
