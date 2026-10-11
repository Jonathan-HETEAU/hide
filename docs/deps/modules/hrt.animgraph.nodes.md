# Package `hrt.animgraph.nodes`

[← retour](../DEPENDENCIES.md)

## hrt.animgraph.nodes.AnimNode

- Fichier : `hrt/animgraph/nodes/AnimNode.hx` — 157 lignes — 12 blocs doc — contient du `#if`
- Types : `class GetBoneContext`, `class GetBoneTransformContext`, `class AnimNode`
- Héritage : `AnimNode` extends `Node`
- Dépend de : `hide.view.GraphInterface`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.Node` (extends/use), `hrt.animgraph.Tools`, `hrt.tools.MapUtils` (import/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.AnimGraphInstance`, `hrt.animgraph.NodeAnim`, `hrt.animgraph.nodes.Blend`, `hrt.animgraph.nodes.BlendPerBone`, `hrt.animgraph.nodes.BlendSpace2D`, `hrt.animgraph.nodes.DefaultPose`, `hrt.animgraph.nodes.Input`, `hrt.animgraph.nodes.Output`

## hrt.animgraph.nodes.Blend

- Fichier : `hrt/animgraph/nodes/Blend.hx` — 79 lignes — 1 blocs doc — contient du `#if`
- Types : `class Blend`
- Héritage : `Blend` extends `AnimNode`
- Dépend de : `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode` (extends/use)

## hrt.animgraph.nodes.BlendPerBone

- Fichier : `hrt/animgraph/nodes/BlendPerBone.hx` — 117 lignes — 1 blocs doc — contient du `#if`
- Types : `class BlendPerBone`
- Héritage : `BlendPerBone` extends `AnimNode`
- Dépend de : `hide.Element`, `hide.comp.Button`, `hide.comp.ContextMenu`, `hrt.animgraph.nodes.AnimNode` (extends/use), `hrt.ui.HuiMenu`

## hrt.animgraph.nodes.BlendSpace2D

- Fichier : `hrt/animgraph/nodes/BlendSpace2D.hx` — 100 lignes — 12 blocs doc
- Types : `typedef BlendSpaceInstancePoint`, `typedef AnimInfo`, `class BlendSpace2D`
- Héritage : `BlendSpace2D` extends `AnimNode`
- Dépend de : `hrt.animgraph.BlendSpace2D`, `hrt.animgraph.nodes.AnimNode` (extends/use), `hrt.animgraph.nodes.Input`, `hrt.tools.MapUtils` (import)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`

## hrt.animgraph.nodes.DefaultPose

- Fichier : `hrt/animgraph/nodes/DefaultPose.hx` — 50 lignes — 1 blocs doc
- Types : `class DefaultPose`
- Héritage : `DefaultPose` extends `AnimNode`
- Dépend de : `hrt.animgraph.Tools`, `hrt.animgraph.nodes.AnimNode` (extends/use)
- Utilisé par : `hrt.animgraph.AnimGraphInstance`

## hrt.animgraph.nodes.FloatParameter

- Fichier : `hrt/animgraph/nodes/FloatParameter.hx` — 28 lignes — 2 blocs doc — contient du `#if`
- Types : `class FloatParameter`
- Héritage : `FloatParameter` extends `Node`
- Dépend de : `hrt.animgraph.AnimGraph`, `hrt.animgraph.Node` (extends/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraph`, `hrt.animgraph.AnimGraphInstance`

## hrt.animgraph.nodes.Input

- Fichier : `hrt/animgraph/nodes/Input.hx` — 90 lignes — 2 blocs doc — contient du `#if`
- Types : `class AnimProxy`, `class Input`
- Héritage : `AnimProxy` extends `h3d.scene.Object`, `Input` extends `AnimNode`
- Dépend de : `hide.Element`, `hide.view.animgraph.AnimPicker`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode` (extends/use), `hrt.tools.MapUtils` (import/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.nodes.BlendSpace2D`

## hrt.animgraph.nodes.Output

- Fichier : `hrt/animgraph/nodes/Output.hx` — 44 lignes — 1 blocs doc — contient du `#if`
- Types : `class Output`
- Héritage : `Output` extends `AnimNode`
- Dépend de : `hide.view.GraphInterface`, `hrt.animgraph.Node`, `hrt.animgraph.nodes.AnimNode` (extends/use)
- Utilisé par : `hide.view.animgraph.AnimGraphEditor`, `hrt.animgraph.AnimGraphInstance`
