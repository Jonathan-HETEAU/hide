# hide.view.FileView

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/FileView.hx`](../../../../../hide_js/hide/view/FileView.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

Subclasses: [`hide.view.DomkitLess`](DomkitLess.md), [`hide.view.FXEditor`](FXEditor.md), [`hide.view.GenericGraphEditor`](GenericGraphEditor.md), [`hide.view.Image`](Image.md), [`hide.view.MSDFView`](MSDFView.md), [`hide.view.Model`](Model.md), [`hide.view.Particles2D`](Particles2D.md), [`hide.view.Particles3D`](Particles3D.md), [`hide.view.Prefab`](Prefab.md), [`hide.view.Script`](Script.md), [`hide.view.Sound`](Sound.md), [`hide.view.animgraph.BlendSpace2DEditor`](animgraph/BlendSpace2DEditor.md), [`hide.view.shadereditor.ShaderEditor`](shadereditor/ShaderEditor.md), [`hide.view.textureeditor.TextureEditor`](textureeditor/TextureEditor.md)

The base of the views editing a file (`state.path`): watches the file, tracks modifications and saves.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

Creates the view and watches its file.

## Variables

### extension

```haxe
var extension(get, null):String
```

The extension of the file.

### modified

```haxe
var modified(default, set):Bool
```

True if the file has unsaved changes.

## Methods

### getDefaultContent

```haxe
function getDefaultContent():Bytes
```

Returns the content of a new file. Throws: to override.

### setContainer

```haxe
override function setContainer(cont:golden.Container):Void
```

### canSave

```haxe
function canSave():Bool
```

Tells if the file can be saved (true by default).

### save

```haxe
function save():Void
```

Saves the file.

### saveAs

```haxe
function saveAs():Void
```

Asks a path and saves the file there.

### onBeforeClose

```haxe
override function onBeforeClose():Bool
```

### getTitle

```haxe
override function getTitle():String
```

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
