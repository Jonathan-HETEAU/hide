# hide.comp.cdb.Line

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Line.hx`](../../../../../../hide_js/hide/comp/cdb/Line.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../Component.md)

A line of a CDB table.

## Constructor

### new

```haxe
function new(table:Table, columns:Array<cdb.Column>, index:Int, root:hide.Element):Void
```

Creates a line of a table.

## Variables

### index

```haxe
var index:Int
```

The index of the line in the sheet.

### table

```haxe
var table:Table
```

The table of the line.

### obj

```haxe
var obj(get, null):Dynamic
```

The data of the line.

### cells

```haxe
var cells:Array<Cell>
```

The cells.

### columns

```haxe
var columns:Array<cdb.Column>
```

The shown columns.

### subTable

```haxe
var subTable:SubTable
```

The open sub table, or null.

### status

```haxe
var status:ValidationResult
```

The result of the validation function of the sheet, or null.

### filtered

```haxe
var filtered:Bool
```

True if the line is hidden by the search filters.

## Methods

### getId

```haxe
function getId():String
```

Returns the id of the line, or null.

### create

```haxe
function create():Void
```

Builds the cells of the line.

### syncClasses

```haxe
function syncClasses():Void
```

Updates the style of the line and validates it.

### getGroupID

```haxe
function getGroupID():Null<String>
```

Returns the path or title of the separator group of the root line, or null.

### getRootLine

```haxe
function getRootLine():Line
```

Returns the line of the root table containing this line.

### getConstants

```haxe
function getConstants(objId:Null<String>):Map<String, Null<String>>
```

Returns the constants of the line for the script checker: `cdb.objID`, `cdb.groupID` and the objects of the line and its parents.

### evaluate

```haxe
function evaluate():Void
```

Evaluates the formulas of the cells.

### hide

```haxe
function hide():Void
```

Closes the sub table and hides the line.

### validate

```haxe
function validate():Void
```

Runs the validation function of the sheet and updates the line status.

## Inherited members

- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
