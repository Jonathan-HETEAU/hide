# Package `hrt.ui`

[← retour](../DEPENDENCIES.md)

## hrt.ui.CssParser

- Fichier : `hrt/ui/CssParser.hx` — 231 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef BackgroundShadow`, `enum TextTransform`, `enum BorderStyle`, `enum_abstract BackgroundImageMode`, `enum_abstract BackgroundBlendMode`, `typedef BoxF`, `class CssParser`
- Héritage : `CssParser` extends `h2d.domkit.BaseComponents.CustomParser`
- Dépend de : `hrt.ui.HuiRes`
- Utilisé par : `hide.HlMacros`, `hide.Plugin`, `hide.view.Texture`, `hrt.ui.HuiBackground`, `hrt.ui.HuiElement`, `hrt.ui.HuiIcon`

## hrt.ui.HuiBackground

- Fichier : `hrt/ui/HuiBackground.hx` — 771 lignes — 0 blocs doc — contient du `#if`
- Types : `class BackgroundShader`, `class HuiBackground`
- Héritage : `BackgroundShader` extends `hxsl.Shader`, `HuiBackground` extends `h2d.ScaleGrid`, `HuiBackground` implements `h2d.domkit.Object`
- Dépend de : `hrt.ui.CssParser`, `hrt.ui.HuiRes`
- Utilisé par : `hrt.ui.HuiElement`

## hrt.ui.HuiBase

- Fichier : `hrt/ui/HuiBase.hx` — 416 lignes — 3 blocs doc — contient du `#if`
- Types : `class HuiBase`
- Héritage : `HuiBase` extends `HuiElement`
- Dépend de : `hide.App`, `hide.Ide`, `hrt.ui.HuiBasicTooltip`, `hrt.ui.HuiCommands`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMainLayout`, `hrt.ui.HuiMenu`, `hrt.ui.HuiPopup`, `hrt.ui.HuiRes`, `hrt.ui.HuiView`
- Utilisé par : `hide.App`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement`, `hrt.ui.HuiMainLayout`, `hrt.ui.HuiMenu`, `hrt.ui.HuiText`

## hrt.ui.HuiBasicTooltip

- Fichier : `hrt/ui/HuiBasicTooltip.hx` — 11 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiBasicTooltip`
- Héritage : `HuiBasicTooltip` extends `HuiPopup`
- Dépend de : `hrt.ui.HuiPopup` (extends/use)
- Utilisé par : `hrt.ui.HuiBase`

## hrt.ui.HuiButton

- Fichier : `hrt/ui/HuiButton.hx` — 15 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiButton`
- Héritage : `HuiButton` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Button`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiErrorDisplay`

## hrt.ui.HuiButtonMenu

- Fichier : `hrt/ui/HuiButtonMenu.hx` — 62 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiButtonMenu`
- Héritage : `HuiButtonMenu` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiModalContainer`

## hrt.ui.HuiCategory

- Fichier : `hrt/ui/HuiCategory.hx` — 51 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiCategory`
- Héritage : `HuiCategory` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Category`

## hrt.ui.HuiCdbInspector

- Fichier : `hrt/ui/HuiCdbInspector.hx` — 168 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiCdbInspector`, `class HuiPropsInspector`
- Héritage : `HuiCdbInspector` extends `HuiElement`, `HuiPropsInspector` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.view.PrefabUndo`, `hrt.prefab.Prefab`, `hrt.ui.HuiCheckbox`, `hrt.ui.HuiCodeEditor`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiInputBox`, `hrt.ui.HuiSelect`, `hrt.ui.HuiSlider`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.CDB`

## hrt.ui.HuiCdbTable

- Fichier : `hrt/ui/HuiCdbTable.hx` — 157 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef VisibleEntry`, `class HuiCdbTable`, `class HuiTableLine`, `class HuiTableCell`
- Héritage : `HuiCdbTable` extends `HuiElement`, `HuiTableLine` extends `HuiElement`, `HuiTableCell` extends `HuiElement`
- Dépend de : `hide.Ide`, `hrt.tools.Undo`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiText`

## hrt.ui.HuiCheckbox

- Fichier : `hrt/ui/HuiCheckbox.hx` — 32 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiCheckbox`
- Héritage : `HuiCheckbox` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Bitflag`, `hide.kit.Checkbox`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiToolbar`

## hrt.ui.HuiCodeEditor

- Fichier : `hrt/ui/HuiCodeEditor.hx` — 302 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef HuiCodeCompletion`, `class HuiCodeTip`, `class HuiCodeEditor`, `class HuiCodeEditorInternal`
- Héritage : `HuiCodeTip` extends `HuiPopup`, `HuiCodeEditor` extends `HuiElement`, `HuiCodeEditorInternal` extends `h2d.TextInput`, `HuiCodeEditorInternal` implements `h2d.domkit.Object`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiText`
- Utilisé par : `hrt.ui.HuiCdbInspector`

## hrt.ui.HuiColorBox

- Fichier : `hrt/ui/HuiColorBox.hx` — 77 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiColorBox`
- Héritage : `HuiColorBox` extends `HuiElement`
- Dépend de : `hrt.shader.PreviewShaderAlpha`, `hrt.ui.HuiColorPicker`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiPopup`
- Utilisé par : `hide.kit.Color`, `hrt.ui.HuiColorPicker`

## hrt.ui.HuiColorPicker

- Fichier : `hrt/ui/HuiColorPicker.hx` — 510 lignes — 2 blocs doc — contient du `#if`
- Types : `class HuiColorPicker`, `enum ColorSliderOrientation`, `class HuiColorSlider`
- Héritage : `HuiColorPicker` extends `HuiPopup`, `HuiColorSlider` extends `HuiElement`
- Dépend de : `hrt.impl.ColorSpace`, `hrt.shader.PreviewShaderAlpha`, `hrt.ui.HuiColorBox`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiInputBox`, `hrt.ui.HuiPopup` (extends/use)
- Utilisé par : `hrt.ui.HuiColorBox`

## hrt.ui.HuiCommands

- Fichier : `hrt/ui/HuiCommands.hx` — 109 lignes — 6 blocs doc — contient du `#if`
- Types : `class HuiCommands`, `class HuiDebugCommands`, `enum ShortcutContext`, `typedef Shortcut`, `class HuiCommand`
- Utilisé par : `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hrt.tools.Gizmo`, `hrt.ui.HuiBase`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiElement`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiGradientEditor`, `hrt.ui.HuiMenu`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiTree`, `hrt.ui.HuiView`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiConfirmPopup

- Fichier : `hrt/ui/HuiConfirmPopup.hx` — 63 lignes — 0 blocs doc — contient du `#if`
- Types : `enum ConfirmButton`, `typedef ConfirmButtons`, `class HuiConfirmPopup`
- Héritage : `HuiConfirmPopup` extends `HuiPopup`
- Dépend de : `hrt.ui.HuiButton`, `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiText`
- Utilisé par : `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hrt.ui.HuiBase`

## hrt.ui.HuiCurveBox

- Fichier : `hrt/ui/HuiCurveBox.hx` — 598 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiKeyPopup`, `class HuiCurveBox`, `class HuiCurveEditor`
- Héritage : `HuiKeyPopup` extends `HuiPopup`, `HuiCurveBox` extends `HuiElement`, `HuiCurveEditor` extends `HuiPopup`
- Dépend de : `hrt.prefab.Curve`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiIcon`, `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiRes`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Curve`

## hrt.ui.HuiDragOp

- Fichier : `hrt/ui/HuiDragOp.hx` — 80 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiDragOp`, `class HuiDragDropPreview`
- Héritage : `HuiDragDropPreview` extends `HuiElement`
- Dépend de : `hrt.ui.HuiBase`, `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Object3dRef`, `hide.view.Prefab`, `hrt.ui.HuiBase`, `hrt.ui.HuiElement`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiFilePicker`, `hrt.ui.HuiTree`, `hrt.ui.HuiTreeLine`

## hrt.ui.HuiDropOverlay

- Fichier : `hrt/ui/HuiDropOverlay.hx` — 29 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiDropOverlay`
- Héritage : `HuiDropOverlay` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Object3dRef`, `hrt.ui.HuiFilePicker`

## hrt.ui.HuiElement

- Fichier : `hrt/ui/HuiElement.hx` — 709 lignes — 13 blocs doc — contient du `#if`
- Types : `typedef RegisteredCommand`, `class HuiElement`
- Héritage : `HuiElement` extends `h2d.Flow`
- Dépend de : `hide.App`, `hide.Ide`, `hrt.tools.Macros`, `hrt.ui.CssParser`, `hrt.ui.HuiBackground`, `hrt.ui.HuiBase`, `hrt.ui.HuiCommands`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiScrollbar`, `hrt.ui.HuiText`, `hrt.ui.HuiView`
- Utilisé par : `hide.kit.Element`, `hide.kit.KitRoot`, `hide.kit.Matlib`, `hide.kit.NativeElement`, `hide.kit.SliderGroup`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hide.view.VirtualListTest`, `hrt.ui.HuiBase`, `hrt.ui.HuiButton`, `hrt.ui.HuiButtonMenu`, `hrt.ui.HuiCategory`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiCdbTable`, `hrt.ui.HuiCheckbox`, `hrt.ui.HuiCodeEditor`, `hrt.ui.HuiColorBox`, `hrt.ui.HuiColorPicker`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiDropOverlay`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiFilePicker`, `hrt.ui.HuiGameLauncherWidget`, `hrt.ui.HuiGradientBox`, `hrt.ui.HuiIcon`, `hrt.ui.HuiInputBox`, `hrt.ui.HuiLine`, `hrt.ui.HuiListEditor`, `hrt.ui.HuiLodLine`, `hrt.ui.HuiMainLayout`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiMenu`, `hrt.ui.HuiModalContainer`, `hrt.ui.HuiModelInspector`, `hrt.ui.HuiPopup`, `hrt.ui.HuiPrefabInspectorHeader`, `hrt.ui.HuiProjectLayout`, `hrt.ui.HuiScene`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiScrollbar`, `hrt.ui.HuiSelect`, `hrt.ui.HuiSeparator`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiSlider`, `hrt.ui.HuiSpacer`, `hrt.ui.HuiSplitContainer`, `hrt.ui.HuiSplitter`, `hrt.ui.HuiTab`, `hrt.ui.HuiTabContainer`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiText`, `hrt.ui.HuiTextureChoice`, `hrt.ui.HuiToast`, `hrt.ui.HuiToggle`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiTree`, `hrt.ui.HuiTreeLine`, `hrt.ui.HuiView`, `hrt.ui.HuiViewGym`, `hrt.ui.HuiVirtualGrid`, `hrt.ui.HuiVirtualList`, `hrt.ui.hide.HideMissingProject`

## hrt.ui.HuiErrorDisplay

- Fichier : `hrt/ui/HuiErrorDisplay.hx` — 64 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiErrorDisplay`
- Héritage : `HuiErrorDisplay` extends `HuiPopup`
- Dépend de : `hide.Ide`, `hrt.ui.HuiButton`, `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiText`
- Utilisé par : `hide.view.Prefab`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiView`

## hrt.ui.HuiFileBrowser

- Fichier : `hrt/ui/HuiFileBrowser.hx` — 1368 lignes — 8 blocs doc — contient du `#if`
- Types : `typedef File`, `enum_abstract BrowserMode`, `class HuiFileBrowser`, `class HuiFileBrowserGalleryItem`, `class HuiFileBrowserMainToolbarWidget`, `class HuiFileBrowserSecondToolbarWidget`, `class HuiFileBrowserNoResultWidget`, `class HuiFileBrowserGalleryWidget`, `class HuiFileBrowserSlug`
- Héritage : `HuiFileBrowser` extends `HuiElement`, `HuiFileBrowserGalleryItem` extends `HuiElement`, `HuiFileBrowserMainToolbarWidget` extends `HuiElement`, `HuiFileBrowserSecondToolbarWidget` extends `HuiElement`, `HuiFileBrowserNoResultWidget` extends `HuiElement`, `HuiFileBrowserGalleryWidget` extends `HuiElement`, `HuiFileBrowserSlug` extends `HuiElement`
- Dépend de : `hide.App`, `hide.Ide`, `hide.Search`, `hide.tools.IdeData`, `hrt.prefab.MaterialLibrary`, `hrt.prefab.Prefab`, `hrt.prefab.RenderProfile`, `hrt.prefab.fx.FX`, `hrt.tools.FileManager` (import/use), `hrt.tools.Undo`, `hrt.ui.HuiCommands`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiPopup`, `hrt.ui.HuiRes`, `hrt.ui.HuiSplitContainer`, `hrt.ui.HuiText`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiTree`, `hrt.ui.HuiVirtualGrid`
- Utilisé par : `hide.view.FileBrowser`, `hide.view.Prefab`, `hide.view.Timeline`, `hrt.ui.HuiFilePicker`

## hrt.ui.HuiFilePicker

- Fichier : `hrt/ui/HuiFilePicker.hx` — 143 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiFilePicker`
- Héritage : `HuiFilePicker` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.tools.IdeData`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiDropOverlay`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiFileBrowser`
- Utilisé par : `hide.kit.File`

## hrt.ui.HuiGameLauncherWidget

- Fichier : `hrt/ui/HuiGameLauncherWidget.hx` — 72 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiGameLauncherWidget`
- Héritage : `HuiGameLauncherWidget` extends `HuiElement`
- Dépend de : `hide.tools.GameLauncher`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`

## hrt.ui.HuiGradientBox

- Fichier : `hrt/ui/HuiGradientBox.hx` — 88 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiGradientBox`
- Héritage : `HuiGradientBox` extends `HuiElement`
- Dépend de : `hrt.impl.Gradient`, `hrt.shader.PreviewShaderAlpha`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiGradientEditor`
- Utilisé par : `hide.kit.Gradient`

## hrt.ui.HuiGradientEditor

- Fichier : `hrt/ui/HuiGradientEditor.hx` — 379 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiGradientEditor`
- Héritage : `HuiGradientEditor` extends `HuiPopup`
- Dépend de : `hrt.impl.Gradient`, `hrt.shader.PreviewShaderAlpha`, `hrt.ui.HuiCommands`, `hrt.ui.HuiMenu`, `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiRes`
- Utilisé par : `hrt.ui.HuiGradientBox`

## hrt.ui.HuiIcon

- Fichier : `hrt/ui/HuiIcon.hx` — 25 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiIcon`
- Héritage : `HuiIcon` extends `HuiElement`
- Dépend de : `hrt.ui.CssParser`, `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiTree`

## hrt.ui.HuiInputBox

- Fichier : `hrt/ui/HuiInputBox.hx` — 122 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiInputBox`
- Héritage : `HuiInputBox` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Input`, `hide.view.Texture`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiColorPicker`

## hrt.ui.HuiLine

- Fichier : `hrt/ui/HuiLine.hx` — 24 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiLine`
- Héritage : `HuiLine` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Element`, `hide.kit.Line`, `hide.kit.SliderGroup`

## hrt.ui.HuiListEditor

- Fichier : `hrt/ui/HuiListEditor.hx` — 150 lignes — 3 blocs doc — contient du `#if`
- Types : `class HuiListEditor`, `class HuiListEditorLine`
- Héritage : `HuiListEditor` extends `HuiElement`, `HuiListEditorLine` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiRes`
- Utilisé par : `hide.kit.List`

## hrt.ui.HuiLodLine

- Fichier : `hrt/ui/HuiLodLine.hx` — 143 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiLodLine`
- Héritage : `HuiLodLine` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiText`

## hrt.ui.HuiMacros

- Fichier : `hrt/ui/HuiMacros.hx` — 8 lignes — 0 blocs doc — contient du `#if`

## hrt.ui.HuiMainLayout

- Fichier : `hrt/ui/HuiMainLayout.hx` — 165 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiMainLayout`
- Héritage : `HuiMainLayout` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.tools.Profiler`, `hide.view.FileBrowser`, `hide.view.Timeline`, `hrt.ui.HuiBase`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiProjectLayout`, `hrt.ui.HuiToast`, `hrt.ui.HuiViewGym`, `hrt.ui.hide.HideMissingProject`, `hrt.ui.tests.HuiPrefabEditorTests`
- Utilisé par : `hrt.ui.HuiBase`

## hrt.ui.HuiMaterialInspector

- Fichier : `hrt/ui/HuiMaterialInspector.hx` — 185 lignes — 0 blocs doc — contient du `#if`
- Types : `enum MaterialLibraryMode`, `class HuiMaterialInspector`
- Héritage : `HuiMaterialInspector` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.view.Model`, `hide.view.Prefab`, `hrt.prefab.Material`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiSceneEditor`
- Utilisé par : `hide.view.Model`

## hrt.ui.HuiMenu

- Fichier : `hrt/ui/HuiMenu.hx` — 498 lignes — 16 blocs doc — contient du `#if`
- Types : `typedef MenuIcon`, `typedef MenuItem`, `typedef MenuOptions`, `class HuiMenu`, `class HuiMenuItem`
- Héritage : `HuiMenu` extends `HuiPopup`, `HuiMenuItem` extends `HuiElement`
- Dépend de : `hide.Search`, `hrt.ui.HuiBase`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiText`
- Utilisé par : `hide.comp.ContextMenu`, `hide.comp.FancyArray`, `hide.comp.SceneEditor`, `hide.comp.ScenePreview`, `hide.comp.Toolbar`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Separator`, `hide.kit.Category`, `hide.kit.Element`, `hide.kit.Object3dRef`, `hide.kit.Select`, `hide.ui.View`, `hide.view.CdbTable`, `hide.view.DevTools`, `hide.view.FXEditor`, `hide.view.FileBrowser`, `hide.view.FileView`, `hide.view.GenericGraphEditor`, `hide.view.GraphEditor`, `hide.view.MemProfiler`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.RemoteConsoleView`, `hide.view.Script`, `hide.view.Texture`, `hide.view.Timeline`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.animgraph.nodes.BlendPerBone`, `hrt.prefab.Reference`, `hrt.prefab.l3d.MeshSpray`, `hrt.ui.HuiBase`, `hrt.ui.HuiButtonMenu`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiGameLauncherWidget`, `hrt.ui.HuiGradientEditor`, `hrt.ui.HuiMainLayout`, `hrt.ui.HuiSelect`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiTextureChoice`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiTree`, `hrt.ui.HuiView`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiModalContainer

- Fichier : `hrt/ui/HuiModalContainer.hx` — 31 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiModalContainer`
- Héritage : `HuiModalContainer` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hrt.ui.HuiButtonMenu`, `hrt.ui.HuiPopup`

## hrt.ui.HuiModelInspector

- Fichier : `hrt/ui/HuiModelInspector.hx` — 381 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiModelInspector`
- Héritage : `HuiModelInspector` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.view.Model`, `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.Model`

## hrt.ui.HuiPopup

- Fichier : `hrt/ui/HuiPopup.hx` — 208 lignes — 5 blocs doc — contient du `#if`
- Types : `enum AnchorObject`, `enum AnchorDirection`, `typedef Anchor`, `class HuiPopup`
- Héritage : `HuiPopup` extends `HuiElement`
- Dépend de : `hide.App`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiModalContainer`
- Utilisé par : `hrt.ui.HuiBase`, `hrt.ui.HuiBasicTooltip`, `hrt.ui.HuiCodeEditor`, `hrt.ui.HuiColorBox`, `hrt.ui.HuiColorPicker`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiGradientEditor`, `hrt.ui.HuiMenu`, `hrt.ui.HuiPopupInfo`, `hrt.ui.HuiToolbar`

## hrt.ui.HuiPopupInfo

- Fichier : `hrt/ui/HuiPopupInfo.hx` — 45 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiPopupInfo`
- Héritage : `HuiPopupInfo` extends `HuiPopup`
- Dépend de : `hrt.ui.HuiPopup` (extends/use)
- Utilisé par : `hrt.ui.HuiSceneEditor`

## hrt.ui.HuiPrefabInspectorHeader

- Fichier : `hrt/ui/HuiPrefabInspectorHeader.hx` — 68 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiPrefabInspectorHeader`
- Héritage : `HuiPrefabInspectorHeader` extends `HuiElement`
- Dépend de : `hide.view.Prefab`, `hrt.prefab.Prefab`, `hrt.tools.ClassUtils`, `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.Prefab`

## hrt.ui.HuiProjectLayout

- Fichier : `hrt/ui/HuiProjectLayout.hx` — 25 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiProjectLayout`
- Héritage : `HuiProjectLayout` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiSplitContainer`
- Utilisé par : `hrt.ui.HuiMainLayout`

## hrt.ui.HuiRes

- Fichier : `hrt/ui/HuiRes.hx` — 31 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiRes`
- Utilisé par : `hide.App`, `hide.ThumbnailGeneratorApp`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hrt.import`, `hrt.prefab.Macros`, `hrt.prefab.MaterialLibrary`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.RenderProfile`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.rfx.RendererFX`, `hrt.ui.CssParser`, `hrt.ui.HuiBackground`, `hrt.ui.HuiBase`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiGameLauncherWidget`, `hrt.ui.HuiGradientEditor`, `hrt.ui.HuiListEditor`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiSelect`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiText`, `hrt.ui.HuiTextureChoice`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiTree`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiScene

- Fichier : `hrt/ui/HuiScene.hx` — 437 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiSceneEvents`, `class HuiScene`, `class Interactive2`, `class HuiSceneInfos`
- Héritage : `HuiSceneEvents` extends `hxd.SceneEvents`, `HuiScene` extends `HuiElement`, `Interactive2` extends `h2d.Interactive`, `HuiSceneInfos` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)

## hrt.ui.HuiSceneEditor

- Fichier : `hrt/ui/HuiSceneEditor.hx` — 677 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiSceneEditor`
- Héritage : `HuiSceneEditor` extends `HuiElement`
- Dépend de : `hide.Config`, `hide.Ide`, `hide.kit.KitRoot`, `hide.view.Prefab`, `hrt.prefab.Material`, `hrt.prefab.Prefab`, `hrt.prefab.RenderProfile`, `hrt.prefab.RenderProps`, `hrt.prefab.rfx.Outline`, `hrt.tools.Gizmo`, `hrt.tools.Grid`, `hrt.tools.ViewportAxis`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiPopupInfo`, `hrt.ui.HuiRes`, `hrt.ui.HuiSplitContainer`, `hrt.ui.HuiText`, `hrt.ui.HuiTree`
- Utilisé par : `hide.view.Model`, `hide.view.Prefab`, `hrt.ui.HuiMaterialInspector`, `hrt.ui.HuiToolbar`

## hrt.ui.HuiScrollbar

- Fichier : `hrt/ui/HuiScrollbar.hx` — 15 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiScrollbar`
- Héritage : `HuiScrollbar` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hrt.ui.HuiElement`

## hrt.ui.HuiSelect

- Fichier : `hrt/ui/HuiSelect.hx` — 71 lignes — 3 blocs doc — contient du `#if`
- Types : `typedef HuiSelectOption`, `class HuiSelect`
- Héritage : `HuiSelect` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`
- Utilisé par : `hide.kit.Object3dRef`, `hide.kit.Select`, `hide.view.Model`, `hide.view.Texture`, `hrt.ui.HuiCdbInspector`

## hrt.ui.HuiSeparator

- Fichier : `hrt/ui/HuiSeparator.hx` — 9 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiSeparator`
- Héritage : `HuiSeparator` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Separator`

## hrt.ui.HuiShapeEditor

- Fichier : `hrt/ui/HuiShapeEditor.hx` — 584 lignes — 0 blocs doc — contient du `#if`
- Types : `enum Shape`, `typedef ShapeEditorOptions`, `class HuiShapeEditor`
- Héritage : `HuiShapeEditor` extends `HuiElement`
- Dépend de : `hrt.tools.Gizmo`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiRes`, `hrt.ui.HuiText`
- Utilisé par : `hide.view.Model`

## hrt.ui.HuiSlider

- Fichier : `hrt/ui/HuiSlider.hx` — 178 lignes — 1 blocs doc — contient du `#if`
- Types : `class HuiSlider`
- Héritage : `HuiSlider` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Slider`, `hrt.ui.HuiCdbInspector`

## hrt.ui.HuiSpacer

- Fichier : `hrt/ui/HuiSpacer.hx` — 7 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiSpacer`
- Héritage : `HuiSpacer` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.kit.Spacer`

## hrt.ui.HuiSplitContainer

- Fichier : `hrt/ui/HuiSplitContainer.hx` — 232 lignes — 1 blocs doc — contient du `#if`
- Types : `enum Direction`, `enum AnchorTo`, `class HuiSplitContainer`
- Héritage : `HuiSplitContainer` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.Texture`, `hide.view.Timeline`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiProjectLayout`, `hrt.ui.HuiSceneEditor`

## hrt.ui.HuiSplitter

- Fichier : `hrt/ui/HuiSplitter.hx` — 75 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiSplitter`
- Héritage : `HuiSplitter` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)

## hrt.ui.HuiTab

- Fichier : `hrt/ui/HuiTab.hx` — 38 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiTab`
- Héritage : `HuiTab` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hrt.ui.HuiTabContainer`, `hrt.ui.HuiTabViewContainer`

## hrt.ui.HuiTabContainer

- Fichier : `hrt/ui/HuiTabContainer.hx` — 257 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiTabContainer`
- Héritage : `HuiTabContainer` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiTab`, `hrt.ui.HuiView`
- Utilisé par : `hide.view.FileBrowser`, `hrt.ui.HuiTabViewContainer`

## hrt.ui.HuiTabViewContainer

- Fichier : `hrt/ui/HuiTabViewContainer.hx` — 199 lignes — 1 blocs doc — contient du `#if`
- Types : `typedef TabViewData`, `typedef ViewData`, `class HuiTabViewContainer`
- Héritage : `HuiTabViewContainer` extends `HuiTabContainer`
- Dépend de : `hide.Ide`, `hrt.ui.HuiElement`, `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiMenu`, `hrt.ui.HuiTab`, `hrt.ui.HuiTabContainer` (extends/use), `hrt.ui.HuiText`, `hrt.ui.HuiView`
- Utilisé par : `hide.HideProjectConfig`, `hide.Ide`

## hrt.ui.HuiText

- Fichier : `hrt/ui/HuiText.hx` — 152 lignes — 3 blocs doc — contient du `#if`
- Types : `class HuiTextInternal`, `class HuiText`, `class BreakAllCharset`
- Héritage : `HuiTextInternal` extends `h2d.HtmlText`, `HuiText` extends `HuiElement`, `BreakAllCharset` extends `hxd.Charset`
- Dépend de : `hrt.ui.HuiBase`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiRes`
- Utilisé par : `hide.kit.Button`, `hide.kit.Element`, `hide.kit.Line`, `hide.kit.SliderGroup`, `hide.kit.Text`, `hide.kit.Widget`, `hide.view.Model`, `hide.view.Texture`, `hide.view.Timeline`, `hide.view.VirtualListTest`, `hrt.ui.HuiCdbInspector`, `hrt.ui.HuiCdbTable`, `hrt.ui.HuiCodeEditor`, `hrt.ui.HuiConfirmPopup`, `hrt.ui.HuiCurveBox`, `hrt.ui.HuiElement`, `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiLodLine`, `hrt.ui.HuiMenu`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiTextInput`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiTextInput

- Fichier : `hrt/ui/HuiTextInput.hx` — 72 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiTextInput`
- Héritage : `HuiTextInput` extends `h2d.TextInput`, `HuiTextInput` implements `h2d.domkit.Object`
- Dépend de : `hrt.ui.HuiText`
- Utilisé par : `hide.view.Timeline`

## hrt.ui.HuiTextureChoice

- Fichier : `hrt/ui/HuiTextureChoice.hx` — 96 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiTextureChoice`
- Héritage : `HuiTextureChoice` extends `HuiElement`
- Dépend de : `hide.kit.File`, `hrt.impl.Gradient` (import/use), `hrt.impl.TextureType` (import/use), `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`
- Utilisé par : `hide.kit.Texture`

## hrt.ui.HuiToast

- Fichier : `hrt/ui/HuiToast.hx` — 74 lignes — 0 blocs doc — contient du `#if`
- Types : `enum ToastKind`, `class HuiToast`
- Héritage : `HuiToast` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hrt.ui.HuiMainLayout`

## hrt.ui.HuiToggle

- Fichier : `hrt/ui/HuiToggle.hx` — 22 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiToggle`
- Héritage : `HuiToggle` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.Texture`

## hrt.ui.HuiToolbar

- Fichier : `hrt/ui/HuiToolbar.hx` — 816 lignes — 2 blocs doc — contient du `#if`
- Types : `class HuiToolbar`, `class HuiTransformWidgets`, `class HuiSnapWidget`, `class HuiVisibilityWidget`, `class HuiVisibilitySettingsPopup`, `class HuiSceneFiltersWidget`, `class HuiSceneFiltersPopup`, `class HuiRenderProfileWidget`, `class HuiRenderProfilePopup`, `class HuiViewModesWidget`, `class HuiViewModesPopup`, `class HuiCameraSettingsPopup`, `class HuiGridSettingsPopup`, `class HuiHelpPopup`, `class HuiSplitterDirectionWidget`
- Héritage : `HuiToolbar` extends `HuiElement`, `HuiTransformWidgets` extends `HuiElement`, `HuiSnapWidget` extends `HuiElement`, `HuiVisibilityWidget` extends `HuiElement`, `HuiVisibilitySettingsPopup` extends `HuiPopup`, `HuiSceneFiltersWidget` extends `HuiElement`, `HuiSceneFiltersPopup` extends `HuiPopup`, `HuiRenderProfileWidget` extends `HuiElement`, `HuiRenderProfilePopup` extends `HuiPopup`, `HuiViewModesWidget` extends `HuiElement`, `HuiViewModesPopup` extends `HuiPopup`, `HuiCameraSettingsPopup` extends `HuiPopup`, `HuiGridSettingsPopup` extends `HuiPopup`, `HuiHelpPopup` extends `HuiPopup`, `HuiSplitterDirectionWidget` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.view.Prefab`, `hrt.tools.Gizmo`, `hrt.ui.HuiCheckbox`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiPopup` (extends/use), `hrt.ui.HuiRes`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiText`, `hrt.ui.HuiView`
- Utilisé par : `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiView`

## hrt.ui.HuiTree

- Fichier : `hrt/ui/HuiTree.hx` — 944 lignes — 26 blocs doc — contient du `#if`
- Types : `enum DropFlag`, `typedef DropFlags`, `enum DropOperation`, `enum RefreshFlag`, `typedef RefreshFlags`, `enum FilterFlag`, `typedef FilterFlags`, `typedef TreeItemData`, `typedef TreeButton`, `typedef SelectionRange`, `class HuiTree`
- Héritage : `HuiTree` extends `HuiElement`
- Dépend de : `hide.Search`, `hrt.tools.MapUtils`, `hrt.ui.HuiCommands`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiIcon`, `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`, `hrt.ui.HuiTreeLine` (import/use)
- Utilisé par : `hide.view.Prefab`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiTreeLine`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiTreeLine

- Fichier : `hrt/ui/HuiTreeLine.hx` — 169 lignes — 0 blocs doc — contient du `#if`
- Types : `class HuiTreeLine`
- Héritage : `HuiTreeLine` extends `HuiElement`
- Dépend de : `hide.Search`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiTree` (import/use)
- Utilisé par : `hrt.ui.HuiTree`

## hrt.ui.HuiView

- Fichier : `hrt/ui/HuiView.hx` — 218 lignes — 6 blocs doc — contient du `#if`
- Types : `class HuiView`, `class HuiSuppressedErrorsWarning`
- Héritage : `HuiView` extends `HuiElement`, `HuiSuppressedErrorsWarning` extends `HuiElement`
- Dépend de : `hide.App`, `hide.Ide`, `hrt.tools.Undo`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiErrorDisplay`, `hrt.ui.HuiMenu`, `hrt.ui.HuiToolbar`
- Utilisé par : `hide.Ide`, `hide.view.FileBrowser`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.Texture`, `hide.view.Timeline`, `hide.view.VirtualListTest`, `hrt.ui.HuiBase`, `hrt.ui.HuiElement`, `hrt.ui.HuiTabContainer`, `hrt.ui.HuiTabViewContainer`, `hrt.ui.HuiToolbar`, `hrt.ui.HuiViewGym`, `hrt.ui.hide.HuiViewTest`, `hrt.ui.tests.HuiPrefabEditorTests`

## hrt.ui.HuiViewGym

- Fichier : `hrt/ui/HuiViewGym.hx` — 948 lignes — 0 blocs doc — contient du `#if`
- Types : `typedef TreeItem`, `class HuiViewGym`, `class GymWidgets`, `class GymIcons`, `class GymLayouts`, `class GymSearch`, `class GymHuiBackground`, `class GymHuiSdf`, `class GymHuiDragAndDrop`, `class GymHuiCdb`
- Héritage : `HuiViewGym` extends `HuiView`, `GymWidgets` extends `HuiElement`, `GymIcons` extends `HuiElement`, `GymLayouts` extends `HuiElement`, `GymSearch` extends `HuiElement`, `GymHuiBackground` extends `HuiElement`, `GymHuiSdf` extends `HuiElement`, `GymHuiDragAndDrop` extends `HuiElement`, `GymHuiCdb` extends `HuiElement`
- Dépend de : `hide.Ide`, `hide.Search`, `hrt.ui.HuiCommands`, `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiRes`, `hrt.ui.HuiText`, `hrt.ui.HuiTree`, `hrt.ui.HuiView` (extends/use), `hrt.ui.HuiVirtualGrid`
- Utilisé par : `hrt.ui.HuiMainLayout`

## hrt.ui.HuiVirtualGrid

- Fichier : `hrt/ui/HuiVirtualGrid.hx` — 123 lignes — 3 blocs doc — contient du `#if`
- Types : `class HuiVirtualGrid`, `class HuiVirtualGridRow`, `class HuiVirtualGridCell`
- Héritage : `HuiVirtualGrid` extends `HuiElement`, `HuiVirtualGridRow` extends `HuiElement`, `HuiVirtualGridCell` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use), `hrt.ui.HuiVirtualList`
- Utilisé par : `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiViewGym`

## hrt.ui.HuiVirtualList

- Fichier : `hrt/ui/HuiVirtualList.hx` — 362 lignes — 4 blocs doc — contient du `#if`
- Types : `enum ScrollRequest`, `class HuiVirtualList`
- Héritage : `HuiVirtualList` extends `HuiElement`
- Dépend de : `hrt.ui.HuiElement` (extends/use)
- Utilisé par : `hide.view.VirtualListTest`, `hrt.ui.HuiVirtualGrid`
