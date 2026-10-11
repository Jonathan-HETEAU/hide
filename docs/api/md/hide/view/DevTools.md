# hide.view.DevTools

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/DevTools.hx`](../../../../../hide_js/hide/view/DevTools.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

A view embedding the Chrome developer tools, to open a profile file.

## Constructor

### new

```haxe
function new(?state:{ profileFilePath:String }):Void
```

Creates the view.

## Methods

### openProfile

```haxe
function openProfile():Void
```

Opens the profile file of the state.

### getTitle

```haxe
override function getTitle():String
```

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
