# hide.view.Model

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/Model.hx`](../../../../../hide_js/hide/view/Model.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The model view (`.fbx` and `.hmd` files): scene, objects tree, materials, animations and collision settings.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### onActivate

```haxe
override function onActivate():Void
```

### save

```haxe
override function save():Void
```

### setRenderPropsEditionVisibility

```haxe
function setRenderPropsEditionVisibility(visible:Bool):Void
```

Shows or hides the render props edition.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
