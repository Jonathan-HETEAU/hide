# Package `hrt.prefab.l3d.modellibrary`

[← API index](../../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AtlasShader`](AtlasShader.md) | class | Renders the meshes of a `ModelLibrary` with its texture atlas. |
| [`BakedMaterialData`](BakedMaterialData.md) | typedef | A material of a mesh baked in a `ModelLibrary`. |
| [`Batcher`](Batcher.md) | class | Renders meshes of a `ModelLibrary` with a mesh batch per material configuration. |
| [`CopyInfo`](CopyInfo.md) | typedef | A copy of transforms into a mesh batch. |
| [`CopyLibraryParams`](CopyLibraryParams.md) | class | Copies the library parameters of the instances into a mesh batch. |
| [`CopyModelViews`](CopyModelViews.md) | class | Copies the transforms of the instances into a mesh batch. |
| [`CopyUvTransform`](CopyUvTransform.md) | class | Copies the atlas texture coordinates of the instances into a mesh batch. |
| [`EmitUnit`](EmitUnit.md) | typedef | Instances of a mesh, with their transforms in a GPU buffer. |
| [`FileSignature`](FileSignature.md) | class | The path and SHA-1 of a file. |
| [`GPUBatcher`](GPUBatcher.md) | class | A `Batcher` filled from GPU buffers of transforms, with GPU culling and LOD for large batches. |
| [`MaterialSignature`](MaterialSignature.md) | class | The signature of a material. |
| [`MeshEmitter`](MeshEmitter.md) | class | Emits the instances of a mesh of a `ModelLibrary` into a `Batcher`. |
| [`ModelLibrary`](ModelLibrary.md) | class | Bakes its children models into a single model and texture atlas, to render many instances with few draw calls (see `Batcher`). |
| [`ModelLibraryCache`](ModelLibraryCache.md) | class | The loaded data of a `ModelLibrary`, shared by its clones. |
| [`ModelSignature`](ModelSignature.md) | class | The signature of a model and its materials. |
| [`Signature`](Signature.md) | class | The signature of the sources of a `ModelLibrary`, to know if it must be baked again. |
