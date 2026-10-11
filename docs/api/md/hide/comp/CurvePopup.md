# hide.comp.CurvePopup

**class** · package [`hide.comp`](README.md) · module `hide.comp.CurveEditor` · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

A popup with a curve editor.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, undo:hide.ui.UndoHistory):Void
```

Creates the popup and its curve editor.

## Variables

### editor

```haxe
var editor:CurveEditor
```

The curve editor.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
