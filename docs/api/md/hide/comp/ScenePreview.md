# hide.comp.ScenePreview

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ScenePreview.hx`](../../../../../hide_js/hide/comp/ScenePreview.hx) · available on editor (js)

Extends: [`hide.comp.Scene`](Scene.md) → [`hide.comp.Component`](Component.md)

A Scene that is specialised to load one prefab or mesh for preview.
Stores its settings (model and render props) in the display state.

## Constructor

### new

```haxe
function new(config:hide.Config, parent:hide.Element, el:hide.Element, save:String):Void
```

Creates the preview. `save` is the display state key of the settings.

## Static methods

### listRenderPropsStatic

```haxe
static function listRenderPropsStatic(config:hide.Config):Array<{ value:String, name:String }>
```

Returns the render props of the `scene.renderProps` config.

## Variables

### prefab

```haxe
var prefab(default, null):hrt.prefab.Prefab
```

The root prefab of the preview.

## Methods

### addToolbar

```haxe
function addToolbar():Void
```

Adds the toolbar choosing the model and render props.

### onObjectLoaded

```haxe
dynamic function onObjectLoaded():Void
```

Called whenever prefab is loaded. Prefab can be null if the loading failed

### listLoadableMeshes

```haxe
dynamic function listLoadableMeshes():Array<{ path:String, label:String }>
```

Returns the meshes that can be previewed. Default is none.

### resetPreviewCamera

```haxe
function resetPreviewCamera():Void
```

Frames the previewed object.

### setObjectPath

```haxe
function setObjectPath(path:String):Void
```

Set the preview object path and reload the scene.
If path is a .prefab, `this.prefab` will be the loaded prefab
If path is a .fbx, `this.prefab` will be a hrt.prefab.Model with it's source = path

### getObjectPath

```haxe
function getObjectPath():String
```

Returns the path of the previewed object.

### reloadObject

```haxe
function reloadObject():Void
```

Reloads the previewed object.

## Inherited members

- from [`hide.comp.Scene`](Scene.md): `canvas`, `config`, `engine`, `width`, `height`, `s2d`, `s3d`, `sevents`, `speed`, `visible`, `editor`, `autoDisposeOutOfDocument`, `autoUpdate`, `errorMessageBox`, `dispose`, `addListener`, `removeListener`, `enableNewErrorSystem`, `init`, `setCurrent`, `hasFocus`, `errorHandler`, `listAnims`, `animationName`, `loadModel`, `loadAnimation`, `loadTextureDotPath`, `loadTexture`, `resetCamera`, `resetCamera2`, `render`, `setRenderProps`, `onUpdate`, `onReady`, `onResize`, `listMatLibraries`, `findMat`, `listMaterialFromLibrary`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
