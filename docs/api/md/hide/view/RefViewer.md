# hide.view.RefViewer

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/RefViewer.hx`](../../../../../hide_js/hide/view/RefViewer.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The view listing the references to an element, or the unreferenced elements.

## Constructor

### new

```haxe
function new(state:Dynamic):Void
```

Creates the view.

## Methods

### onDisplay

```haxe
override function onDisplay():Void
```

### getTitle

```haxe
override function getTitle():String
```

### showRefs

```haxe
function showRefs(references:Array<Reference>, original:String, gotoOriginal:() -> Void, ?foldedByDefault:Bool = false):Void
```

Shows references to `original`, grouped by file.

### showUnreferenced

```haxe
function showUnreferenced(unreferenceds:Array<Result>):Void
```

Shows elements referenced nowhere.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
