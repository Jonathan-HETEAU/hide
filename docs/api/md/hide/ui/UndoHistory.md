# hide.ui.UndoHistory

**class** · package [`hide.ui`](README.md) · source [`hide_js/hide/ui/UndoHistory.hx`](../../../../../hide_js/hide/ui/UndoHistory.hx) · available on editor (js)

The undo and redo history of a view.

## Constructor

### new

```haxe
function new(?maxHistoryCount:Int = 50):Void
```

Creates a history keeping at most `maxHistoryCount` changes.

## Variables

### currentID

```haxe
var currentID(get, null):Int
```

The id of the current state, to tell if the data changed since a save.

## Methods

### change

```haxe
function change(h:HistoryElement, ?callb:() -> Void, ?noDataChange:Bool):Void
```

Records a change already applied. `callb` is called after undo and redo. A change with `noDataChange` keeps the current id.

### clear

```haxe
function clear():Void
```

Clears the history.

### undo

```haxe
function undo():Bool
```

Reverts the last change. Returns false if there is none.

### redo

```haxe
function redo():Bool
```

Applies the last reverted change again. Returns false if there is none.

### toElement

```haxe
function toElement():HistoryElement
```

Returns a change reverting or applying again all the changes of this history.

### handleElement

```haxe
function handleElement(e:hide.ui._UndoHistory.Elt, other:Array<hide.ui._UndoHistory.Elt>):Bool
```

Reverts or applies a change and moves it to the `other` list. Returns false if `e` is null.

### onChange

```haxe
dynamic function onChange():Void
```

Called after each change, undo or redo.
