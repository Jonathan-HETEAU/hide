# hide.comp.Range

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Range.hx`](../../../../../hide_js/hide/comp/Range.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Subclasses: [`hide.comp.ExpRange`](ExpRange.md)

A slider with a number input, reset, copy and paste.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?root:Null<hide.Element>, ?className:String):Void
```

Creates a slider, from a range input if set.

## Variables

### value

```haxe
var value(get, set):Float
```

The value.

## Methods

### copy

```haxe
function copy():Void
```

Copies the value to the clipboard.

### paste

```haxe
function paste():Void
```

Sets the value from the clipboard.

### canPaste

```haxe
function canPaste():Bool
```

Tells if the clipboard value is not null. `getClipboardValue` returns NaN rather than null, so this is always true.

### getClipboardValue

```haxe
function getClipboardValue():Null<Float>
```

Returns the number in the clipboard (NaN if none).

### reset

```haxe
function reset():Void
```

Restores the initial value.

### onChange

```haxe
dynamic function onChange(tempChange:Bool):Void
```

Called when the value changes. `tempChange` is true during a drag.

### setOnChangeUndo

```haxe
function setOnChangeUndo(undo:hide.ui.UndoHistory, get:() -> Float, set:(newValue:Float) -> Void):Void
```

Automatically handle undo/redo, tracking automatically if a change is temporary or not.
get : a function that returns the current value you wanna change
set : a function that set the value you wanna change.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
