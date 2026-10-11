# hide.comp.Modal2

**class** · package [`hide.comp`](README.md) · module `hide.comp.Modal` · source [`hide_js/hide/comp/Modal.hx`](../../../../../hide_js/hide/comp/Modal.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A modal popover with a title bar and a close button. Its size is saved in the display state.

## Constructor

### new

```haxe
function new(?parent:hide.Element, title:String, saveKey:String):Void
```

Creates the popover. `saveKey` is the display state key.

## Variables

### content

```haxe
var content:hide.Element
```

The content element.

### title

```haxe
var title(default, set):String
```

The title.

## Methods

### close

```haxe
function close():Void
```

Closes the popover.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the popover closes.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
