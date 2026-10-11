# Package `hrt.prefab.l3d.modellibrary`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.l3d.modellibrary.AtlasShader

- Fichier : `hrt/prefab/l3d/modellibrary/AtlasShader.hx` — 100 lignes — 1 blocs doc
- Types : `class AtlasShader`
- Héritage : `AtlasShader` extends `hxsl.Shader`
- Utilisé par : `hrt.prefab.l3d.modellibrary.ModelLibrary`

## hrt.prefab.l3d.modellibrary.Batcher

- Fichier : `hrt/prefab/l3d/modellibrary/Batcher.hx` — 131 lignes — 10 blocs doc
- Types : `class Batcher`
- Héritage : `Batcher` extends `h3d.scene.Object`
- Dépend de : `hrt.prefab.l3d.modellibrary.MeshEmitter`, `hrt.prefab.l3d.modellibrary.ModelLibrary` (import/use)
- Utilisé par : `hrt.prefab.l3d.modellibrary.GPUBatcher`, `hrt.prefab.l3d.modellibrary.MeshEmitter`, `hrt.prefab.l3d.modellibrary.ModelLibrary`

## hrt.prefab.l3d.modellibrary.GPUBatcher

- Fichier : `hrt/prefab/l3d/modellibrary/GPUBatcher.hx` — 162 lignes — 14 blocs doc
- Types : `typedef EmitUnit`, `typedef CopyInfo`, `class GPUBatcher`
- Héritage : `GPUBatcher` extends `Batcher`
- Dépend de : `hrt.prefab.l3d.modellibrary.Batcher` (extends/use), `hrt.prefab.l3d.modellibrary.GPUBatcherShaders`, `hrt.prefab.l3d.modellibrary.MeshEmitter`, `hrt.prefab.l3d.modellibrary.ModelLibrary`
- Utilisé par : `hrt.prefab.l3d.modellibrary.ModelLibrary`

## hrt.prefab.l3d.modellibrary.GPUBatcherShaders

- Fichier : `hrt/prefab/l3d/modellibrary/GPUBatcherShaders.hx` — 51 lignes — 3 blocs doc
- Types : `class CopyModelViews`, `class CopyUvTransform`, `class CopyLibraryParams`
- Héritage : `CopyModelViews` extends `hxsl.Shader`, `CopyUvTransform` extends `hxsl.Shader`, `CopyLibraryParams` extends `hxsl.Shader`
- Utilisé par : `hrt.prefab.l3d.modellibrary.GPUBatcher`

## hrt.prefab.l3d.modellibrary.MeshEmitter

- Fichier : `hrt/prefab/l3d/modellibrary/MeshEmitter.hx` — 36 lignes — 1 blocs doc
- Types : `class MeshEmitter`
- Dépend de : `hrt.prefab.l3d.modellibrary.Batcher`, `hrt.prefab.l3d.modellibrary.ModelLibrary` (import/use)
- Utilisé par : `hrt.prefab.l3d.modellibrary.Batcher`, `hrt.prefab.l3d.modellibrary.GPUBatcher`, `hrt.prefab.l3d.modellibrary.ModelLibrary`

## hrt.prefab.l3d.modellibrary.ModelLibrary

- Fichier : `hrt/prefab/l3d/modellibrary/ModelLibrary.hx` — 1128 lignes — 28 blocs doc — contient du `#if`
- Types : `typedef BakedMaterialData`, `class ModelLibraryCache`, `class ModelLibrary`
- Héritage : `ModelLibrary` extends `Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (extends/use), `hrt.prefab.fx.FX`, `hrt.prefab.l3d.modellibrary.AtlasShader`, `hrt.prefab.l3d.modellibrary.Batcher`, `hrt.prefab.l3d.modellibrary.GPUBatcher`, `hrt.prefab.l3d.modellibrary.MeshEmitter`, `hrt.prefab.l3d.modellibrary.Signature`
- Utilisé par : `hrt.prefab.l3d.modellibrary.Batcher`, `hrt.prefab.l3d.modellibrary.GPUBatcher`, `hrt.prefab.l3d.modellibrary.MeshEmitter`, `hrt.prefab.l3d.modellibrary.Signature`

## hrt.prefab.l3d.modellibrary.Signature

- Fichier : `hrt/prefab/l3d/modellibrary/Signature.hx` — 221 lignes — 17 blocs doc — contient du `#if`
- Types : `class Signature`, `class FileSignature`, `class MaterialSignature`, `class ModelSignature`
- Héritage : `ModelSignature` extends `FileSignature`
- Dépend de : `hide.Ide`, `hrt.prefab.Material`, `hrt.prefab.Model`, `hrt.prefab.l3d.modellibrary.ModelLibrary`
- Utilisé par : `hrt.prefab.l3d.modellibrary.ModelLibrary`
