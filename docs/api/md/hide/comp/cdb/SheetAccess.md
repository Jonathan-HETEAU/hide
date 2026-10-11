# hide.comp.cdb.SheetAccess

**class** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Formulas` · source [`hide_js/hide/comp/cdb/Formulas.hx`](../../../../../../hide_js/hide/comp/cdb/Formulas.hx) · available on editor (js)

The access to a sheet given to the formulas, as a global named after the sheet type.

## Constructor

### new

```haxe
function new(form:Formulas, name:String):Void
```

Creates the access to a sheet type.

## Variables

### form

```haxe
var form:Formulas
```

The formulas.

### name

```haxe
var name:String
```

The type name of the sheet.

### all

```haxe
var all(get, null):Iterator<Dynamic>
```

Iterates over the lines of the sheet.

## Methods

### get_all

```haxe
function get_all():Iterator<Dynamic>
```

### resolve

```haxe
function resolve(id:String):Dynamic
```

Returns the line with an id, or null.
