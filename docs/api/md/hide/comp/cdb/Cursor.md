# hide.comp.cdb.Cursor

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Cursor.hx`](../../../../../../hide_js/hide/comp/cdb/Cursor.hx) · available on editor (js)

The cursor and selection of a CDB editor, with the history of the positions.

## Constructor

### new

```haxe
function new(editor:Editor):Void
```

Creates the cursor of an editor.

## Variables

### table

```haxe
var table:Table
```

The table of the cursor.

### x

```haxe
var x:Int
```

The column index, or -1 for the whole line.

### y

```haxe
var y:Int
```

The line index.

### selection

```haxe
var selection:Array<Selection>
```

The selection, or null.

### stateIdx

```haxe
var stateIdx:Int
```

The current index in `states`.

### states

```haxe
var states:Array<CursorState>
```

The history of the cursor positions, to jump back and forth with the alt keys.

## Methods

### setDefault

```haxe
function setDefault(table:Table, x:Int, y:Int):Void
```

Moves the cursor (in the first table if `table` is null), scrolls to it and saves the state.

### set

```haxe
function set(?t:Table, ?x:Int = 0, ?y:Int = 0, ?sel:Array<Selection>, ?update:Bool = true, ?scrollIntoView:Bool = false, ?saveCursorState:Bool = false):Void
```

Moves the cursor to a table, column and line with a selection.

### move

```haxe
function move(dx:Int, dy:Int, shift:Bool, ctrl:Bool, alt:Bool, ?overflow:Bool = false):Void
```

Moves the cursor by `dx` and `dy`, skipping the filtered lines. Shift extends the selection, alt moves the selected lines, and vertical moves can enter or leave the sub tables. With `overflow`, horizontal moves wrap to the previous or next line.

### jump

```haxe
function jump(?backward:Bool = true):Void
```

Moves to the previous (or next) position of the history, opening the sub tables.

### update

```haxe
function update():Void
```

Updates the cursor and selection marks.

### setState

```haxe
function setState(state:CursorState, ?table:Table):Void
```

Moves the cursor to a saved state (or to the start of `table` if null).

### getState

```haxe
function getState():CursorState
```

Returns the cursor state, or null without table.

### saveState

```haxe
function saveState():Void
```

Adds the cursor position to the history if it changed.

### save

```haxe
function save():Null<{ y:Int, x:Int, sheet:cdb.Sheet, selection:Array<Selection> }>
```

Returns the cursor table, position and selection, or null.

### load

```haxe
function load(s:Null<{ y:Null<Int>, x:Null<Int>, sheet:cdb.Sheet, selection:Null<Array<Selection>> }>):Bool
```

Restores a position returned by `save`. Returns false if its table is not shown.

### clearMarks

```haxe
function clearMarks():Void
```

Forgets the marked elements without changing them.

### hide

```haxe
function hide():Void
```

Removes the cursor and selection marks.

### getSelectedAreaIncludingLine

```haxe
function getSelectedAreaIncludingLine(line:Line):Null<Selection>
```

Returns the selection containing a line, or null.

### getSelectedAreaIncludingCell

```haxe
function getSelectedAreaIncludingCell(cell:Cell):Null<Selection>
```

Returns the selection containing a cell, or null.

### getLinesFromSelection

```haxe
function getLinesFromSelection(sel:Selection):Null<Array<Line>>
```

Returns the lines of a selection of whole lines, or null.

### getCellsFromSelection

```haxe
function getCellsFromSelection(sel:Selection):Null<Array<Cell>>
```

Returns the cells of a selection, or null if out of the table.

### getSelectedLines

```haxe
function getSelectedLines():Array<Line>
```

Returns the lines of the selection.

### getSelectedCells

```haxe
function getSelectedCells():Array<Cell>
```

Returns the cells of the selection.

### getLine

```haxe
function getLine():Null<Line>
```

Returns the line of the cursor, or null.

### getCell

```haxe
function getCell():Null<Cell>
```

Returns the cell of the cursor, or null.

### scrollIntoView

```haxe
function scrollIntoView():Void
```

Scrolls to the cursor.

### clickLine

```haxe
function clickLine(line:Line, ?shiftKey:Bool = false, ?ctrlKey:Bool = false):Void
```

Handles a click on a line.

### clickCell

```haxe
function clickCell(cell:Cell, ?shiftKey:Bool = false, ?ctrlKey:Bool = false):Void
```

Handles a click on a cell.

### addElementToSelection

```haxe
function addElementToSelection(table:Table, line:Line, xIndex:Int, yIndex:Int, ?shift:Bool = false, ?ctrl:Bool = false):Void
```

Updates the selection for a click on a cell (`xIndex` -1 for a line): shift extends it, ctrl adds to it.

### updateSelection

```haxe
function updateSelection():Void
```

Removes the selections contained in others and merges the adjacent ones.
