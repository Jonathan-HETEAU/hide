# hrt.prefab.TreeChangedResult

**enum** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Prefab` · source [`hrt/prefab/Prefab.hx`](../../../../../hrt/prefab/Prefab.hx) · available on editor (js)

What a prefab does when a child changed in the editor (see `Prefab.onEditorTreeChanged`).

## Constructors

### Skip

```haxe
Skip
```

Don't rebuild this prefab.

### Rebuild

```haxe
Rebuild
```

Force rebuild this prefab.

### Notify

```haxe
Notify(callback:() -> Void)
```

Call the callback once all the prefabs that wanted a rebuild have been rebuilt. The call order between multiple Notify is not guaranteed. Only one callback is called by prefab in the tree.
