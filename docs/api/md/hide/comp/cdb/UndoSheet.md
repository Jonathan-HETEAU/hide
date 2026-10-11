# hide.comp.cdb.UndoSheet

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Editor` · source [`hide_js/hide/comp/cdb/Editor.hx`](../../../../../../hide_js/hide/comp/cdb/Editor.hx) · available on editor (js)

A sheet shown in the editor, as stored in the undo state.

## Fields

### sheet

```haxe
var sheet:String
```

The sheet name.

### parent

```haxe
var parent:{ sheet:UndoSheet, line:Int, column:Int }
```

The parent sheet, line and column of a sub sheet, or null.
