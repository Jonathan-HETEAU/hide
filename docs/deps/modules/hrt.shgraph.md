# Package `hrt.shgraph`

[← retour](../DEPENDENCIES.md)

## hrt.shgraph.AstTools

- Fichier : `hrt/shgraph/AstTools.hx` — 179 lignes — 19 blocs doc
- Types : `class AstTools`
- Utilisé par : `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderCustomGlobal`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.Variables`, `hrt.shgraph.import`, `hrt.shgraph.nodes.Cond`, `hrt.shgraph.nodes.IfCondition`, `hrt.shgraph.nodes.VarRead`, `hrt.shgraph.nodes.VarWrite`

## hrt.shgraph.CustomVarChooser

- Fichier : `hrt/shgraph/CustomVarChooser.hx` — 90 lignes — 5 blocs doc — contient du `#if`
- Types : `class CustomVarChooser`
- Héritage : `CustomVarChooser` extends `hide.comp.Component`
- Dépend de : `hide.Element`, `hide.comp.Component` (extends/use)

## hrt.shgraph.Functions

- Fichier : `hrt/shgraph/Functions.hx` — 13 lignes — 1 blocs doc
- Types : `class Functions`
- Héritage : `Functions` extends `ShaderNodeHxsl`
- Dépend de : `hrt.shgraph.ShaderNodeHxsl` (extends/use)
- Utilisé par : `hrt.shgraph.nodes.SimpleNoise`

## hrt.shgraph.Macros

- Fichier : `hrt/shgraph/Macros.hx` — 231 lignes — 1 blocs doc — contient du `#if`
- Types : `class Macros`
- Dépend de : `hrt.shgraph.SgHxslVar`, `hrt.shgraph.ShaderNode`
- Utilisé par : `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderNodeHxsl`

## hrt.shgraph.NodeGenContext

- Fichier : `hrt/shgraph/NodeGenContext.hx` — 513 lignes — 24 blocs doc
- Types : `class NodeGenContextSubGraph`, `class NodeGenContext`
- Héritage : `NodeGenContextSubGraph` extends `NodeGenContext`
- Dépend de : `hrt.shgraph.AstTools` (import/use), `hrt.shgraph.ShaderGraph` (import/use), `hrt.shgraph.ShaderNode` (import/use), `hrt.shgraph.Utils` (using), `hrt.shgraph.Variables`, `hrt.tools.MapUtils` (import/use)
- Utilisé par : `hrt.shgraph.ShaderConst`, `hrt.shgraph.ShaderCustomGlobal`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderInput`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderNodeHxsl`, `hrt.shgraph.ShaderOutput`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.ShaderParticleInput`, `hrt.shgraph.nodes.BoolConst`, `hrt.shgraph.nodes.Color`, `hrt.shgraph.nodes.Comment`, `hrt.shgraph.nodes.Cond`, `hrt.shgraph.nodes.FloatConst`, `hrt.shgraph.nodes.IfCondition`, `hrt.shgraph.nodes.Preview`, `hrt.shgraph.nodes.Reroute`, `hrt.shgraph.nodes.SubGraph`, `hrt.shgraph.nodes.Text`, `hrt.shgraph.nodes.VarRead`, `hrt.shgraph.nodes.VarWrite`

## hrt.shgraph.Operation

- Fichier : `hrt/shgraph/Operation.hx` — 49 lignes — 1 blocs doc
- Types : `class Operation`
- Héritage : `Operation` extends `ShaderNodeHxsl`
- Dépend de : `hrt.shgraph.ShaderNodeHxsl` (extends/use)
- Utilisé par : `hrt.shgraph.nodes.Add`, `hrt.shgraph.nodes.AlphaOver`, `hrt.shgraph.nodes.AutoAlpha`, `hrt.shgraph.nodes.PolarCoordinates`, `hrt.shgraph.nodes.Project`, `hrt.shgraph.nodes.Remap`, `hrt.shgraph.nodes.Rotate`, `hrt.shgraph.nodes.RotateAboutAxis`

## hrt.shgraph.Random

- Fichier : `hrt/shgraph/Random.hx` — 30 lignes — 1 blocs doc
- Types : `class Random`
- Héritage : `Random` extends `ShaderNodeHxsl`
- Dépend de : `hrt.shgraph.ShaderNodeHxsl` (extends/use)

## hrt.shgraph.SgHxslVar

- Fichier : `hrt/shgraph/SgHxslVar.hx` — 53 lignes — 12 blocs doc
- Types : `enum ShaderDefInput`, `enum SgHxslVar`
- Utilisé par : `hrt.shgraph.Macros`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderNodeHxsl`

## hrt.shgraph.ShaderCameraInput

- Fichier : `hrt/shgraph/ShaderCameraInput.hx` — 62 lignes — 0 blocs doc — contient du `#if`

## hrt.shgraph.ShaderConst

- Fichier : `hrt/shgraph/ShaderConst.hx` — 50 lignes — 2 blocs doc — contient du `#if`
- Types : `class ShaderConst`
- Héritage : `ShaderConst` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderNode` (extends/use)
- Utilisé par : `hrt.shgraph.nodes.BoolConst`, `hrt.shgraph.nodes.Color`, `hrt.shgraph.nodes.FloatConst`

## hrt.shgraph.ShaderCustomGlobal

- Fichier : `hrt/shgraph/ShaderCustomGlobal.hx` — 125 lignes — 3 blocs doc — contient du `#if`
- Types : `class ShaderCustomGlobal`
- Héritage : `ShaderCustomGlobal` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.AstTools`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use)

## hrt.shgraph.ShaderException

- Fichier : `hrt/shgraph/ShaderException.hx` — 39 lignes — 6 blocs doc
- Types : `class ShaderException`
- Utilisé par : `hide.view.shadereditor.ShaderEditor`

## hrt.shgraph.ShaderGlobalInput

- Fichier : `hrt/shgraph/ShaderGlobalInput.hx` — 101 lignes — 4 blocs doc — contient du `#if`
- Types : `class ShaderGlobalInput`
- Héritage : `ShaderGlobalInput` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.AstTools`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use), `hrt.shgraph.Variables`

## hrt.shgraph.ShaderGraph

- Fichier : `hrt/shgraph/ShaderGraph.hx` — 1526 lignes — 101 blocs doc — contient du `#if`
- Types : `enum_abstract AngleUnit`, `enum SgType`, `typedef ShaderNodeDefInVar`, `typedef ShaderNodeDefOutVar`, `typedef ShaderNodeDef`, `typedef Edge`, `typedef Connection`, `typedef Parameter`, `enum Domain`, `class ExternVarDef`, `class ShaderGraphVariable`, `class ShaderGraphGenContext`, `class ShaderGraphCacheEntry`, `class ShaderGraph`, `class Graph`
- Héritage : `ShaderGraph` extends `hrt.prefab.Prefab`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.tools.FileManager`, `hrt.impl.TextureType`, `hrt.prefab.Cache`, `hrt.prefab.Prefab` (extends/use), `hrt.shgraph.AstTools` (import/use), `hrt.shgraph.NodeGenContext`, `hrt.shgraph.SgHxslVar` (import/use), `hrt.shgraph.ShaderNode`, `hrt.shgraph.Variables`, `hrt.shgraph.nodes.Reroute`, `hrt.shgraph.nodes.ShaderVar`, `hrt.shgraph.nodes.VarRead`, `hrt.shgraph.nodes.VarWrite`
- Utilisé par : `hide.view.GraphEditor`, `hide.view.shadereditor.Box`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.DynamicShader`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderCustomGlobal`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderInput`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderNodeHxsl`, `hrt.shgraph.ShaderOutput`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.import`, `hrt.shgraph.nodes.Rotate`, `hrt.shgraph.nodes.RotateAboutAxis`, `hrt.shgraph.nodes.SubGraph`

## hrt.shgraph.ShaderInput

- Fichier : `hrt/shgraph/ShaderInput.hx` — 148 lignes — 7 blocs doc — contient du `#if`
- Types : `enum InputKind`, `class ShaderInput`
- Héritage : `ShaderInput` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use), `hrt.shgraph.Variables`

## hrt.shgraph.ShaderNode

- Fichier : `hrt/shgraph/ShaderNode.hx` — 513 lignes — 54 blocs doc — contient du `#if`
- Types : `class AlphaPreview`, `typedef InputInfo`, `typedef OutputInfo`, `typedef VariableDecl`, `typedef AliasInfo`, `class ShaderNode`
- Héritage : `AlphaPreview` extends `hxsl.Shader`
- Dépend de : `hide.Config`, `hide.Element`, `hide.view.GraphEditor`, `hide.view.GraphInterface` (import/use), `hide.view.shadereditor.ShaderEditor`, `hrt.shgraph.AstTools` (import), `hrt.shgraph.Macros`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.SgHxslVar` (import/use), `hrt.shgraph.ShaderGraph` (import/use), `hrt.shgraph.Utils` (using)
- Utilisé par : `hide.view.GraphEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.shgraph.Macros`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderConst`, `hrt.shgraph.ShaderCustomGlobal`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderInput`, `hrt.shgraph.ShaderNodeHxsl`, `hrt.shgraph.ShaderOutput`, `hrt.shgraph.ShaderParam`, `hrt.shgraph.ShaderParticleInput`, `hrt.shgraph.nodes.BoolConst`, `hrt.shgraph.nodes.Color`, `hrt.shgraph.nodes.Comment`, `hrt.shgraph.nodes.Cond`, `hrt.shgraph.nodes.FloatConst`, `hrt.shgraph.nodes.IfCondition`, `hrt.shgraph.nodes.Preview`, `hrt.shgraph.nodes.Reroute`, `hrt.shgraph.nodes.ShaderVar`, `hrt.shgraph.nodes.SubGraph`, `hrt.shgraph.nodes.Text`, `hrt.shgraph.nodes.VarRead`, `hrt.shgraph.nodes.VarWrite`

## hrt.shgraph.ShaderNodeHxsl

- Fichier : `hrt/shgraph/ShaderNodeHxsl.hx` — 388 lignes — 12 blocs doc
- Types : `typedef FunctionCache`, `typedef CacheEntry`, `class CustomSerializer`, `class ShaderNodeHxsl`
- Héritage : `CustomSerializer` extends `hxsl.Serializer`, `ShaderNodeHxsl` extends `ShaderNode`
- Dépend de : `hrt.shgraph.Macros`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.SgHxslVar`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use), `hrt.shgraph.Utils` (using), `hrt.tools.MapUtils` (import/use)
- Utilisé par : `hrt.shgraph.Functions`, `hrt.shgraph.Operation`, `hrt.shgraph.Random`, `hrt.shgraph.nodes.Abs`, `hrt.shgraph.nodes.Acos`, `hrt.shgraph.nodes.Asin`, `hrt.shgraph.nodes.Atan`, `hrt.shgraph.nodes.Atan2`, `hrt.shgraph.nodes.BandMask`, `hrt.shgraph.nodes.CameraToScreen`, `hrt.shgraph.nodes.CameraToWorld`, `hrt.shgraph.nodes.Ceil`, `hrt.shgraph.nodes.Clamp`, `hrt.shgraph.nodes.Combine`, `hrt.shgraph.nodes.CombineAlpha`, `hrt.shgraph.nodes.Contrast`, `hrt.shgraph.nodes.Cos`, `hrt.shgraph.nodes.Cross`, `hrt.shgraph.nodes.DecalProjection`, `hrt.shgraph.nodes.Deg2Rad`, `hrt.shgraph.nodes.Dissolve`, `hrt.shgraph.nodes.Distance`, `hrt.shgraph.nodes.Divide`, `hrt.shgraph.nodes.Dot`, `hrt.shgraph.nodes.Exp`, `hrt.shgraph.nodes.Flipbook`, `hrt.shgraph.nodes.Floor`, `hrt.shgraph.nodes.Fract`, `hrt.shgraph.nodes.Fresnel`, `hrt.shgraph.nodes.FrontFacing`, `hrt.shgraph.nodes.InvLerp`, `hrt.shgraph.nodes.Invert`, `hrt.shgraph.nodes.Length`, `hrt.shgraph.nodes.LinearDepth`, `hrt.shgraph.nodes.Log`, `hrt.shgraph.nodes.Luminance`, `hrt.shgraph.nodes.MainLightColor`, `hrt.shgraph.nodes.MainLightDirection`, `hrt.shgraph.nodes.Max`, `hrt.shgraph.nodes.Min`, `hrt.shgraph.nodes.Mix`, `hrt.shgraph.nodes.Mod`, `hrt.shgraph.nodes.Multiply`, `hrt.shgraph.nodes.NormalStrength`, `hrt.shgraph.nodes.Normalize`, `hrt.shgraph.nodes.ObjectPos`, `hrt.shgraph.nodes.ObjectScale`, `hrt.shgraph.nodes.ObjectToTangent`, `hrt.shgraph.nodes.ObjectToWorld`, `hrt.shgraph.nodes.OneMinus`, `hrt.shgraph.nodes.Parallax`, `hrt.shgraph.nodes.Pow`, `hrt.shgraph.nodes.Rad2Deg`, `hrt.shgraph.nodes.Random`, `hrt.shgraph.nodes.Random2D`, `hrt.shgraph.nodes.Random3D`, `hrt.shgraph.nodes.Sampler`, `hrt.shgraph.nodes.Saturate`, `hrt.shgraph.nodes.SceneDepth`, `hrt.shgraph.nodes.SceneDepthToWorld`, `hrt.shgraph.nodes.SceneNormal`, `hrt.shgraph.nodes.ScenePos`, `hrt.shgraph.nodes.ScreenToWorld`, `hrt.shgraph.nodes.Sign`, `hrt.shgraph.nodes.SimpleNoise`, `hrt.shgraph.nodes.Sin`, `hrt.shgraph.nodes.SmoothStep`, `hrt.shgraph.nodes.Split`, `hrt.shgraph.nodes.Sqrt`, `hrt.shgraph.nodes.SquareWave`, `hrt.shgraph.nodes.Step`, `hrt.shgraph.nodes.StripAlpha`, `hrt.shgraph.nodes.Subtract`, `hrt.shgraph.nodes.Tan`, `hrt.shgraph.nodes.TangentToObject`, `hrt.shgraph.nodes.TangentToWorld`, `hrt.shgraph.nodes.TilingAndOffset`, `hrt.shgraph.nodes.TriangleWave`, `hrt.shgraph.nodes.TriplanarParams`, `hrt.shgraph.nodes.UVScroll`, `hrt.shgraph.nodes.UnpackNormal`, `hrt.shgraph.nodes.UvToScreen`, `hrt.shgraph.nodes.Vec2`, `hrt.shgraph.nodes.Vec3`, `hrt.shgraph.nodes.Vec4`, `hrt.shgraph.nodes.WorldToCamera`, `hrt.shgraph.nodes.WorldToObject`, `hrt.shgraph.nodes.WorldToScreen`, `hrt.shgraph.nodes.WorldToTangent`

## hrt.shgraph.ShaderOutput

- Fichier : `hrt/shgraph/ShaderOutput.hx` — 120 lignes — 5 blocs doc — contient du `#if`
- Types : `class ShaderOutput`
- Héritage : `ShaderOutput` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use), `hrt.shgraph.Variables`

## hrt.shgraph.ShaderParam

- Fichier : `hrt/shgraph/ShaderParam.hx` — 81 lignes — 4 blocs doc — contient du `#if`
- Types : `class ShaderParam`
- Héritage : `ShaderParam` extends `ShaderNode`
- Dépend de : `hide.comp.ContextMenu`, `hide.view.GraphInterface`, `hide.view.shadereditor.ShaderEditor`, `hrt.shgraph.AstTools`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderNode` (extends/use)
- Utilisé par : `hide.view.shadereditor.ShaderEditor`

## hrt.shgraph.ShaderParticleInput

- Fichier : `hrt/shgraph/ShaderParticleInput.hx` — 97 lignes — 4 blocs doc — contient du `#if`
- Types : `class ShaderParticleInputs`
- Héritage : `ShaderParticleInputs` extends `ShaderNode`
- Dépend de : `hide.Element`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderNode` (extends/use), `hrt.shgraph.Variables`

## hrt.shgraph.ShaderType

- Fichier : `hrt/shgraph/ShaderType.hx` — 132 lignes — 17 blocs doc
- Types : `enum SType`, `class ShaderType`
- Utilisé par : `hide.view.GraphEditor`

## hrt.shgraph.Utils

- Fichier : `hrt/shgraph/Utils.hx` — 23 lignes — 2 blocs doc
- Types : `class ArrayUtils`
- Utilisé par : `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderNode`, `hrt.shgraph.ShaderNodeHxsl`

## hrt.shgraph.Variables

- Fichier : `hrt/shgraph/Variables.hx` — 291 lignes — 49 blocs doc
- Types : `enum_abstract Global`, `enum VariableKind`, `typedef GlobalInfo`, `class Variables`
- Dépend de : `hrt.shgraph.AstTools`
- Utilisé par : `hide.view.shadereditor.ShaderEditor`, `hrt.shgraph.NodeGenContext`, `hrt.shgraph.ShaderGlobalInput`, `hrt.shgraph.ShaderGraph`, `hrt.shgraph.ShaderInput`, `hrt.shgraph.ShaderOutput`, `hrt.shgraph.ShaderParticleInput`

## hrt.shgraph.import

- Fichier : `hrt/shgraph/import.hx` — 7 lignes — 0 blocs doc — contient du `#if`
- Dépend de : `hrt.shgraph.AstTools` (import), `hrt.shgraph.ShaderGraph` (import)
