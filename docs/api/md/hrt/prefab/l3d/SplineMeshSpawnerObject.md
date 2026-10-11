# hrt.prefab.l3d.SplineMeshSpawnerObject

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.SplineMeshSpawner` · source [`hrt/prefab/l3d/SplineMeshSpawner.hx`](../../../../../../hrt/prefab/l3d/SplineMeshSpawner.hx)

Extends: `h3d.scene.Object`

The object of a `SplineMeshSpawner`.

## Constructor

### new

```haxe
function new(spline:Spline, parent:h3d.scene.Object):Void
```

Creates the object.

## Methods

### getInstances

```haxe
function getInstances():Array<InstanceData>
```

Returns the instances of the child meshes, repeated and stretched along the spline.

### init

```haxe
function init():Void
```

Creates the mesh batches of the instances.
