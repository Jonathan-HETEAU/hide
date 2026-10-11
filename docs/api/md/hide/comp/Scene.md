# hide.comp.Scene

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Scene.hx`](../../../../../hide_js/hide/comp/Scene.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Implements: `h3d.IDrawable`

Subclasses: [`hide.comp.ScenePreview`](ScenePreview.md)

The 3D/2D scene component of the editor: a canvas with its own engine, `s3d`, `s2d`, loading of models, animations and textures, and render props.

## Constructor

### new

```haxe
function new(config:hide.Config, parent:hide.Element, el:hide.Element):Void
```

Creates a scene in an element. `onReady` is called once the engine is ready.

## Static variables

### cache

```haxe
static var cache:h3d.prim.ModelCache
```

The model cache shared by the scenes.

## Static methods

### getNearest

```haxe
static function getNearest(e:hide.Element):Scene
```

Returns the scene of the nearest canvas in an element or its parents.

### getCurrent

```haxe
static function getCurrent():Scene
```

Returns the scene of the current engine.

## Variables

### canvas

```haxe
var canvas:js.html.CanvasElement
```

The canvas of the scene.

### config

```haxe
var config:hide.Config
```

The config of the scene.

### engine

```haxe
var engine:h3d.Engine
```

The engine of the scene.

### width

```haxe
var width(get, null):Int
```

The width of the canvas, in pixels.

### height

```haxe
var height(get, null):Int
```

The height of the canvas, in pixels.

### s2d

```haxe
var s2d:h2d.Scene
```

The 2D scene.

### s3d

```haxe
var s3d:h3d.scene.Scene
```

The 3D scene.

### sevents

```haxe
var sevents:hxd.SceneEvents
```

The scene events.

### speed

```haxe
var speed:Float
```

The time speed factor.

### visible

```haxe
var visible(default, null):Bool
```

False when the canvas is too small (hidden): the scene is not updated.

### editor

```haxe
var editor:SceneEditor
```

The scene editor using this scene, or null.

### autoDisposeOutOfDocument

```haxe
var autoDisposeOutOfDocument:Bool
```

Disposes the scene when its canvas is removed from the document.

### autoUpdate

```haxe
var autoUpdate:Bool
```

Updates and renders the scene each frame.

### errorMessageBox

```haxe
var errorMessageBox:hide.Element
```

The element showing the scene errors.

### enableNewErrorSystem

```haxe
var enableNewErrorSystem:Bool
```

Shows the update errors in `errorMessageBox` instead of throwing them.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the scene and its engine.

### addListener

```haxe
function addListener(f:() -> Void):Void
```

Adds a function called each frame with the elapsed time.

### removeListener

```haxe
function removeListener(f:(dt:Float) -> Void):Void
```

Removes a function added by `addListener`.

### init

```haxe
function init(?root:h3d.scene.Object):Void
```

Hides the objects whose name starts with a `scene.autoHide` config entry. Without `root`, also sets the background color from the config.

### setCurrent

```haxe
function setCurrent():Void
```

Makes the engine and window of the scene current.

### hasFocus

```haxe
function hasFocus():Bool
```

Tells if the canvas has the focus.

### errorHandler

```haxe
dynamic function errorHandler(e:Exception):Null<Exception>
```

Called with an update error. Returns the error to throw, or null if handled.

### listAnims

```haxe
function listAnims(path:String, ?customFilter:(f:String) -> Bool):Array<Null<String>>
```

Lists the animation files of a model or directory, and of the `hmd.animPaths` config directories (recursive if ending with `*`). `customFilter` adds other files.

### animationName

```haxe
function animationName(path:String):Null<String>
```

Returns the animation name of a file (without `anim_`, extension and `_loop`).

### loadModel

```haxe
function loadModel(path:String, ?mainScene:Bool = false, ?reload:Bool = false):Null<h3d.scene.Object>
```

Loads a model with its textures. Returns null on error.

### loadAnimation

```haxe
function loadAnimation(path:String):Null<h3d.anim.Animation>
```

Loads the animation of a file.

### loadTextureDotPath

```haxe
function loadTextureDotPath(path:String, ?onReady:() -> Void):Null<h3d.mat.Texture>
```

Loads a texture from a dot path (`a.b.c` looks for `a/b/c.png` or `.jpg`).

### loadTexture

```haxe
function loadTexture(modelPath:String, texturePath:String, ?onReady:() -> Void, ?async:Bool = false, ?uncompressed:Bool = false):Null<h3d.mat.Texture>
```

Loads a texture referenced by a model, resolving its path.

### resetCamera

```haxe
function resetCamera(?obj:h3d.scene.Object, ?distanceFactor:Float = 1., ?maxDist:Float):Void
```

Places the camera to see an object (or the scene) from the origin direction, or loads the default camera.

### resetCamera2

```haxe
function resetCamera2(?obj:h3d.scene.Object, ?distanceFactor:Float = 1., ?maxDist:Float):Void
```

Places the camera to see an object (or the scene), centered on its bounds, or loads the default camera.

### render

```haxe
function render(e:h3d.Engine):Void
```

Renders the scene.

### setRenderProps

```haxe
function setRenderProps(path:String):Void
```

Applies the render props of a prefab, or the default environment if null.

### onUpdate

```haxe
dynamic function onUpdate(dt:Float):Void
```

Called each frame with the elapsed time.

### onReady

```haxe
dynamic function onReady():Void
```

Called once the scene is ready.

### onResize

```haxe
dynamic function onResize():Void
```

Called when the canvas is resized.

### listMatLibraries

```haxe
function listMatLibraries(path:String):Array<Dynamic>
```

Returns the material libraries available for a path.

### findMat

```haxe
function findMat(materials:Array<Dynamic>, key:String):{ path:String, mat:h3d.mat.Material }
```

Finds a material by `library path/material name` in a list.

### listMaterialFromLibrary

```haxe
function listMaterialFromLibrary(path:String, library:String):Array<{ path:String, mat:hrt.prefab.Material }>
```

Returns the materials of a library available for a path.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
