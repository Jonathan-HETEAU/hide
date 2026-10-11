# hide.comp.Button

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Button.hx`](../../../../../hide_js/hide/comp/Button.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A button with a label, and a dropdown arrow if `hasDropdown`.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?element:Null<hide.Element>, ?label:String, ?options:Null<Options>):Void
```

Creates a button, or wraps a `<button-2>` element.

## Variables

### label

```haxe
var label(default, set):String
```

The label.

## Methods

### onClick

```haxe
dynamic function onClick():Void
```

Called on click.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
