# hide.comp.ContentEditable

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ContentEditable.hx`](../../../../../hide_js/hide/comp/ContentEditable.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

An editable text element: Enter or focus loss validates, Escape cancels.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?element:hide.Element):Void
```

Creates the element.

## Variables

### value

```haxe
var value(get, set):String
```

The text.

### spellcheck

```haxe
var spellcheck(null, set):Bool
```

Enables the spell checking.

## Methods

### onCancel

```haxe
dynamic function onCancel():Void
```

Called when Escape is pressed.

### onChange

```haxe
dynamic function onChange(v:String):Void
```

Called with the text when the edition ends (Enter or focus loss) with a change.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
