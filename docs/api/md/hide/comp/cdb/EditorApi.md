# hide.comp.cdb.EditorApi

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Editor` · source [`hide_js/hide/comp/cdb/Editor.hx`](../../../../../../hide_js/hide/comp/cdb/Editor.hx) · available on editor (js)

The data access of a CDB editor.

## Fields

### save

```haxe
var save:() -> Void
```

Saves the data.

### load

```haxe
var load:(data:Any) -> Void
```

Loads data (on undo or redo).

### copy

```haxe
var copy:() -> Any
```

Returns a copy of the data.
