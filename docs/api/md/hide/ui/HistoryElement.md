# hide.ui.HistoryElement

**enum** · package [`hide.ui`](README.md) · module `hide.ui.UndoHistory` · source [`hide_js/hide/ui/UndoHistory.hx`](../../../../../hide_js/hide/ui/UndoHistory.hx) · available on editor (js)

A change recorded in an `UndoHistory`.

## Constructors

### Field

```haxe
Field(obj:Dynamic, field:String, oldValue:Dynamic)
```

A field of an object changed from `oldValue`.

### Array

```haxe
Array(obj:Array<Dynamic>, field:Int, oldValue:Dynamic)
```

An index of an array changed from `oldValue`.

### Custom

```haxe
Custom(undoRedo:() -> Void)
```

A custom change: `undoRedo(true)` reverts it, `undoRedo(false)` applies it again.
