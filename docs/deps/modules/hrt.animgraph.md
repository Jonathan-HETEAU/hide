# Package `hrt.animgraph`

[← retour](../DEPENDENCIES.md)

## hrt.animgraph.AnimGraph

- Fichier : `hrt/animgraph/AnimGraph.hx` — 246 lignes — 19 blocs doc — contient du `#if`
- Types : `class Parameter`, `typedef SerializedEdge`, `typedef EditorProviderContext`, `class AnimGraph`
- Héritage : `AnimGraph` extends `hrt.prefab.Prefab`
- Dépend de : `hide.Ide`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.FloatParameter`, `hrt.prefab.Macros`, `hrt.prefab.Prefab` (extends/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hide.view.animgraph.AnimPicker`, `hide.view.animgraph.BlendSpace2DEditor`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Node`, `hrt.animgraph.Resource`, `hrt.animgraph.nodes.FloatParameter`

## hrt.animgraph.AnimGraphInstance

- Fichier : `hrt/animgraph/AnimGraphInstance.hx` — 310 lignes — 14 blocs doc — contient du `#if`
- Types : `class AnimGraphAnimatedObject`, `typedef AnimResolver`, `class AnimGraphInstance`
- Héritage : `AnimGraphAnimatedObject` extends `h3d.anim.Animation.AnimatedObject`, `AnimGraphInstance` extends `h3d.anim.Animation`
- Dépend de : `hrt.animgraph.AnimGraph`, `hrt.animgraph.Node`, `hrt.animgraph.Tools`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.DefaultPose`, `hrt.animgraph.nodes.FloatParameter`, `hrt.animgraph.nodes.Output`, `hrt.tools.MapUtils` (import/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.NodeAnim`, `hrt.animgraph.Resource`, `hrt.animgraph.nodes.AnimNode`

## hrt.animgraph.BlendSpace2D

- Fichier : `hrt/animgraph/BlendSpace2D.hx` — 75 lignes — 8 blocs doc
- Types : `class BlendSpacePoint`, `class BlendSpace2D`
- Héritage : `BlendSpace2D` extends `hrt.prefab.Prefab`
- Dépend de : `hrt.prefab.Macros`, `hrt.prefab.Prefab` (extends/use)
- Utilisé par : `hide.view.animgraph.BlendSpace2DEditor`, `hrt.animgraph.nodes.BlendSpace2D`

## hrt.animgraph.Macros

- Fichier : `hrt/animgraph/Macros.hx` — 211 lignes — 1 blocs doc — contient du `#if`
- Types : `class Macros`
- Dépend de : `hrt.animgraph.Node`, `hrt.prefab.Macros`
- Utilisé par : `hrt.animgraph.Node`

## hrt.animgraph.Node

- Fichier : `hrt/animgraph/Node.hx` — 313 lignes — 34 blocs doc — contient du `#if`
- Types : `typedef Edge`, `enum OutputType`, `typedef NodeOutputInfo`, `typedef NodeInputInfo`, `class Node`
- Dépend de : `hide.Element`, `hide.view.GraphEditor`, `hide.view.GraphInterface`, `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.Macros`
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Macros`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.Blend`, `hrt.animgraph.nodes.FloatParameter`, `hrt.animgraph.nodes.Input`, `hrt.animgraph.nodes.Output`

## hrt.animgraph.NodeAnim

- Fichier : `hrt/animgraph/NodeAnim.hx` — 74 lignes — 3 blocs doc
- Types : `class NodeAnim`
- Héritage : `NodeAnim` extends `h3d.anim.Animation`
- Dépend de : `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Tools`, `hrt.animgraph.nodes.AnimNode`

## hrt.animgraph.Resource

- Fichier : `hrt/animgraph/Resource.hx` — 60 lignes — 4 blocs doc
- Types : `class Resource`
- Héritage : `Resource` extends `hxd.res.Resource`
- Dépend de : `hrt.animgraph.AnimGraph`, `hrt.animgraph.AnimGraphInstance`, `hrt.prefab.ContextShared`, `hrt.prefab.Prefab`

## hrt.animgraph.Tools

- Fichier : `hrt/animgraph/Tools.hx` — 92 lignes — 4 blocs doc
- Types : `class Tools`
- Utilisé par : `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.NodeAnim`, `hrt.animgraph.nodes.AnimNode`, `hrt.animgraph.nodes.DefaultPose`
