# hrt.prefab.DiffResult

**enum** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Diff` · source [`hrt/prefab/Diff.hx`](../../../../../hrt/prefab/Diff.hx)

The result of a diff between two values.

## Constructors

### Skip

```haxe
Skip
```

The two object are identical, don't save anything

### Set

```haxe
Set(diff:Dynamic)
```

The two objects are different, save the result as diff
