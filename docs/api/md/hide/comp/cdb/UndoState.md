# hide.comp.cdb.UndoState

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Editor` · source [`hide_js/hide/comp/cdb/Editor.hx`](../../../../../../hide_js/hide/comp/cdb/Editor.hx) · available on editor (js)

A state of the editor saved in the undo history.

## Fields

### tables

```haxe
var tables:Array<UndoSheet>
```

The shown sheets.

### sheet

```haxe
var sheet:String
```

The name of the current sheet.

### separatorsState

```haxe
var separatorsState:Map<String, Bool>
```

The expanded state of the separators.

### data

```haxe
var data:Any
```

A copy of the edited data.

### cursor

```haxe
var cursor:CursorState
```

The cursor state.
