# Package `hide.ui`

[← retour](../DEPENDENCIES.md)

## hide.ui.Keys

- Fichier : `hide_js/hide/ui/Keys.hx` — 219 lignes — 19 blocs doc
- Types : `typedef EntryDoc`, `typedef Entry`, `class Keys`
- Dépend de : `hide.Config`, `hide.Element`
- Utilisé par : `hide.comp.FancyTree`, `hide.comp.GradientEditor`, `hide.comp.Toolbar`, `hide.comp.cdb.Editor`, `hide.ui.View`, `hide.view.GraphEditor`

## hide.ui.Menu

- Fichier : `hide_js/hide/ui/Menu.hx` — 65 lignes — 3 blocs doc
- Types : `class Menu`
- Dépend de : `hide.Element`

## hide.ui.QueryHelper

- Fichier : `hide_js/hide/ui/QueryHelper.hx` — 13 lignes — 2 blocs doc — contient du `#if`
- Dépend de : `hide.Element`
- Utilisé par : `hide.comp.cdb.Table`

## hide.ui.UndoHistory

- Fichier : `hide_js/hide/ui/UndoHistory.hx` — 125 lignes — 14 blocs doc
- Types : `enum HistoryElement`, `typedef Elt`, `class UndoHistory`
- Utilisé par : `hide.comp.CurveEditor`, `hide.comp.PropsEditor`, `hide.comp.Range`, `hide.comp.SceneEditor`, `hide.comp.cdb.Editor`, `hide.prefab.EditContext`, `hide.prefab.PolygonEditor`, `hide.prefab.terrain.TerrainEditor`, `hide.ui.View`, `hide.view.GenericGraphEditor`, `hide.view.GraphInterface`, `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hide.view.shadereditor.ShaderEditor`, `hide.view.textureeditor.TextureEditor`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.MeshGenerator`, `hrt.prefab.l3d.Spray`

## hide.ui.View

- Fichier : `hide_js/hide/ui/View.hx` — 481 lignes — 42 blocs doc — contient du `#if`
- Types : `enum_abstract DisplayPosition`, `typedef ViewOptions`, `class View`
- Héritage : `View` extends `hide.comp.Component`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.Scene`, `hide.ui.Keys`, `hide.ui.UndoHistory`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.Extension`, `hide.comp.cdb.Formulas`, `hide.view.About`, `hide.view.CdbCustomTypes`, `hide.view.CdbFavorites`, `hide.view.CdbTable`, `hide.view.DevTools`, `hide.view.DomkitStudio`, `hide.view.FileView`, `hide.view.Gym`, `hide.view.MemProfiler`, `hide.view.RefViewer`, `hide.view.RemoteConsoleView`, `hide.view.Unknown`, `hide.view.settings.ProjectSettings`, `hide.view.settings.Settings`, `hide.view.settings.UserSettings`
