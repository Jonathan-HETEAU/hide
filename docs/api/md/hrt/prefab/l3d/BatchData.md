# hrt.prefab.l3d.BatchData

**typedef** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.MeshSpray` · source [`hrt/prefab/l3d/MeshSpray.hx`](../../../../../../hrt/prefab/l3d/MeshSpray.hx)

A mesh batch of a `MeshSpray`, for a model.

## Fields

### pivot

```haxe
var pivot:h3d.Matrix
```

The default transform of the mesh, or `null` for the identity.

### init

```haxe
var init:Bool
```

Tells if the batch was started.

### emitCountTip

```haxe
var emitCountTip:Int
```

The number of instances, to preallocate the batch.

### batch

```haxe
var batch:h3d.scene.MeshBatch
```

The mesh batch.
