# hrt.prefab.l3d.modellibrary.CopyInfo

**typedef** · package [`hrt.prefab.l3d.modellibrary`](README.md) · module `hrt.prefab.l3d.modellibrary.GPUBatcher` · source [`hrt/prefab/l3d/modellibrary/GPUBatcher.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/GPUBatcher.hx)

A copy of transforms into a mesh batch.

## Fields

### start

```haxe
var start:Int
```

The first instance.

### size

```haxe
var size:Int
```

The number of instances.

### modelViews

```haxe
var modelViews:h3d.Buffer
```

The transforms of the instances.

### batch

```haxe
var batch:h3d.scene.MeshBatch
```

The mesh batch.

### bakedMat

```haxe
var bakedMat:BakedMaterialData
```

The baked material.
