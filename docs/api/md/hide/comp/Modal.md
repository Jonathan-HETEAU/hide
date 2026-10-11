# hide.comp.Modal

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Modal.hx`](../../../../../hide_js/hide/comp/Modal.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Subclasses: [`hide.comp.GlobalSeek`](GlobalSeek.md), [`hide.comp.cdb.ModalColumnForm`](cdb/ModalColumnForm.md)

A modal dialog stopping the events to the page.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?el:hide.Element):Void
```

Creates the dialog.

## Variables

### content

```haxe
var content(default, null):hide.Element
```

The content element.

## Methods

### modalClick

```haxe
dynamic function modalClick(e:hide.Event):Void
```

Called when the user clicks outside the content.

### close

```haxe
function close():Void
```

Removes the dialog.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
