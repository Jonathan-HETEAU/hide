# hide.view.FlightController

**class** · package [`hide.view`](README.md) · module `hide.view.CameraController` · source [`hide_js/hide/view/CameraController.hx`](../../../../../hide_js/hide/view/CameraController.hx) · available on editor (js)

Extends: [`hide.view.CameraControllerBase`](CameraControllerBase.md) → `h3d.scene.CameraController`

A flight camera controller, with smoothed moves.

## Constructor

### new

```haxe
function new(parent:Null<h3d.scene.Object>, sceneEditor:hide.comp.SceneEditor):Void
```

Creates the controller of a scene editor.

## Methods

### set

```haxe
override function set(?distance:Float, ?theta:Float, ?phi:Float, ?target:Null<h3d.col.Point>, ?fovY:Float):Void
```

### loadFromCamera

```haxe
override function loadFromCamera(?animate:Bool = false):Void
```

## Inherited members

- from [`hide.view.CameraControllerBase`](CameraControllerBase.md): `camSpeed`, `zNear`, `zFar`, `snapToGround`, `loadFOVFromCamera`, `loadFromCamera`, `loadSettings`, `saveSettings`
