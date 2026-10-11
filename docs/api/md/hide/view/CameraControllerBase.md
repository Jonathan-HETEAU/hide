# hide.view.CameraControllerBase

**class** · package [`hide.view`](README.md) · module `hide.view.CameraController` · source [`hide_js/hide/view/CameraController.hx`](../../../../../hide_js/hide/view/CameraController.hx) · available on editor (js)

Extends: `h3d.scene.CameraController`

Subclasses: [`hide.view.CamController`](CamController.md), [`hide.view.FPSController`](FPSController.md), [`hide.view.FlightController`](FlightController.md), [`hide.view.OrthoController`](OrthoController.md)

The base of the scene editor camera controllers, with their saved settings.

## Constructor

### new

```haxe
function new(parent:Null<h3d.scene.Object>, sceneEditor:hide.comp.SceneEditor):Void
```

Creates the controller of a scene editor.

## Variables

### camSpeed

```haxe
var camSpeed:Float
```

The camera move speed.

### zNear

```haxe
var zNear:Float
```

The near plane distance.

### zFar

```haxe
var zFar:Float
```

The far plane distance.

### snapToGround

```haxe
var snapToGround:Bool
```

Pans along the terrain, not only the z=0 plane.

## Methods

### loadFOVFromCamera

```haxe
function loadFOVFromCamera():Void
```

Takes the field of view and planes from the camera.

### loadFromCamera

```haxe
override function loadFromCamera(?animate:Bool = false):Void
```

### loadSettings

```haxe
function loadSettings(data:Dynamic):Void
```

Loads the settings.

### saveSettings

```haxe
function saveSettings(data:Dynamic):Void
```

Saves the settings.
