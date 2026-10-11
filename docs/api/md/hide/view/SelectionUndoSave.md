# hide.view.SelectionUndoSave

**typedef** · package [`hide.view`](README.md) · module `hide.view.GraphEditor` · source [`hide_js/hide/view/GraphEditor.hx`](../../../../../hide_js/hide/view/GraphEditor.hx) · available on editor (js)

The selection change of a rectangle selection, for the undo.

## Fields

### newSelections

```haxe
var newSelections:Map<Int, Bool>
```

The selected nodes, by id.

### buffer

```haxe
var buffer:UndoBuffer
```

The selection operations.
