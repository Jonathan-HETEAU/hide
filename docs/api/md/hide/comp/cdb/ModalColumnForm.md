# hide.comp.cdb.ModalColumnForm

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/ModalColumnForm.hx`](../../../../../../hide_js/hide/comp/cdb/ModalColumnForm.hx) · available on editor (js)

Extends: [`hide.comp.Modal`](../Modal.md) → [`hide.comp.Component`](../Component.md)

The form creating or editing a CDB column.

## Constructor

### new

```haxe
function new(editor:Editor, sheet:cdb.Sheet, column:cdb.Column, ?parent:hide.Element, ?el:hide.Element):Void
```

Creates the form for a column of a sheet (a new one if null).

## Methods

### setCallback

```haxe
function setCallback(callback:() -> Void):Void
```

Sets the function called when the form is validated.

### closeModal

```haxe
function closeModal():Void
```

Closes the form.

### getColumn

```haxe
function getColumn(refColumn:cdb.Column):cdb.Column
```

Returns the column described by the form, or null with an error.

### error

```haxe
function error(str:String):Void
```

Shows an error.

## Inherited members

- from [`hide.comp.Modal`](../Modal.md): `content`, `modalClick`, `close`
- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
