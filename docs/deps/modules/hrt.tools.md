# Package `hrt.tools`

[← retour](../DEPENDENCIES.md)

## hrt.tools.CdbUtils

- Fichier : `hrt/tools/CdbUtils.hx` — 79 lignes — 8 blocs doc
- Types : `enum PathPart`, `typedef Path`, `class CdbUtils`
- Utilisé par : `hide.comp.cdb.Editor`, `hide.view.CdbTable`, `hrt.tools.FileManager`

## hrt.tools.ClassUtils

- Fichier : `hrt/tools/ClassUtils.hx` — 53 lignes — 4 blocs doc
- Types : `class ClassUtils`
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.Prefab`, `hrt.prefab.Prefab`, `hrt.ui.HuiPrefabInspectorHeader`

## hrt.tools.Delayer

- Fichier : `hrt/tools/Delayer.hx` — 35 lignes — 3 blocs doc
- Types : `class Delayer`
- Utilisé par : `hrt.tools.FileManager`

## hrt.tools.FileManager

- Fichier : `hrt/tools/FileManager.hx` — 1579 lignes — 25 blocs doc — contient du `#if`
- Types : `enum_abstract GenToManagerCommand`, `enum_abstract ManagerToGenCommand`, `typedef GenToManagerSuccessMessage`, `enum FileKind`, `enum VCSStatus`, `class FileEntry`, `typedef MiniatureReadyCallback`, `typedef FileChangeCallback`, `class FileManager`, `class FilterPathContext`
- Dépend de : `hide.Ide`, `hide.Search`, `hide.ThumbnailGeneratorApp`, `hrt.prefab.Prefab`, `hrt.tools.CdbUtils`, `hrt.tools.Delayer`, `hrt.tools.ProcessAsync`
- Utilisé par : `hide.Ide`, `hide.ThumbnailGeneratorApp`, `hide.view.Prefab`, `hrt.ui.HuiFileBrowser`

## hrt.tools.Gizmo

- Fichier : `hrt/tools/Gizmo.hx` — 734 lignes — 47 blocs doc — contient du `#if`
- Types : `enum EditMode`, `enum Handle`, `class RotateAxisShader`, `class RotateSphereShader`, `class Gizmo`
- Héritage : `RotateAxisShader` extends `hxsl.Shader`, `RotateSphereShader` extends `hxsl.Shader`, `Gizmo` extends `h3d.scene.Object`
- Dépend de : `hrt.ui.HuiCommands`
- Utilisé par : `hide.comp.SceneEditor`, `hide.comp.ShapeEditor`, `hide.view.FXEditor`, `hide.view.Prefab`, `hrt.ui.HuiSceneEditor`, `hrt.ui.HuiShapeEditor`, `hrt.ui.HuiToolbar`

## hrt.tools.GraphicsTools

- Fichier : `hrt/tools/GraphicsTools.hx` — 18 lignes — 2 blocs doc
- Types : `class GraphicsTools`
- Utilisé par : `hrt.prefab.fx.Emitter`

## hrt.tools.Grid

- Fichier : `hrt/tools/Grid.hx` — 178 lignes — 6 blocs doc
- Types : `class GridShader`, `class Grid`
- Héritage : `GridShader` extends `hxsl.Shader`, `Grid` extends `h3d.scene.Object`
- Utilisé par : `hrt.ui.HuiSceneEditor`

## hrt.tools.Macros

- Fichier : `hrt/tools/Macros.hx` — 167 lignes — 10 blocs doc — contient du `#if`
- Types : `typedef ForwardConfig`, `interface ForwardDecls`, `class Macros`
- Utilisé par : `hrt.ui.HuiElement`

## hrt.tools.MapUtils

- Fichier : `hrt/tools/MapUtils.hx` — 23 lignes — 2 blocs doc
- Types : `class MapUtils`
- Utilisé par : `hide.ThumbnailGeneratorApp`, `hide.comp.FancyGallery`, `hide.comp.FancyTree`, `hide.comp.PropsEditor`, `hide.comp.SceneEditor`, `hide.tools.ThumbnailGenerator`, `hide.view.FXEditor`, `hide.view.GraphEditor`, `hide.view.Prefab`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.BlendSpace2D`, `hrt.animgraph.nodes.Input`, `hrt.prefab.Diff`, `hrt.prefab.fx.FX`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderNodeHxsl`, `hrt.ui.HuiTree`

## hrt.tools.MathUtils

- Fichier : `hrt/tools/MathUtils.hx` — 21 lignes — 2 blocs doc
- Types : `class MathUtils`

## hrt.tools.OneToMany

- Fichier : `hrt/tools/OneToMany.hx` — 116 lignes — 11 blocs doc
- Types : `typedef Left`, `typedef Right`, `class OneToMany`
- Utilisé par : `hide.view.GraphEditor`

## hrt.tools.ProcessAsync

- Fichier : `hrt/tools/ProcessAsync.hx` — 30 lignes — 2 blocs doc
- Types : `class ProcessAsync`
- Utilisé par : `hrt.tools.FileManager`

## hrt.tools.Undo

- Fichier : `hrt/tools/Undo.hx` — 176 lignes — 18 blocs doc
- Types : `typedef Action`, `class Undo`
- Utilisé par : `hide.view.Prefab`, `hide.view.PrefabUndo`, `hrt.ui.HuiCdbTable`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiView`

## hrt.tools.ViewportAxis

- Fichier : `hrt/tools/ViewportAxis.hx` — 174 lignes — 5 blocs doc
- Types : `class ViewportAxis`
- Héritage : `ViewportAxis` extends `h2d.Object`
- Utilisé par : `hide.comp.SceneEditor`, `hrt.ui.HuiSceneEditor`
