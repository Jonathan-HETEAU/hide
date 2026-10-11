# hide.view.CdbFavorites

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/CdbFavorites.hx`](../../../../../hide_js/hide/view/CdbFavorites.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The view listing the CDB favorites.

## Constructor

### new

```haxe
function new(state:Dynamic):Void
```

Creates the view.

## Methods

### getTitle

```haxe
override function getTitle():String
```

### addFavorite

```haxe
function addFavorite(result:Result):Void
```

Adds a favorite, unless already listed.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
