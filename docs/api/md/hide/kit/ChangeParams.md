# hide.kit.ChangeParams

**typedef** · package [`hide.kit`](README.md) · module `hide.kit.Element` · source [`hide/kit/Element.hx`](../../../../../hide/kit/Element.hx) · available on editor (js)

A change of a value of the kit, recorded for the undo.

## Fields

### sideEffects

```haxe
var ?sideEffects:Null<(isUndo:Bool) -> Void>
```

Function to run after callback and after each undo/redo operation concerning these changes

### recordUndo

```haxe
var recordUndo:Bool
```

Records an undo step.

### isTemporaryEdit

```haxe
var isTemporaryEdit:Bool
```

Tells if the change is temporary (while dragging), not recorded.

### callback

```haxe
var callback:() -> Void
```

Applies the change.
