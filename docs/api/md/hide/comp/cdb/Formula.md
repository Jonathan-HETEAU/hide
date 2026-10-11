# hide.comp.cdb.Formula

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Formulas` · source [`hide_js/hide/comp/cdb/Formulas.hx`](../../../../../../hide_js/hide/comp/cdb/Formulas.hx) · available on editor (js)

A CDB formula: a function of the formulas file computing a number column from a line.

## Fields

### type

```haxe
var type:String
```

The type name of the sheet (see `Formulas.getTypeName`).

### name

```haxe
var name:String
```

The function name.

### call

```haxe
var call:() -> Null<Float>
```

Computes the value from the line.
