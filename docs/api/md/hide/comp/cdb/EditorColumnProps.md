# hide.comp.cdb.EditorColumnProps

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Editor` · source [`hide_js/hide/comp/cdb/Editor.hx`](../../../../../../hide_js/hide/comp/cdb/Editor.hx) · available on editor (js)

The editor properties of a CDB column.

## Fields

### ignoreExport

```haxe
var ?ignoreExport:Null<Bool>
```

If the column has a formula: the column is not exported.

### formula

```haxe
var ?formula:Null<String>
```

The name of the formula of the column.

### copyPasteImmutable

```haxe
var ?copyPasteImmutable:Null<Bool>
```

The column is not changed by pasting several cells.

### categories

```haxe
var ?categories:Null<Array<String>>
```

The categories of the column, to show it only in these categories.
