# hide.view.animgraph.AnimPicker

**class** · package [`hide.view.animgraph`](README.md) · source [`hide_js/hide/view/animgraph/AnimPicker.hx`](../../../../../../hide_js/hide/view/animgraph/AnimPicker.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../../comp/Component.md)

A dropdown button choosing an animation.

## Constructor

### new

```haxe
function new(?parent:hide.Element, undo:hide.ui.UndoHistory, get:() -> String, set:(string:String) -> Void, ?animations:Array<String>):Void
```

Creates the picker. `get` and `set` read and write the animation, with undo.

## Methods

### setAnim

```haxe
function setAnim(string:String):Void
```

Shows an animation name.

## Inherited members

- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
