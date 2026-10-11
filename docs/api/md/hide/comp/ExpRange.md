# hide.comp.ExpRange

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ExpRange.hx`](../../../../../hide_js/hide/comp/ExpRange.hx) · available on editor (js)

Extends: [`hide.comp.Range`](Range.md) → [`hide.comp.Component`](Component.md)

A slider with an exponential scale (base 10).

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?root:Null<hide.Element>):Void
```

Creates the slider.

## Methods

### setMinMax

```haxe
function setMinMax(min:Float, max:Float):Void
```

Sets the range of the values.

## Inherited members

- from [`hide.comp.Range`](Range.md): `value`, `copy`, `paste`, `canPaste`, `getClipboardValue`, `reset`, `onChange`, `setOnChangeUndo`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
