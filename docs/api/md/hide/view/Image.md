# hide.view.Image

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/Image.hx`](../../../../../hide_js/hide/view/Image.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The image view: shows a texture and edits its compression settings.

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

### onTexturesLoaded

```haxe
function onTexturesLoaded(compressedTexture:Null<h3d.mat.Texture>, uncompressedTexture:Null<h3d.mat.Texture>):Void
```

Called when the compressed and original textures are loaded.

### applyShaderConfiguration

```haxe
function applyShaderConfiguration():Void
```

Applies the view mode and channel settings to the preview.

### cleanUp

```haxe
function cleanUp():Void
```

Disposes the scene and the preview.

### updateImageCompressionInfos

```haxe
function updateImageCompressionInfos():Void
```

Updates the shown compression informations.

### replaceImage

```haxe
function replaceImage(path:String):Void
```

Shows the texture of a file.

### createPreviewTexture

```haxe
function createPreviewTexture(format:hide.Element, useAlpha:hide.Element, alpha:hide.Element, mips:hide.Element, size:hide.Element, filter:hide.Element):Void
```

Compresses the texture with the settings of the form into a temporary file, and shows it.

### getTextureMaxSize

```haxe
function getTextureMaxSize():Int
```

Returns the width of the texture.

### getTextureMemSize

```haxe
function getTextureMemSize(path:String):Float
```

Returns the memory size of a texture, in MB.

### getTextureNativeFormat

```haxe
function getTextureNativeFormat(path:String):h3d.mat.TextureFormat
```

Returns the format of a texture file.

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

### onError

```haxe
function onError():Void
```

Shows an error when the texture can't be compressed with the settings.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
