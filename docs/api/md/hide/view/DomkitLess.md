# hide.view.DomkitLess

**class** · package [`hide.view`](README.md) · module `hide.view.DomkitStudio` · source [`hide_js/hide/view/DomkitStudio.hx`](../../../../../hide_js/hide/view/DomkitStudio.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The view of domkit style sheets (`.less` files).

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### save

```haxe
override function save():Void
```

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
