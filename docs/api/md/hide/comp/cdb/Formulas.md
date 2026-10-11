# hide.comp.cdb.Formulas

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Formulas.hx`](../../../../../../hide_js/hide/comp/cdb/Formulas.hx) · available on editor (js)

The formulas of a CDB editor, loaded from the `cdb.formulasFile` hscript file.
Each function taking a line of a sheet type is a formula for that sheet, or a validation function if its name starts with `validate`.

## Constructor

### new

```haxe
function new(editor:Editor):Void
```

Loads the formulas of an editor and watches the file.

## Static methods

### toIdent

```haxe
static function toIdent(name:String):String
```

Replaces the characters not allowed in an identifier with `_`.

### getTypeName

```haxe
static function getTypeName(s:cdb.Sheet):String
```

Returns the type name of a sheet in the formulas (`a@b` becomes `A_b`).

## Variables

### enable

```haxe
var enable:Bool
```

Evaluates the formulas.

## Methods

### evaluateAll

```haxe
function evaluateAll(?sheet:cdb.Sheet):Void
```

Evaluates the formulas of all the lines (or only those of `sheet`).

### validateLine

```haxe
function validateLine(sheet:cdb.Sheet, lineIndex:Int):ValidationResult
```

Runs the validation function of a sheet on a line. Returns null if the sheet has none.

### getList

```haxe
function getList(s:cdb.Sheet):Array<Formula>
```

Returns the formulas of a sheet.

### get

```haxe
function get(c:Cell):Null<Formula>
```

Returns the formula of a cell, or null.

### set

```haxe
function set(c:Cell, f:Formula):Void
```

Sets the formula of a cell, or removes it if null.

### has

```haxe
inline function has(c:Cell):Bool
```

Tells if a cell has a formula (its own or the column default).

### removeFromValue

```haxe
function removeFromValue(obj:Dynamic, c:cdb.Column):Void
```

Removes the formula of a value.

### setForValue

```haxe
function setForValue(obj:Dynamic, sheet:cdb.Sheet, c:cdb.Column, fname:String):Void
```

Sets the formula of a value (or removes it if null), and computes the value.

### evalBlock

```haxe
function evalBlock(f:() -> evalBlock.T):evalBlock.T
```

Calls `f` with a cache of the line accesses, for consecutive evaluations.

### createNew

```haxe
function createNew(c:Cell, ?onCreated:() -> Void):Void
```

Asks a name and adds a formula for the sheet of a cell to the formulas file.

### edit

```haxe
function edit(?insert:String):Void
```

Opens the formulas file, adding `insert` at its end if set.
