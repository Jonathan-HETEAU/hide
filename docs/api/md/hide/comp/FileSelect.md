# hide.comp.FileSelect

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FileSelect.hx`](../../../../../hide_js/hide/comp/FileSelect.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Subclasses: [`hide.comp.TextureSelect`](TextureSelect.md)

A file selection input with a file chooser, a context menu and drag and drop.

## Constructor

### new

```haxe
function new(extensions:Array<String>, ?parent:hide.Element, ?root:js.jquery.JQuery, ?handleDragAndDrop:Bool = true):Void
```

Creates a file selection for file extensions, accepting dropped files if `handleDragAndDrop`.

## Static methods

### pathIsValidStatic

```haxe
static function pathIsValidStatic(path:String, extensions:Array<String>, directory:Bool):Bool
```

Tells if a path can be selected: a file with one of the extensions, or an existing directory.

## Variables

### path

```haxe
var path(default, set):String
```

The selected path, relative to the resources.

### disabled

```haxe
var disabled(default, set):Bool
```

Disables the selection.

### directory

```haxe
var directory:Bool
```

Selects a directory instead of a file.

## Methods

### onView

```haxe
dynamic function onView():Void
```

Called to open the selected file. Opens it in the IDE by default.

### getFullPath

```haxe
function getFullPath():Null<String>
```

Returns the full path of the selected file if it exists, or null.

### onChange

```haxe
dynamic function onChange():Void
```

Called when the path changes.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
