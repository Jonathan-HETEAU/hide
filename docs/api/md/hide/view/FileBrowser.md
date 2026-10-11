# hide.view.FileBrowser

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/FileBrowser.hx`](../../../../../hide_js/hide/view/FileBrowser.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The file browser view: tree and thumbnails of the resources, with favorites, search and version control status.

## Static methods

### getThumbnail

```haxe
static function getThumbnail(item:hide.tools.FileEntry):String
```

Returns the HTML of the thumbnail of a file.

## Methods

### refreshVCS

```haxe
function refreshVCS():Void
```

Refreshes the version control status.

### reveal

```haxe
function reveal(path:String):Void
```

Shows and selects a file.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
