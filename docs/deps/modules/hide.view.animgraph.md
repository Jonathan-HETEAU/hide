# Package `hide.view.animgraph`

[← retour](../DEPENDENCIES.md)

## hide.view.animgraph.AnimGraphEditor

- Fichier : `hide_js/hide/view/animgraph/AnimGraphEditor.hx` — 634 lignes — 13 blocs doc
- Types : `class AnimGraphEditorPreviewState`, `class AnimGraphEditor`
- Héritage : `AnimGraphEditor` extends `GenericGraphEditor`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.Ide`, `hide.comp.Button`, `hide.comp.ContextMenu`, `hide.comp.FancyArray`, `hide.comp.Range`, `hide.comp.Scene`, `hide.ui.UndoHistory`, `hide.view.GenericGraphEditor` (extends/use), `hide.view.GraphInterface` (import/use), `hide.view.animgraph.AnimList`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.BlendSpace2D`, `hrt.animgraph.nodes.FloatParameter`, `hrt.animgraph.nodes.Input`, `hrt.animgraph.nodes.Output`, `hrt.prefab.Macros`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.view.animgraph.BlendSpace2DEditor`, `hrt.animgraph.Node`

## hide.view.animgraph.AnimList

- Fichier : `hide_js/hide/view/animgraph/AnimList.hx` — 63 lignes — 4 blocs doc
- Types : `class AnimList`
- Héritage : `AnimList` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hide.view.animgraph.BlendSpace2DEditor`

## hide.view.animgraph.AnimPicker

- Fichier : `hide_js/hide/view/animgraph/AnimPicker.hx` — 88 lignes — 3 blocs doc
- Types : `class AnimPicker`
- Héritage : `AnimPicker` extends `hide.comp.Component`
- Dépend de : `hide.comp.Button`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.ui.UndoHistory`, `hide.view.animgraph.AnimList`, `hrt.animgraph.AnimGraph`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.view.animgraph.BlendSpace2DEditor`, `hrt.animgraph.nodes.Input`

## hide.view.animgraph.BlendSpace2DEditor

- Fichier : `hide_js/hide/view/animgraph/BlendSpace2DEditor.hx` — 723 lignes — 5 blocs doc
- Types : `class BlendSpacePreviewState`, `class BlendSpace2DEditor`
- Héritage : `BlendSpace2DEditor` extends `hide.view.FileView`
- Dépend de : `hide.Element`, `hide.Extension`, `hide.Ide`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hide.comp.ResizablePanel`, `hide.comp.SVG`, `hide.comp.ScenePreview`, `hide.tools.DragAndDrop`, `hide.tools.FileManager`, `hide.view.FileView` (extends/use), `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimList`, `hide.view.animgraph.AnimPicker`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.BlendSpace2D`, `hrt.prefab.Macros`, `hrt.prefab.Model`, `hrt.ui.HuiMenu`
