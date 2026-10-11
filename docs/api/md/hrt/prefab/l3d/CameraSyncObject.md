# hrt.prefab.l3d.CameraSyncObject

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Camera` · source [`hrt/prefab/l3d/Camera.hx`](../../../../../../hrt/prefab/l3d/Camera.hx)

Extends: `h3d.scene.Object`

The object of a `Camera`: applies its field of view and planes to the scene camera when enabled.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Variables

### enable

```haxe
var enable:Bool
```

Applies the properties to the scene camera at each sync.

### fovY

```haxe
var fovY:Float
```

The vertical field of view, in degrees.

### zFar

```haxe
var zFar:Float
```

The far plane.

### zNear

```haxe
var zNear:Float
```

The near plane.
