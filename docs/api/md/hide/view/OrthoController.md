# hide.view.OrthoController

**class** · package [`hide.view`](README.md) · module `hide.view.CameraController` · source [`hide_js/hide/view/CameraController.hx`](../../../../../hide_js/hide/view/CameraController.hx) · available on editor (js)

Extends: [`hide.view.CameraControllerBase`](CameraControllerBase.md) → `h3d.scene.CameraController`

An orthographic camera controller.

## Constructor

### new

```haxe
function new(parent:Null<h3d.scene.Object>, sceneEditor:hide.comp.SceneEditor):Void
```

## Variables

### groundSnapAngle

```haxe
var groundSnapAngle:Float
```

Above this angle from the horizontal, without selection, the camera orbits around the ground point at the center of the view.

### orthoZBounds

```haxe
var orthoZBounds:Float
```

The depth range of the orthographic view.

### orthoZoom

```haxe
var orthoZoom:Float
```

The zoom of the orthographic view.

## Methods

### loadSettings

```haxe
override function loadSettings(data:Dynamic):Void
```

### saveSettings

```haxe
override function saveSettings(data:Dynamic):Void
```

## Inherited members

- from [`hide.view.CameraControllerBase`](CameraControllerBase.md): `camSpeed`, `zNear`, `zFar`, `snapToGround`, `loadFOVFromCamera`, `loadFromCamera`, `loadSettings`, `saveSettings`
