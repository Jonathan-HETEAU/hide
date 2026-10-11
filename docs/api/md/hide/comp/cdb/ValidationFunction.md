# hide.comp.cdb.ValidationFunction

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Formulas` · source [`hide_js/hide/comp/cdb/Formulas.hx`](../../../../../../hide_js/hide/comp/cdb/Formulas.hx) · available on editor (js)

A line validation function of the formulas file: a function whose name starts with `validate`.

## Fields

### type

```haxe
var type:String
```

The type name of the sheet.

### name

```haxe
var name:String
```

The function name.

### call

```haxe
var call:() -> ValidationResult
```

Validates a line.
