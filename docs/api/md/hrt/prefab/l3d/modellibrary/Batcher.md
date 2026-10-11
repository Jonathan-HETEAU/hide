# hrt.prefab.l3d.modellibrary.Batcher

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · source [`hrt/prefab/l3d/modellibrary/Batcher.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/Batcher.hx)

Extends: `h3d.scene.Object`

Subclasses: [`hrt.prefab.l3d.modellibrary.GPUBatcher`](GPUBatcher.md)

Renders meshes of a `ModelLibrary` with a mesh batch per material configuration.

## Variables

### library

```haxe
var library:ModelLibrary
```

The library.

### isStatic

```haxe
var isStatic:Bool
```

Makes the batches static (fixed position, static shadows).

### emitCountTip

```haxe
var emitCountTip:Int
```

The expected number of instances, to preallocate the batches (`-1` for none).

## Methods

### iterateBatches

```haxe
function iterateBatches(f:() -> Void):Void
```

Calls `f` for each mesh batch.

### emitInstance

```haxe
function emitInstance(mesh:h3d.scene.Mesh, ?absPos:h3d.Matrix, ?cb:(h3d.scene.MeshBatch, Int) -> Void):Void
```

Adds an instance of a mesh of the library. Throws if the mesh is not in the library.

### getPrimitive

```haxe
function getPrimitive():h3d.prim.HMDModel
```

Returns the primitive of the library.

### defaultCreateMeshBatch

```haxe
function defaultCreateMeshBatch(?props:h3d.mat.PbrProps, ?material:h3d.mat.Material):h3d.scene.MeshBatch
```

Creates a mesh batch for a material.

### createMeshBatch

```haxe
dynamic function createMeshBatch(batcher:Batcher, ?props:h3d.mat.PbrProps, ?material:h3d.mat.Material):h3d.scene.MeshBatch
```

Creates a mesh batch for a material. Calls `defaultCreateMeshBatch` by default.

### setupMeshBatch

```haxe
function setupMeshBatch(batch:h3d.scene.MeshBatch, ?props:h3d.mat.PbrProps, ?material:h3d.mat.Material):Void
```

Copies the shaders of a material to a mesh batch and sets up its rendering.
