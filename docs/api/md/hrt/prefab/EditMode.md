# hrt.prefab.EditMode

**enum** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Reference` · source [`hrt/prefab/Reference.hx`](../../../../../hrt/prefab/Reference.hx)

How a reference can be edited in the editor.

## Constructors

### None

```haxe
None
```

The reference can't be edited in the editor

### Edit

```haxe
Edit
```

The reference can be edited in the editor, and saving it will update the referenced prefab file on disk

### Override

```haxe
Override
```

The reference can be edited, and saving it will save a diff between the original prefab and this in the `overrides` field
