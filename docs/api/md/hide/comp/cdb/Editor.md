# hide.comp.cdb.Editor

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Editor.hx`](../../../../../../hide_js/hide/comp/cdb/Editor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../Component.md)

Subclasses: [`hide.comp.cdb.ObjEditor`](ObjEditor.md)

The CastleDB editor component: shows and edits a sheet of the database, with cursor, undo, clipboard, search and filters.

## Constructor

### new

```haxe
function new(config:hide.Config, api:EditorApi, ?cdbTable:hide.view.CdbTable):Void
```

Creates an editor with a config and a data access.

## Static variables

### inRefreshAll

```haxe
static var inRefreshAll(default, null):Bool
```

True while `refreshAll` runs.

## Static methods

### cleanupOptionalLines

```haxe
static function cleanupOptionalLines(lines:Array<Dynamic>, sheet:cdb.Sheet, optionalBackup:OptionalBackup):Void
```

Recursively removes empty list/properties from the optional columns of `sheet` in the given `lines` objects.
A record of the removed items are stored in `optionalBackup` so they can be restored later using `restoreOptionals()`.

### restoreOptionals

```haxe
static function restoreOptionals(optionalBackup:OptionalBackup):Void
```

Restores the values removed by `cleanupOptionalLines`.

### refreshAll

```haxe
static function refreshAll(?eraseUndo:Bool = false, ?loadDataFiles:Bool = true):Void
```

Refreshes all the CDB editors. `eraseUndo` prevents undoing over the changes.

### splitPath

```haxe
static function splitPath(rs:cdb.Reference):{ pathParts:Array<hrt.tools.PathPart>, pathNames:Array<String> }
```

Splits a reference path, see `hrt.tools.CdbUtils.splitPath`.

### openReference2

```haxe
static function openReference2(rootSheet:cdb.Sheet, path:hrt.tools.Path):Void
```

Opens a CDB table view at a path.

### getColumnProps

```haxe
static function getColumnProps(c:cdb.Column):EditorColumnProps
```

Returns the editor properties of a column.

### getSheetProps

```haxe
static function getSheetProps(s:cdb.Sheet):EditorSheetProps
```

Returns the editor properties of a sheet.

### getCategories

```haxe
static function getCategories(db:cdb.Database):Array<String>
```

Returns the categories used by the sheets and columns of a database.

## Variables

### view

```haxe
var view:cdb.ConfigView
```

The config view restricting what can be edited, or null.

### config

```haxe
var config:hide.Config
```

The config of the editor.

### cursor

```haxe
var cursor:Cursor
```

The cursor of the editor.

### keys

```haxe
var keys:hide.ui.Keys
```

The keyboard shortcuts of the editor.

### undo

```haxe
var undo:hide.ui.UndoHistory
```

The undo history.

### formulas

```haxe
var formulas:Formulas
```

The formulas of the database.

### showGUIDs

```haxe
var showGUIDs:Bool
```

Shows the GUID columns.

### gradientEditor

```haxe
var gradientEditor:hide.comp.GradientEditor
```

The gradient editor in use, or null.

## Methods

### getCurrentSheet

```haxe
function getCurrentSheet():Null<Null<String>>
```

Returns the name of the current sheet.

### show

```haxe
function show(sheet:cdb.Sheet, ?parent:Null<hide.Element>):Void
```

Shows a sheet, in `parent` if set.

### onScriptCtrlS

```haxe
dynamic function onScriptCtrlS():Void
```

Called on Ctrl+S in a script cell.

### updateFilters

```haxe
function updateFilters():Void
```

Applies the search filters to the lines of the current sheet.

### changeObject

```haxe
function changeObject(line:Line, column:cdb.Column, value:Dynamic):Void
```

Sets the value of a column of a line, as an undoable change. A null value restores the formula.

### beginChanges

```haxe
function beginChanges(?structure:Bool):Void
```

Call before modifying the database, allow to group several changes together.
Allow recursion, only last endChanges() will trigger db save and undo point creation.

### endChanges

```haxe
function endChanges():Void
```

Call when changes are done, after endChanges.

### saveSeparatorState

```haxe
function saveSeparatorState():Void
```

Saves the expanded state of the separators.

### getCursorId

```haxe
function getCursorId(?sheet:cdb.Sheet, ?childOnly:Bool = false):String
```

Returns the id of the line or reference under the cursor. With `childOnly`, the line id is only used when the cursor is not on a cell.

### getReferences

```haxe
function getReferences(id:String, ?withCodePaths:Bool = true, ?returnAtFirstRef:Bool = false, sheet:cdb.Sheet, ?codeFileCache:Array<{ path:String, data:String }>, ?prefabFileCache:Array<{ path:String, data:String }>):Array<{ str:String, ?goto:Null<() -> Void>, ?file:Null<String> }>
```

Returns the references to an id of a sheet, in the database and in the code and prefab files if `withCodePaths`. Always empty on HashLink.

### findUnreferenced

```haxe
function findUnreferenced(col:cdb.Column, table:Table):Void
```

Shows the ids of a column that are referenced nowhere.

### showReferences

```haxe
function showReferences(?id:String, ?cell:Cell, ?sheet:cdb.Sheet):Void
```

Shows the references to an id (by default the id under the cursor).

### addToFavorites

```haxe
function addToFavorites(id:String, ?sheet:cdb.Sheet):Void
```

Adds an id to the CDB favorites.

### syncSheet

```haxe
function syncSheet(?base:cdb.Database, ?name:String):Void
```

Uses a database (by default the current one) and takes the sheet named `name` again.

### refreshRefs

```haxe
function refreshRefs():Void
```

Refreshes the reference and script cells.

### refresh

```haxe
function refresh(?state:Null<UndoState>):Void
```

Rebuilds the editor, with a state (by default the current one).

### isColumnVisible

```haxe
function isColumnVisible(c:cdb.Column):Bool
```

Tells if a column is in the shown categories.

### moveColumn

```haxe
function moveColumn(targetSheet:cdb.Sheet, origSheet:cdb.Sheet, col:cdb.Column):String
```

Moves a column (and its sub columns) to another sheet. Returns an error, or null.

### newColumn

```haxe
function newColumn(sheet:cdb.Sheet, ?index:Int, ?onDone:() -> Void, ?col:cdb.Column):Void
```

Opens the form to create a column (or edit `col`).

### editColumn

```haxe
function editColumn(sheet:cdb.Sheet, col:cdb.Column):Void
```

Opens the form to edit a column.

### ensureUniqueId

```haxe
function ensureUniqueId(originalId:String, table:Table, column:cdb.Column):String
```

Returns `originalId` if it is unique in its scope, otherwise a new unique id.

### doesSheetContainsId

```haxe
function doesSheetContainsId(sheet:cdb.Sheet, id:String):Bool
```

Tells if a sheet has a line with an id.

### getNewUniqueId

```haxe
function getNewUniqueId(originalId:String, table:Table, column:cdb.Column):String
```

Returns a unique id made by incrementing the number at the end of `originalId` (zero padded).

### popupColumn

```haxe
function popupColumn(table:Table, col:cdb.Column, ?cell:Cell):Void
```

Opens the context menu of a column.

### popupLine

```haxe
function popupLine(line:Line):Void
```

Opens the context menu of a line.

### createDBSheet

```haxe
function createDBSheet(?index:Int):Null<cdb.Sheet>
```

Asks a name and creates a sheet at a tab position. Returns the sheet or null.

### popupSheet

```haxe
function popupSheet(?withMacro:Bool = true, ?sheet:cdb.Sheet, ?onChange:() -> Void):Void
```

Opens the context menu of a sheet. `withMacro` adds the add, move, rename, delete and categories actions.

### close

```haxe
function close():Void
```

Disposes the tables.

### focus

```haxe
function focus():Void
```

Focuses the editor.

## Inherited members

- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
