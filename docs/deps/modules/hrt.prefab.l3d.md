# Package `hrt.prefab.l3d`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.l3d.AnimSpeedControl

- Fichier : `hrt/prefab/l3d/AnimSpeedControl.hx` — 50 lignes — 1 blocs doc — contient du `#if`
- Types : `class AnimSpeedControl`
- Héritage : `AnimSpeedControl` extends `hrt.prefab.Prefab`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (extends/use)

## hrt.prefab.l3d.Billboard

- Fichier : `hrt/prefab/l3d/Billboard.hx` — 99 lignes — 6 blocs doc
- Types : `class BillboardShader`, `class BillboardObj`
- Héritage : `BillboardShader` extends `hxsl.Shader`, `BillboardObj` extends `h3d.scene.Mesh`
- Dépend de : `hrt.prefab.l3d.Polygon`
- Utilisé par : `hrt.impl.EditorTools`

## hrt.prefab.l3d.Box

- Fichier : `hrt/prefab/l3d/Box.hx` — 81 lignes — 3 blocs doc — contient du `#if`
- Types : `class Box`
- Héritage : `Box` extends `Object3D`
- Dépend de : `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.l3d.Polygon`

## hrt.prefab.l3d.Camera

- Fichier : `hrt/prefab/l3d/Camera.hx` — 542 lignes — 8 blocs doc — contient du `#if`
- Types : `class CameraSyncObject`, `class Camera`
- Héritage : `CameraSyncObject` extends `h3d.scene.Object`, `Camera` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.rfx.Border`, `hrt.prefab.rfx.RendererFX` (import/use)
- Utilisé par : `hrt.prefab.l3d.GameController`, `hrt.prefab.l3d.Trails`

## hrt.prefab.l3d.Constraint

- Fichier : `hrt/prefab/l3d/Constraint.hx` — 131 lignes — 5 blocs doc — contient du `#if`
- Types : `class Constraint`
- Héritage : `Constraint` extends `Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab` (extends/use)
- Utilisé par : `hrt.prefab.fx.FX`

## hrt.prefab.l3d.Decal

- Fichier : `hrt/prefab/l3d/Decal.hx` — 531 lignes — 7 blocs doc — contient du `#if`
- Types : `enum_abstract DecalMode`, `class Decal`
- Héritage : `Decal` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.EditorTools`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.l3d.Polygon`

## hrt.prefab.l3d.Environment

- Fichier : `hrt/prefab/l3d/Environment.hx` — 255 lignes — 9 blocs doc — contient du `#if`
- Types : `class Environment`
- Héritage : `Environment` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.RenderProps`

## hrt.prefab.l3d.GameController

- Fichier : `hrt/prefab/l3d/GameController.hx` — 281 lignes — 15 blocs doc — contient du `#if`
- Types : `class GameController`
- Héritage : `GameController` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.Model`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.l3d.Camera`

## hrt.prefab.l3d.HeightMap

- Fichier : `hrt/prefab/l3d/HeightMap.hx` — 1465 lignes — 56 blocs doc — contient du `#if`
- Types : `enum_abstract HeightMaPTexturePathKind`, `class HeightMapShader`, `class HeightMapTileBakeShader`, `class HeightMapTile`, `class HeightMapMesh`, `enum_abstract SplatMode`, `typedef TextureItem`, `class HeightMap`, `class HeightGrid`
- Héritage : `HeightMapShader` extends `hxsl.Shader`, `HeightMapTileBakeShader` extends `h3d.shader.ScreenShader`, `HeightMapMesh` extends `h3d.scene.Object`, `HeightMap` extends `Object3D`, `HeightGrid` extends `h3d.prim.Primitive`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Component`, `hide.kit.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.Instance

- Fichier : `hrt/prefab/l3d/Instance.hx` — 184 lignes — 5 blocs doc — contient du `#if`
- Types : `class Instance`
- Héritage : `Instance` extends `Object3D`
- Dépend de : `hide.comp.cdb.DataFiles`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Resource`

## hrt.prefab.l3d.KitTest

- Fichier : `hrt/prefab/l3d/KitTest.hx` — 1029 lignes — 30 blocs doc — contient du `#if`
- Types : `typedef SubStruct`, `enum TestEnum`, `enum_abstract TestAbstractString`, `enum_abstract TestAbstractInt`, `typedef ListItem`, `class KitTestTool1`, `class KitTestTool2`, `class KitTest`
- Héritage : `KitTestTool1` extends `hrt.prefab.editor.Tool`, `KitTestTool2` extends `hrt.prefab.editor.Tool`, `KitTest` extends `Object3D`
- Dépend de : `hide.kit.Button`, `hide.kit.Element`, `hide.kit.Macros`, `hide.kit.Select`, `hide.kit.Slider`, `hide.prefab.HideProps`, `hrt.impl.Gradient`, `hrt.impl.Macros`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.editor.Tool` (extends/use)

## hrt.prefab.l3d.Layers2D

- Fichier : `hrt/prefab/l3d/Layers2D.hx` — 1515 lignes — 19 blocs doc — contient du `#if`
- Types : `typedef Layer2DValue`, `typedef Layer2D`, `class LayerView2DRFXShader`, `class Layer2DRFX`, `class Layers2DTool`, `class Layers2D`
- Héritage : `LayerView2DRFXShader` extends `h3d.shader.ScreenShader`, `Layer2DRFX` extends `hrt.prefab.rfx.RendererFX`, `Layers2DTool` extends `hrt.prefab.editor.Tool`, `Layers2D` extends `hrt.prefab.Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.SceneEditor`, `hide.kit.Element`, `hide.kit.Slider`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hide.ui.UndoHistory`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.editor.Tool` (extends/use), `hrt.prefab.l3d.Spray`, `hrt.prefab.rfx.RendererFX` (extends/use)

## hrt.prefab.l3d.Level3D

- Fichier : `hrt/prefab/l3d/Level3D.hx` — 21 lignes — 1 blocs doc — contient du `#if`
- Types : `class Level3D`
- Héritage : `Level3D` extends `Object3D`
- Dépend de : `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.LocalVolumetricLighting

- Fichier : `hrt/prefab/l3d/LocalVolumetricLighting.hx` — 529 lignes — 17 blocs doc — contient du `#if`
- Types : `class LocalVolumetricShader`, `class LocalVolumetricLightingObject`, `class LocalVolumetricLighting`
- Héritage : `LocalVolumetricShader` extends `hxsl.Shader`, `LocalVolumetricLightingObject` extends `h3d.scene.Object`, `LocalVolumetricLighting` extends `hrt.prefab.Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.MeshGenerator

- Fichier : `hrt/prefab/l3d/MeshGenerator.hx` — 798 lignes — 25 blocs doc — contient du `#if`
- Types : `class Socket`, `class MeshPart`, `class MeshGeneratorRoot`, `class MeshGenerator`
- Héritage : `MeshGeneratorRoot` extends `h3d.scene.Object`, `MeshGenerator` extends `Object3D`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hide.ui.UndoHistory`, `hrt.prefab.Cache`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.MeshSpray

- Fichier : `hrt/prefab/l3d/MeshSpray.hx` — 1135 lignes — 11 blocs doc — contient du `#if`
- Types : `typedef BatchData`, `class MeshSprayObject`, `class MeshSpray`
- Héritage : `MeshSprayObject` extends `Spray.SprayObject`, `MeshSpray` extends `Spray`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hide.comp.SceneEditor`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Model`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.l3d.Spray` (extends/use), `hrt.ui.HuiMenu`
- Utilisé par : `hrt.prefab.l3d.Spray`

## hrt.prefab.l3d.Particles3D

- Fichier : `hrt/prefab/l3d/Particles3D.hx` — 233 lignes — 1 blocs doc — contient du `#if`
- Types : `class Particles3D`
- Héritage : `Particles3D` extends `Object3D`
- Dépend de : `hide.Element`, `hide.comp.ContextMenu`, `hide.prefab.EditContext`, `hrt.prefab.ContextShared`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hide.comp.SceneEditor`

## hrt.prefab.l3d.Polygon

- Fichier : `hrt/prefab/l3d/Polygon.hx` — 1383 lignes — 42 blocs doc — contient du `#if`
- Types : `enum Shape`, `typedef PrimCache`, `class Polygon`, `class GenSDF`, `class WorldProjectedCollider`, `class ProjectedDisplay`, `class PolygonEditor2`, `class PolygonEditorHandle2`
- Héritage : `Polygon` extends `Object3D`, `GenSDF` extends `hxsl.Shader`, `WorldProjectedCollider` extends `h3d.col.Collider`, `ProjectedDisplay` extends `h3d.scene.Object`, `PolygonEditor2` extends `hrt.prefab.editor.Tool`, `PolygonEditorHandle2` extends `h3d.scene.Object`
- Dépend de : `hide.Element`, `hide.kit.Element`, `hide.kit.List`, `hide.prefab.EditContext` (import/use), `hide.prefab.HideProps` (import/use), `hide.prefab.PolygonEditor`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.editor.Tool` (extends/use), `hrt.prefab.l3d.Box`, `hrt.prefab.l3d.Decal`, `hrt.shader.SDF`
- Utilisé par : `hide.prefab.PolygonEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.fx.Emitter`, `hrt.prefab.l3d.Billboard`

## hrt.prefab.l3d.PrefabSpray

- Fichier : `hrt/prefab/l3d/PrefabSpray.hx` — 405 lignes — 1 blocs doc — contient du `#if`
- Types : `class PrefabSpray`
- Héritage : `PrefabSpray` extends `Spray`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.l3d.Spray` (extends/use)

## hrt.prefab.l3d.Spline

- Fichier : `hrt/prefab/l3d/Spline.hx` — 1866 lignes — 49 blocs doc — contient du `#if`
- Types : `enum HandleType`, `enum SplineShape`, `class SplineObject`, `class SplinePoint`, `class Spline`
- Héritage : `SplineObject` extends `h3d.scene.Object`, `Spline` extends `hrt.prefab.Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`
- Utilisé par : `hrt.prefab.l3d.SplineMesh`, `hrt.prefab.l3d.SplineMeshSpawner`

## hrt.prefab.l3d.SplineMesh

- Fichier : `hrt/prefab/l3d/SplineMesh.hx` — 328 lignes — 4 blocs doc — contient du `#if`
- Types : `class SplineUV`, `class SplineMeshObject`, `class SplineMesh`
- Héritage : `SplineUV` extends `hxsl.Shader`, `SplineMeshObject` extends `h3d.scene.Mesh`, `SplineMesh` extends `hrt.prefab.Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.l3d.Spline`
- Utilisé par : `hrt.prefab.l3d.Spline`

## hrt.prefab.l3d.SplineMeshSpawner

- Fichier : `hrt/prefab/l3d/SplineMeshSpawner.hx` — 184 lignes — 8 blocs doc — contient du `#if`
- Types : `class SplineMeshSpawnerObject`, `typedef InstanceData`, `class SplineMeshSpawner`
- Héritage : `SplineMeshSpawnerObject` extends `h3d.scene.Object`, `SplineMeshSpawner` extends `hrt.prefab.Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.l3d.Spline`
- Utilisé par : `hrt.prefab.l3d.Spline`

## hrt.prefab.l3d.Spray

- Fichier : `hrt/prefab/l3d/Spray.hx` — 742 lignes — 32 blocs doc — contient du `#if`
- Types : `typedef Source`, `typedef Set`, `typedef SetGroup`, `typedef SprayConfig`, `class SprayObject`, `class Spray`
- Héritage : `SprayObject` extends `h3d.scene.Object`, `Spray` extends `Object3D`
- Dépend de : `hide.Element`, `hide.comp.SceneEditor`, `hide.prefab.EditContext`, `hide.ui.UndoHistory`, `hrt.prefab.Model`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Reference`, `hrt.prefab.l3d.MeshSpray`
- Utilisé par : `hrt.prefab.Object3D`, `hrt.prefab.l3d.Layers2D`, `hrt.prefab.l3d.MeshSpray`, `hrt.prefab.l3d.PrefabSpray`

## hrt.prefab.l3d.Text3D

- Fichier : `hrt/prefab/l3d/Text3D.hx` — 371 lignes — 12 blocs doc — contient du `#if`
- Types : `class Text3DPrimitive`, `class SignedDistanceField3D`, `class Text3DMesh`, `class Text3D`
- Héritage : `Text3DPrimitive` extends `h2d.TileGroup.TileLayerContent`, `SignedDistanceField3D` extends `hxsl.Shader`, `Text3DMesh` extends `h3d.scene.Mesh`, `Text3D` extends `Object3D`
- Dépend de : `hide.Element`, `hide.comp.FileSelect`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.Trail

- Fichier : `hrt/prefab/l3d/Trail.hx` — 58 lignes — 1 blocs doc — contient du `#if`
- Types : `class Trail`
- Héritage : `Trail` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`

## hrt.prefab.l3d.Trails

- Fichier : `hrt/prefab/l3d/Trails.hx` — 1376 lignes — 87 blocs doc — contient du `#if`
- Types : `class TrailPoint`, `class TrailHead`, `enum TrailOrientation`, `enum UVMode`, `enum UVRepeat`, `typedef PointsArray`, `typedef TrailsArray`, `class TrailObj`, `class Trails`
- Héritage : `TrailObj` extends `h3d.scene.Mesh`, `Trails` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.EditorTools`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.fx.FX`, `hrt.prefab.l3d.Camera`, `hrt.shader.BaseTrails`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.FX`
