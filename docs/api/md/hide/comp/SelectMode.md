# hide.comp.SelectMode

**enum** · package [`hide.comp`](README.md) · module `hide.comp.SceneEditor` · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

How a selection updates the tree and the undo history.

## Constructors

### Default

```haxe
Default
```

Update tree, add undo command

### NoHistory

```haxe
NoHistory
```

Update tree only

### NoTree

```haxe
NoTree
```

Add undo but don't update tree

### Nothing

```haxe
Nothing
```

Don't refresh tree and don't undo command
