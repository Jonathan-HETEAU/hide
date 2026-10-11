# hide.view.FX2DEditor

**class** · package [`hide.view`](README.md) · module `hide.view.FXEditor` · source [`hide_js/hide/view/FXEditor.hx`](../../../../../hide_js/hide/view/FXEditor.hx) · available on editor (js)

Extends: [`hide.view.FXEditor`](FXEditor.md) → [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The 2D FX editor view (`.fx2d` files).

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

## Inherited members

- from [`hide.view.FXEditor`](FXEditor.md): `selectOnLoad`, `getDefaultContent`, `canSave`, `save`, `delaySceneEditor`, `onActivate`, `onSceneReady`, `getNewTrackMenu`, `setRenderPropsEditionVisibility`
- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
