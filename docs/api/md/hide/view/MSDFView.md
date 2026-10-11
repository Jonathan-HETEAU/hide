# hide.view.MSDFView

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/MSDFView.hx`](../../../../../hide_js/hide/view/MSDFView.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The view of SVG files as multi-channel signed distance fields.

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

### onResize

```haxe
override function onResize():Void
```

### onTextureLoaded

```haxe
function onTextureLoaded(texture:Null<h3d.mat.Texture>):Void
```

Called when the texture is loaded.

### applyShaderConfiguration

```haxe
function applyShaderConfiguration():Void
```

Applies the view mode to the preview.

### cleanUp

```haxe
function cleanUp():Void
```

Disposes the scene and the preview.

### floatToStringPrecision

```haxe
function floatToStringPrecision(number:Float, ?precision:Int = 2):Float
```

Rounds a number to `precision` decimals.

### updateSliderVisual

```haxe
function updateSliderVisual():Void
```

Updates the comparison slider to the zoom.

### drawSlider

```haxe
function drawSlider():Void
```

Draws the comparison slider.

### replaceTexture

```haxe
function replaceTexture(path:String):Void
```

Shows the texture of a file.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
