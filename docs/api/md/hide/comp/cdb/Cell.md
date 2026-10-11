# hide.comp.cdb.Cell

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Cell.hx`](../../../../../../hide_js/hide/comp/cdb/Cell.hx) · available on editor (js)

A cell of a CDB table: displays and edits the value of a column of a line.

## Constructor

### new

```haxe
function new(root:hide.HTMLElement, line:Line, column:cdb.Column):Void
```

Creates a cell in an element.

## Static methods

### isIdScope

```haxe
static function isIdScope(origin:cdb.Sheet, sheet:cdb.Sheet, ?scope:Int):Bool
```

Tells if a sheet is in the id scope of another sheet.

### enumValueName

```haxe
static function enumValueName(c:cdb.Column, values:Array<String>, v:Dynamic):String
```

Returns the name of an enum value (stored as an index or a string).

## Variables

### elementHtml

```haxe
var elementHtml:hide.HTMLElement
```

The cell element.

### line

```haxe
var line(default, null):Line
```

The line of the cell.

### column

```haxe
var column(default, null):cdb.Column
```

The column of the cell.

### columnIndex

```haxe
var columnIndex(get, null):Int
```

The index of the column in the table.

### value

```haxe
var value(get, null):Dynamic
```

The value of the cell.

### table

```haxe
var table(get, null):Table
```

The table of the cell.

### inEdit

```haxe
var inEdit:Bool
```

True while the cell is edited.

### editColumn

```haxe
var editColumn(get, null):cdb.Column
```

The edited column: the variant column for a polymorphic column.

## Methods

### dragDropFile

```haxe
function dragDropFile(relativePath:String, ?isDrop:Bool = false):Bool
```

Tells if a file can be dropped on the cell (file column), and sets it if `isDrop`.

### canEdit

```haxe
function canEdit():Bool
```

Tells if the view allows editing the cell.

### getPolyEdit

```haxe
function getPolyEdit():{ obj:Dynamic, col:cdb.Column }
```

For a polymorphic column, returns the column and object of the set variant, or null.

### refresh

```haxe
function refresh(?withSubtable:Bool = false):Void
```

Redraws the cell (and its sub table if `withSubtable`).

### getDocumentName

```haxe
function getDocumentName():String
```

Returns the document name of a script cell, used to find its script API (`sheet.column`, with the group).

### isTextInput

```haxe
function isTextInput():Bool
```

Tells if the cell is edited with a text input.

### focus

```haxe
function focus():Void
```

Moves the cursor to the cell.

### spacesToNBSP

```haxe
function spacesToNBSP(str:String):String
```

Replaces the spaces followed by a space or at the end with non breaking spaces, to display them.

### nBSPtoSpaces

```haxe
function nBSPtoSpaces(str:String):String
```

Replaces the non breaking spaces with spaces.

### edit

```haxe
function edit():Void
```

Starts editing the cell.

### open

```haxe
function open(?immediate:Bool):Void
```

Opens the sub table of a list, properties or script cell.

### setErrorMessage

```haxe
function setErrorMessage(msg:String):Void
```

Shows an error on the cell, or removes it if null.

### isUniqueID

```haxe
function isUniqueID(id:String, ?ignoreSelf:Bool = false):Bool
```

Tells if an id is unique in its scope (ignoring the line itself if `ignoreSelf`).

### setValue

```haxe
function setValue(value:Dynamic):Void
```

Sets the value of the cell, as an undoable change.

### closeEdit

```haxe
function closeEdit(?refreshFocus:Bool = true):Void
```

Ends the edition and applies the value.

### editCustomType

```haxe
function editCustomType(typeName:String, ctValue:Dynamic, col:cdb.Column, parentEl:hide.Element, rightAnchor:Float, topAnchor:Float, ?depth:Int = 0):Void
```

Edits a custom type value in a dropdown.
