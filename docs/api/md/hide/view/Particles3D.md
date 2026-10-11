# hide.view.Particles3D

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/Particles3D.hx`](../../../../../hide_js/hide/view/Particles3D.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The 3D particles view (`json.particles3D` files).

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### save

```haxe
override function save():Void
```

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
