# hide.view.animgraph.BlendSpace2DEditor

**class** · package [`hide.view.animgraph`](README.md) · source [`hide_js/hide/view/animgraph/BlendSpace2DEditor.hx`](../../../../../../hide_js/hide/view/animgraph/BlendSpace2DEditor.hx) · available on editor (js)

Extends: [`hide.view.FileView`](../FileView.md) → [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

The 2D blend space editor view (`.bs2d` files): the animation points and a preview.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### loadPreviewState

```haxe
function loadPreviewState():Void
```

Loads the preview state from the display state.

### savePreviewState

```haxe
function savePreviewState():Void
```

Saves the preview state in the display state.

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### save

```haxe
override function save():Void
```

## Inherited members

- from [`hide.view.FileView`](../FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
