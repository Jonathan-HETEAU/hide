# hide.comp.cdb.Separator

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/Separator.hx`](../../../../../../hide_js/hide/comp/cdb/Separator.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../Component.md)

A separator of a CDB table: a collapsible titled group of lines, which can be nested.

## Constructor

### new

```haxe
function new(root:hide.Element, table:Table, data:cdb.Separator):Void
```

Creates a separator of a table.

## Static variables

### SEPARATOR_KEY

```haxe
static var SEPARATOR_KEY:String
```

The prefix of the keys of the saved expanded states.

## Static methods

### getParentSeparators

```haxe
static function getParentSeparators(lineIdx:Int, separators:Array<Separator>):Array<Separator>
```

Returns the separators containing a line, from the root.

## Variables

### table

```haxe
var table:Table
```

The table.

### data

```haxe
var data:cdb.Separator
```

The separator data of the sheet.

### parent

```haxe
var parent:Separator
```

The parent separator, or null.

### subs

```haxe
var subs:Array<Separator>
```

The child separators.

## Methods

### refresh

```haxe
function refresh(?refreshChildren:Bool = true):Void
```

Redraws the separator (and its children if `refreshChildren`).

### toggle

```haxe
function toggle():Void
```

Expands or collapses the separator.

### expand

```haxe
function expand():Void
```

Expands the separator.

### collapse

```haxe
function collapse():Void
```

Collapses the separator.

### reveal

```haxe
function reveal():Void
```

Expands the separator and its parents.

### getLinesVisiblity

```haxe
function getLinesVisiblity():Bool
```

Tells if the lines of the separator are shown.

### getLines

```haxe
function getLines():Array<Line>
```

Returns the lines of the separator.

## Inherited members

- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
