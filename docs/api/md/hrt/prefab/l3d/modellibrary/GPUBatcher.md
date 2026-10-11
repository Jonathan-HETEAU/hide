# hrt.prefab.l3d.modellibrary.GPUBatcher

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · source [`hrt/prefab/l3d/modellibrary/GPUBatcher.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/GPUBatcher.hx)

Extends: [`hrt.prefab.l3d.modellibrary.Batcher`](Batcher.md) → `h3d.scene.Object`

A `Batcher` filled from GPU buffers of transforms, with GPU culling and LOD for large batches.

## Constructor

### new

```haxe
function new(parent:h3d.scene.Object, library:ModelLibrary):Void
```

Creates the batcher.

## Variables

### GPUMeshBatchThreshold

```haxe
var GPUMeshBatchThreshold:Int
```

The number of batches from which `h3d.scene.GPUMeshBatch` is used.

## Methods

### defaultCreateMeshBatch

```haxe
override function defaultCreateMeshBatch(?props:h3d.mat.PbrProps, ?material:h3d.mat.Material):h3d.scene.MeshBatch
```

### emitInstance

```haxe
override function emitInstance(mesh:h3d.scene.Mesh, ?absPos:h3d.Matrix, ?cb:(h3d.scene.MeshBatch, Int) -> Void):Void
```

### emitInstances

```haxe
function emitInstances(emitList:Array<EmitUnit>, ctx:h3d.scene.RenderContext):Void
```

Adds the instances, in a single call. Throws if instances were already added.

## Inherited members

- from [`hrt.prefab.l3d.modellibrary.Batcher`](Batcher.md): `library`, `isStatic`, `emitCountTip`, `iterateBatches`, `emitInstance`, `getPrimitive`, `defaultCreateMeshBatch`, `createMeshBatch`, `setupMeshBatch`
