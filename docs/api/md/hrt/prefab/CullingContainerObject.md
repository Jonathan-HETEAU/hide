# hrt.prefab.CullingContainerObject

**class** · package [`hrt.prefab`](README.md) · module `hrt.prefab.CullingContainer` · source [`hrt/prefab/CullingContainer.hx`](../../../../../hrt/prefab/CullingContainer.hx)

Extends: `h3d.scene.Object`

An object hidden (with its children) when it is farther than a distance from the camera.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Variables

### cullDistanceSq

```haxe
var cullDistanceSq:Float
```

The squared distance from the camera beyond which the object is hidden.

### forceVisible

```haxe
var forceVisible:Bool
```

Keeps the object visible (used in the editor).
