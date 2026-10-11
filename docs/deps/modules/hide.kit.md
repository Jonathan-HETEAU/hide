# Package `hide.kit`

[← retour](../DEPENDENCIES.md)

## hide.kit.Bitflag

- Fichier : `hide/kit/Bitflag.hx` — 87 lignes — 2 blocs doc — contient du `#if`
- Types : `class Bitflag`
- Héritage : `Bitflag` extends `Widget`
- Dépend de : `hide.kit.Element`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiCheckbox`

## hide.kit.Block

- Fichier : `hide/kit/Block.hx` — 22 lignes — 1 blocs doc — contient du `#if`
- Types : `class Block`
- Héritage : `Block` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hide.kit.NativeElement`
- Utilisé par : `hide.kit.Element`

## hide.kit.Button

- Fichier : `hide/kit/Button.hx` — 137 lignes — 11 blocs doc — contient du `#if`
- Types : `class Button`
- Héritage : `Button` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hide.kit.NativeElement`, `hrt.ui.HuiButton`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.ImageButton`, `hrt.prefab.Material`, `hrt.prefab.fx.Emitter`, `hrt.prefab.l3d.KitTest`

## hide.kit.CDB

- Fichier : `hide/kit/CDB.hx` — 111 lignes — 2 blocs doc — contient du `#if`
- Types : `class CDB`
- Héritage : `CDB` extends `Element`
- Dépend de : `hide.Element`, `hide.comp.DetachablePanel`, `hide.comp.SceneEditor`, `hide.comp.cdb.DataFiles` (import/use), `hide.comp.cdb.ObjEditor`, `hide.kit.Category`, `hide.kit.Element` (extends/use), `hide.kit.NativeElement`, `hide.kit.Select`, `hide.prefab.EditContext`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.ui.HuiCdbInspector`
- Utilisé par : `hide.kit.KitRoot`

## hide.kit.Category

- Fichier : `hide/kit/Category.hx` — 197 lignes — 4 blocs doc — contient du `#if`
- Types : `class Category`
- Héritage : `Category` extends `Widget`
- Dépend de : `hide.Element`, `hide.kit.Element`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiCategory`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.kit.CDB`, `hrt.prefab.fx.Emitter`

## hide.kit.Checkbox

- Fichier : `hide/kit/Checkbox.hx` — 68 lignes — 1 blocs doc — contient du `#if`
- Types : `class Checkbox`
- Héritage : `Checkbox` extends `Widget`
- Dépend de : `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiCheckbox`
- Utilisé par : `hide.kit.Element`

## hide.kit.Color

- Fichier : `hide/kit/Color.hx` — 124 lignes — 4 blocs doc — contient du `#if`
- Types : `class Color`
- Héritage : `Color` extends `Widget`
- Dépend de : `hide.comp.ColorPicker`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.impl.ColorSpace`, `hrt.ui.HuiColorBox`
- Utilisé par : `hide.kit.Element`

## hide.kit.Curve

- Fichier : `hide/kit/Curve.hx` — 60 lignes — 3 blocs doc — contient du `#if`
- Types : `class Curve`
- Héritage : `Curve` extends `Element`
- Dépend de : `hide.Element`, `hide.comp.CurveEditor`, `hide.comp.ResizeObserver`, `hide.kit.Element` (extends/use), `hide.kit.NativeElement`, `hide.prefab.EditContext`, `hrt.prefab.Curve`, `hrt.ui.HuiCurveBox`

## hide.kit.Element

- Fichier : `hide/kit/Element.hx` — 809 lignes — 44 blocs doc — contient du `#if`
- Types : `typedef ChangeParams`, `class Element`
- Dépend de : `hide.Ide`, `hide.comp.ContextMenu`, `hide.kit.Block`, `hide.kit.Checkbox`, `hide.kit.Color`, `hide.kit.File`, `hide.kit.Gradient`, `hide.kit.Input`, `hide.kit.KitColor`, `hide.kit.KitRoot`, `hide.kit.Line`, `hide.kit.Macros`, `hide.kit.NativeElement`, `hide.kit.Select`, `hide.kit.Slider`, `hide.kit.Text`, `hide.kit.Texture`, `hide.kit.Widget`, `hrt.prefab.EditContext2`, `hrt.prefab.Props`, `hrt.ui.HuiElement`, `hrt.ui.HuiLine`, `hrt.ui.HuiMenu`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Bitflag`, `hide.kit.Block`, `hide.kit.Button`, `hide.kit.CDB`, `hide.kit.Category`, `hide.kit.Curve`, `hide.kit.ImageButton`, `hide.kit.KitRoot`, `hide.kit.Line`, `hide.kit.List`, `hide.kit.Matlib`, `hide.kit.Range`, `hide.kit.Select`, `hide.kit.Separator`, `hide.kit.Spacer`, `hide.kit.Text`, `hide.kit.Widget`, `hide.prefab.propsEditor.AnyPropsEditor`, `hide.prefab.propsEditor.Material`, `hide.prefab.propsEditor.PbrMaterial`, `hide.prefab.propsEditor.PbrRenderer`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.l3d.HeightMap`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.Polygon`

## hide.kit.File

- Fichier : `hide/kit/File.hx` — 89 lignes — 4 blocs doc — contient du `#if`
- Types : `class File`
- Héritage : `File` extends `Widget`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.FileSelect2`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiFilePicker`
- Utilisé par : `hide.kit.Element`, `hrt.ui.HuiTextureChoice`

## hide.kit.Gradient

- Fichier : `hide/kit/Gradient.hx` — 81 lignes — 1 blocs doc — contient du `#if`
- Types : `class Gradient`
- Héritage : `Gradient` extends `Widget`
- Dépend de : `hide.comp.GradientEditor`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.impl.Gradient`, `hrt.impl.TextureType`, `hrt.prefab.Diff`, `hrt.ui.HuiGradientBox`
- Utilisé par : `hide.kit.Element`

## hide.kit.ImageButton

- Fichier : `hide/kit/ImageButton.hx` — 18 lignes — 2 blocs doc — contient du `#if`
- Types : `class ImageButton`
- Héritage : `ImageButton` extends `Button`
- Dépend de : `hide.kit.Button` (extends/use), `hide.kit.Element`

## hide.kit.Input

- Fichier : `hide/kit/Input.hx` — 97 lignes — 2 blocs doc — contient du `#if`
- Types : `class Input`
- Héritage : `Input` extends `Widget`
- Dépend de : `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiInputBox`
- Utilisé par : `hide.kit.Element`

## hide.kit.KitColor

- Fichier : `hide/kit/KitColor.hx` — 40 lignes — 9 blocs doc
- Types : `enum KitColor`
- Utilisé par : `hide.kit.Element`, `hide.kit.Text`, `hide.kit.Widget`

## hide.kit.KitRoot

- Fichier : `hide/kit/KitRoot.hx` — 199 lignes — 9 blocs doc — contient du `#if`
- Types : `class KitRoot`
- Dépend de : `hide.Element`, `hide.kit.CDB`, `hide.kit.Element`, `hrt.prefab.Diff`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.ui.HuiElement`
- Utilisé par : `hide.comp.SceneEditor`, `hide.kit.Element`, `hide.view.Prefab`, `hrt.prefab.EditContext2`, `hrt.ui.HuiSceneEditor`

## hide.kit.Line

- Fichier : `hide/kit/Line.hx` — 92 lignes — 7 blocs doc — contient du `#if`
- Types : `class Line`
- Héritage : `Line` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hide.kit.NativeElement`, `hrt.ui.HuiLine`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Element`, `hide.kit.List`, `hide.kit.SliderGroup`, `hide.kit.Widget`, `hrt.prefab.fx.Emitter`

## hide.kit.List

- Fichier : `hide/kit/List.hx` — 401 lignes — 7 blocs doc — contient du `#if`
- Types : `class List`, `class KitListHeader`
- Héritage : `List` extends `Widget`, `KitListHeader` extends `hide.kit.Line`
- Dépend de : `hide.Element`, `hide.comp.FancyArray`, `hide.kit.Element`, `hide.kit.Line` (extends/use), `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hide.view.Prefab`, `hrt.prefab.Diff`, `hrt.ui.HuiListEditor`
- Utilisé par : `hrt.prefab.l3d.Polygon`

## hide.kit.Macros

- Fichier : `hide/kit/Macros.hx` — 674 lignes — 14 blocs doc — contient du `#if`
- Types : `typedef BuildExprArgs`, `class Macros`
- Utilisé par : `hide.kit.Element`, `hrt.prefab.EditContext2`, `hrt.prefab.fx.Emitter`, `hrt.prefab.l3d.KitTest`

## hide.kit.Matlib

- Fichier : `hide/kit/Matlib.hx` — 131 lignes — 2 blocs doc — contient du `#if`
- Types : `class Matlib`
- Héritage : `Matlib` extends `Widget`
- Dépend de : `hide.kit.Element`, `hide.kit.NativeElement`, `hide.kit.Select`, `hide.kit.Widget` (extends/use), `hrt.prefab.Material`, `hrt.ui.HuiElement`

## hide.kit.NativeElement

- Fichier : `hide/kit/NativeElement.hx` — 69 lignes — 7 blocs doc — contient du `#if`
- Types : `typedef NativeElementType`, `abstract NativeElement`
- Dépend de : `hrt.ui.HuiElement`
- Utilisé par : `hide.kit.Bitflag`, `hide.kit.Block`, `hide.kit.Button`, `hide.kit.CDB`, `hide.kit.Checkbox`, `hide.kit.Color`, `hide.kit.Curve`, `hide.kit.Element`, `hide.kit.File`, `hide.kit.Gradient`, `hide.kit.Input`, `hide.kit.Line`, `hide.kit.List`, `hide.kit.Matlib`, `hide.kit.Object3dRef`, `hide.kit.Select`, `hide.kit.Slider`, `hide.kit.SliderGroup`, `hide.kit.Text`, `hide.kit.Texture`, `hide.kit.Widget`

## hide.kit.Object3dRef

- Fichier : `hide/kit/Object3dRef.hx` — 255 lignes — 4 blocs doc — contient du `#if`
- Types : `class Object3dRef`
- Héritage : `Object3dRef` extends `Widget`
- Dépend de : `hide.Ide`, `hide.comp.ContextMenu`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hide.tools.DragAndDrop`, `hide.view.Prefab`, `hrt.prefab.Prefab`, `hrt.ui.HuiDragOp`, `hrt.ui.HuiDropOverlay`, `hrt.ui.HuiMenu`, `hrt.ui.HuiSelect`

## hide.kit.Range

- Fichier : `hide/kit/Range.hx` — 20 lignes — 2 blocs doc — contient du `#if`
- Types : `class Range`
- Héritage : `Range` extends `Slider`
- Dépend de : `hide.kit.Element`, `hide.kit.Slider` (extends/use)

## hide.kit.Select

- Fichier : `hide/kit/Select.hx` — 151 lignes — 10 blocs doc — contient du `#if`
- Types : `typedef SelectEntry`, `abstract EntriesOrStrings`, `class Select`
- Héritage : `Select` extends `Widget`
- Dépend de : `hide.comp.ContextMenu`, `hide.kit.Element`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiMenu`, `hrt.ui.HuiSelect`
- Utilisé par : `hide.kit.CDB`, `hide.kit.Element`, `hide.kit.Matlib`, `hide.prefab.propsEditor.PbrMaterial`, `hrt.prefab.Model`, `hrt.prefab.Shader`, `hrt.prefab.l3d.KitTest`

## hide.kit.Separator

- Fichier : `hide/kit/Separator.hx` — 20 lignes — 1 blocs doc — contient du `#if`
- Types : `class Separator`
- Héritage : `Separator` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hrt.ui.HuiSeparator`

## hide.kit.Slider

- Fichier : `hide/kit/Slider.hx` — 413 lignes — 10 blocs doc — contient du `#if`
- Types : `class Slider`
- Héritage : `Slider` extends `Widget`
- Dépend de : `hide.kit.NativeElement`, `hide.kit.SliderGroup`, `hide.kit.Widget` (extends/use), `hrt.ui.HuiSlider`
- Utilisé par : `hide.kit.Element`, `hide.kit.Range`, `hrt.prefab.fx.Emitter`, `hrt.prefab.l3d.KitTest`, `hrt.prefab.l3d.Layers2D`

## hide.kit.SliderGroup

- Fichier : `hide/kit/SliderGroup.hx` — 106 lignes — 2 blocs doc — contient du `#if`
- Types : `class SliderGroup`
- Héritage : `SliderGroup` extends `Line`
- Dépend de : `hide.Element`, `hide.kit.Line` (extends/use), `hide.kit.NativeElement`, `hrt.ui.HuiElement`, `hrt.ui.HuiLine`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Slider`

## hide.kit.Spacer

- Fichier : `hide/kit/Spacer.hx` — 20 lignes — 1 blocs doc — contient du `#if`
- Types : `class Spacer`
- Héritage : `Spacer` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hrt.ui.HuiSpacer`

## hide.kit.Text

- Fichier : `hide/kit/Text.hx` — 65 lignes — 4 blocs doc — contient du `#if`
- Types : `class Text`
- Héritage : `Text` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hide.kit.KitColor`, `hide.kit.NativeElement`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Element`

## hide.kit.Texture

- Fichier : `hide/kit/Texture.hx` — 60 lignes — 1 blocs doc — contient du `#if`
- Types : `class Texture`
- Héritage : `Texture` extends `Widget`
- Dépend de : `hide.comp.TextureChoice2`, `hide.kit.NativeElement`, `hide.kit.Widget` (extends/use), `hrt.impl.TextureType`, `hrt.ui.HuiTextureChoice`
- Utilisé par : `hide.kit.Element`

## hide.kit.Widget

- Fichier : `hide/kit/Widget.hx` — 284 lignes — 16 blocs doc — contient du `#if`
- Types : `class Widget`
- Héritage : `Widget` extends `Element`
- Dépend de : `hide.kit.Element` (extends/use), `hide.kit.KitColor`, `hide.kit.Line`, `hide.kit.NativeElement`, `hrt.prefab.Diff`, `hrt.ui.HuiText`
- Utilisé par : `hide.kit.Bitflag`, `hide.kit.Category`, `hide.kit.Checkbox`, `hide.kit.Color`, `hide.kit.Element`, `hide.kit.File`, `hide.kit.Gradient`, `hide.kit.Input`, `hide.kit.List`, `hide.kit.Matlib`, `hide.kit.Object3dRef`, `hide.kit.Select`, `hide.kit.Slider`, `hide.kit.Texture`, `hrt.prefab.Material`
