# hide.comp.cdb.Table

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Table.hx`](../../../../../../hide_js/hide/comp/cdb/Table.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../Component.md)

Subclasses: [`hide.comp.cdb.SubTable`](SubTable.md)

A table of a CDB editor, showing the lines of a sheet.

## Constructor

### new

```haxe
function new(editor:Editor, sheet:cdb.Sheet, root:hide.Element, mode:DisplayMode):Void
```

Creates a table of a sheet.

## Variables

### editor

```haxe
var editor:Editor
```

The editor.

### parent

```haxe
var parent:Table
```

The parent table of a sub table, or null.

### sheet

```haxe
var sheet:cdb.Sheet
```

The shown sheet.

### lines

```haxe
var lines:Array<Line>
```

The lines.

### displayMode

```haxe
var displayMode(default, null):DisplayMode
```

How the table is displayed.

### columns

```haxe
var columns:Array<cdb.Column>
```

The shown columns.

### view

```haxe
var view:cdb.SheetView
```

The config view restricting the shown and editable columns, or null.

### nestedIndex

```haxe
var nestedIndex:Int
```

The nesting depth of a sub table.

### errorCount

```haxe
var errorCount:Int
```

The number of lines with an error.

### errors

```haxe
var errors:Map<Line, Bool>
```

The lines with an error.

### warningCount

```haxe
var warningCount:Int
```

The number of lines with a warning.

### warnings

```haxe
var warnings:Map<Line, Bool>
```

The lines with a warning.

## Methods

### setCursor

```haxe
function setCursor():Void
```

Moves the cursor to the table.

### getRealSheet

```haxe
function getRealSheet():cdb.Sheet
```

Returns the sheet holding the data (for a sub table, the sheet of the column).

### canInsert

```haxe
function canInsert():Bool
```

Tells if lines can be inserted (not for data files sheets, and if the view allows it).

### canEditColumn

```haxe
function canEditColumn(name:String):Bool
```

Tells if the view allows editing a column.

### close

```haxe
function close():Void
```

Closes the table.

### dispose

```haxe
function dispose():Void
```

Removes the table from the editor.

### refresh

```haxe
function refresh():Void
```

Rebuilds the table.

### revealLine

```haxe
function revealLine(line:Int):Void
```

Expands the separator containing a line.

### getScope

```haxe
function getScope():Array<{ s:cdb.Sheet, obj:Dynamic }>
```

Returns the parent lines of the table, from the root, to make scoped ids.

### makeId

```haxe
function makeId(scopes:Array<{ s:cdb.Sheet, obj:Dynamic }>, scope:Int, id:String):String
```

Returns the full id of a scoped id (`parent:id`).

### shouldDisplayProp

```haxe
function shouldDisplayProp(props:Dynamic, c:cdb.Column):Bool
```

Tells if a column is shown in properties mode.

### sortBy

```haxe
function sortBy(col:cdb.Column):Void
```

Sorts the lines by a column, inside each separator group.

### toggleList

```haxe
function toggleList(cell:Cell, ?immediate:Bool, ?make:() -> SubTable):Void
```

Opens the sub table of a cell, or closes it if already open.

### refreshList

```haxe
function refreshList(cell:Cell, ?make:() -> SubTable):Void
```

Rebuilds the sub table of a cell if it is open.

### insertLine

```haxe
function insertLine(?index:Int = 0):Void
```

Inserts a line after `index`. In properties mode, shows the choice of an optional column to add.

### moveLines

```haxe
function moveLines(lines:Array<Line>, delta:Int):Void
```

Moves lines up or down by `delta`.

### moveLinesTo

```haxe
function moveLinesTo(lines:Array<Line>, targetIdx:Int):Void
```

Moves lines to an index.

### duplicateLine

```haxe
function duplicateLine(?index:Int = 0):Void
```

Inserts a copy of a line after it.

### refreshLinesStatus

```haxe
function refreshLinesStatus():Void
```

Updates the warning and error counts shown by the CDB view.

## Inherited members

- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
