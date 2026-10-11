# hrt.tools.Undo

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/Undo.hx`](../../../../../hrt/tools/Undo.hx)

An undo history of actions.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty history.

## Static methods

### actionFromActions

```haxe
static function actionFromActions(actions:Array<Action>):Action
```

Returns an action applying several actions (reverted in reverse order).

## Methods

### reset

```haxe
function reset():Void
```

Clears the history.

### record

```haxe
function record(action:Action, hasDataChanges:Bool, ?info:Any):Void
```

Record an action that has already been applied. `info` is an optional payload describing the action, passed to onRecord

### onRecord

```haxe
dynamic function onRecord(info:Null<Any>):Void
```

Called once when a new action is recorded (not on undo/redo), before onAfterChange.
mergeWithLast can be called from here to apply the side effects of the recorded action in the same undo step.

### mergeWithLast

```haxe
function mergeWithLast(action:Action):Void
```

Merge `action` into the action that was just recorded : `action` is applied immediately, and is then
undone and redone together with it (redo : recorded action then `action`, undo : `action` then recorded action).
Must only be called from onRecord.

### run

```haxe
function run(action:Action, hasDataChanges:Bool, ?info:Any):Void
```

Applies an action and records it. `hasDataChanges` tells if it modifies the saved data.

### onAfterChange

```haxe
dynamic function onAfterChange():Void
```

Called after each record, undo or redo.

### undo

```haxe
function undo():Void
```

Reverts the current action.

### canUndo

```haxe
function canUndo():Bool
```

Tells if there is an action to undo.

### redo

```haxe
function redo():Void
```

Applies the next action again.

### canRedo

```haxe
function canRedo():Bool
```

Tells if there is an action to redo.

### getCurrentUndo

```haxe
function getCurrentUndo():Any
```

Return the current active undo function (i.e. the one what would be executed if when calling Undo)

### isDirty

```haxe
function isDirty():Bool
```

Tells if an action with data changes was applied since the last `markClean`.

### markClean

```haxe
function markClean():Void
```

Marks the current state as saved.
