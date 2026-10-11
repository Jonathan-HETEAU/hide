# hide.comp.HelpPopup

**class** · package [`hide.comp`](README.md) · module `hide.comp.SceneEditor` · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

The popup listing the shortcuts of the editor.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, editor:SceneEditor, ?shortcuts:Array<{ shortcut:String, name:String }>):Void
```

Creates the popup.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
