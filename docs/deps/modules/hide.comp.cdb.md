# Package `hide.comp.cdb`

[← retour](../DEPENDENCIES.md)

## hide.comp.cdb.Cell

- Fichier : `hide_js/hide/comp/cdb/Cell.hx` — 2523 lignes — 28 blocs doc — contient du `#if`
- Types : `class Cell`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.ContextMenu`, `hide.comp.ScriptEditor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.Line`, `hide.comp.cdb.Table`, `hide.tools.Extensions` (using), `hide.tools.IdeData`, `hide.view.RemoteConsoleView`, `hrt.prefab.Curve`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.cdb.Cursor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.Line`, `hide.comp.cdb.ModalColumnForm`, `hide.comp.cdb.SubTable`, `hide.comp.cdb.Table`, `hide.view.CdbTable`

## hide.comp.cdb.Cursor

- Fichier : `hide_js/hide/comp/cdb/Cursor.hx` — 696 lignes — 44 blocs doc
- Types : `typedef Selection`, `typedef CursorState`, `class Cursor`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`, `hide.comp.cdb.SubTable`, `hide.comp.cdb.Table`
- Utilisé par : `hide.comp.cdb.Editor`

## hide.comp.cdb.DataFiles

- Fichier : `hide/comp/cdb/DataFiles.hx` — 938 lignes — 16 blocs doc — contient du `#if`
- Types : `typedef DataProps`, `typedef DataDef`, `class DataFiles`
- Dépend de : `hide.Ide`, `hide.comp.cdb.Editor`, `hide.view.Prefab`, `hrt.prefab.Prefab`
- Utilisé par : `hide.comp.SceneEditor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.ObjEditor`, `hide.kit.CDB`, `hide.tools.IdeData`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.l3d.Instance`

## hide.comp.cdb.Editor

- Fichier : `hide_js/hide/comp/cdb/Editor.hx` — 2973 lignes — 78 blocs doc — contient du `#if`
- Types : `enum Direction`, `typedef UndoSheet`, `typedef UndoState`, `typedef EditorApi`, `typedef EditorColumnProps`, `typedef EditorSheetProps`, `typedef OptionalBackup`, `enum FilterFlag`, `typedef FilterFlags`, `class Editor`
- Héritage : `Editor` extends `Component`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Extension`, `hide.Ide`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.GlobalSeek`, `hide.comp.GradientEditor`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.Line`, `hide.comp.cdb.ModalColumnForm`, `hide.comp.cdb.Separator`, `hide.comp.cdb.SubTable`, `hide.comp.cdb.Table`, `hide.tools.Extensions` (using), `hide.ui.Keys`, `hide.ui.UndoHistory`, `hide.view.CdbFavorites`, `hide.view.CdbTable`, `hide.view.RefViewer`, `hide.view.RemoteConsoleView`, `hide.view.Script`, `hrt.prefab.Prefab`, `hrt.tools.CdbUtils` (import/use), `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.ModalColumnForm`, `hide.comp.cdb.ObjEditor`, `hide.comp.cdb.Table`, `hide.tools.IdeData`, `hide.view.CdbTable`

## hide.comp.cdb.Formulas

- Fichier : `hide_js/hide/comp/cdb/Formulas.hx` — 540 lignes — 35 blocs doc — contient du `#if`
- Types : `typedef Formula`, `enum ValidationResult`, `typedef ValidationFunction`, `class SheetAccess`, `class Formulas`, `class FormulasView`
- Héritage : `FormulasView` extends `hide.view.Script`
- Dépend de : `hide.Ide`, `hide.comp.ScriptEditor`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.ui.View`, `hide.view.Script` (extends/use)
- Utilisé par : `hide.comp.ScriptEditor`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`

## hide.comp.cdb.Line

- Fichier : `hide_js/hide/comp/cdb/Line.hx` — 218 lignes — 19 blocs doc — contient du `#if`
- Types : `class Line`
- Héritage : `Line` extends `Component`
- Dépend de : `hide.comp.Component` (extends/use), `hide.comp.cdb.Cell`, `hide.comp.cdb.Formulas`, `hide.comp.cdb.SubTable`, `hide.comp.cdb.Table`
- Utilisé par : `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.ObjEditor`, `hide.comp.cdb.ScriptTable`, `hide.comp.cdb.Table`

## hide.comp.cdb.ModalColumnForm

- Fichier : `hide_js/hide/comp/cdb/ModalColumnForm.hx` — 577 lignes — 6 blocs doc
- Types : `class ModalColumnForm`
- Héritage : `ModalColumnForm` extends `Modal`
- Dépend de : `hide.Element`, `hide.comp.Modal` (extends/use), `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.tools.Extensions` (using)
- Utilisé par : `hide.comp.cdb.Editor`

## hide.comp.cdb.ObjEditor

- Fichier : `hide_js/hide/comp/cdb/ObjEditor.hx` — 118 lignes — 4 blocs doc
- Types : `class ObjEditor`
- Héritage : `ObjEditor` extends `Editor`
- Dépend de : `hide.Element`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Editor` (extends/use), `hide.comp.cdb.Line`, `hide.view.FileView`
- Utilisé par : `hide.comp.SceneEditor`, `hide.comp.cdb.ScriptTable`, `hide.kit.CDB`

## hide.comp.cdb.ScriptTable

- Fichier : `hide_js/hide/comp/cdb/ScriptTable.hx` — 80 lignes — 1 blocs doc
- Types : `class ScriptTable`
- Héritage : `ScriptTable` extends `SubTable`
- Dépend de : `hide.comp.ScriptEditor`, `hide.comp.cdb.Line`, `hide.comp.cdb.ObjEditor`, `hide.comp.cdb.SubTable` (extends/use)
- Utilisé par : `hide.view.CdbTable`

## hide.comp.cdb.Separator

- Fichier : `hide_js/hide/comp/cdb/Separator.hx` — 395 lignes — 16 blocs doc — contient du `#if`
- Types : `class Separator`
- Héritage : `Separator` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ContextMenu`, `hide.comp.cdb.Table`, `hrt.ui.HuiMenu`
- Utilisé par : `hide.comp.cdb.Editor`, `hide.comp.cdb.Table`

## hide.comp.cdb.SubTable

- Fichier : `hide_js/hide/comp/cdb/SubTable.hx` — 195 lignes — 6 blocs doc
- Types : `class SubTable`
- Héritage : `SubTable` extends `Table`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Table` (extends/use)
- Utilisé par : `hide.comp.cdb.Cursor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`, `hide.comp.cdb.ScriptTable`, `hide.comp.cdb.Table`

## hide.comp.cdb.Table

- Fichier : `hide_js/hide/comp/cdb/Table.hx` — 910 lignes — 37 blocs doc — contient du `#if`
- Types : `enum DisplayMode`, `class Table`
- Héritage : `Table` extends `Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use), `hide.comp.ResizeObserver`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`, `hide.comp.cdb.Separator`, `hide.comp.cdb.SubTable`, `hide.ui.QueryHelper` (import)
- Utilisé par : `hide.comp.cdb.Cell`, `hide.comp.cdb.Cursor`, `hide.comp.cdb.Editor`, `hide.comp.cdb.Line`, `hide.comp.cdb.Separator`, `hide.comp.cdb.SubTable`
