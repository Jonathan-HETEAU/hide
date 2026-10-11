# hrt.animgraph.nodes.AnimNode

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/AnimNode.hx`](../../../../../../hrt/animgraph/nodes/AnimNode.hx)

Extends: [`hrt.animgraph.Node`](../Node.md)

Subclasses: [`hrt.animgraph.nodes.Blend`](Blend.md), [`hrt.animgraph.nodes.BlendPerBone`](BlendPerBone.md), [`hrt.animgraph.nodes.BlendSpace2D`](BlendSpace2D.md), [`hrt.animgraph.nodes.DefaultPose`](DefaultPose.md), [`hrt.animgraph.nodes.Input`](Input.md), [`hrt.animgraph.nodes.Output`](Output.md)

An anim node outpus a animation that can be consumed as input parameter by other nodes

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getBones

```haxe
function getBones(ctx:GetBoneContext):Map<String, Int>
```

Returns the bones of the node, by name. By default, the union of the bones of the animation inputs.

### getBoneTransform

```haxe
function getBoneTransform(boneId:Int, outMatrix:h3d.Matrix, ctx:GetBoneTransformContext):Void
```

Sets `outMatrix` to the transform of a bone. Does nothing by default.

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

### getInputs

```haxe
override function getInputs():Array<hrt.animgraph.NodeInputInfo>
```

### getOutputs

```haxe
override function getOutputs():Array<hrt.animgraph.NodeOutputInfo>
```

### getDisplayName _(editor (js) only)_

```haxe
override function getDisplayName():String
```

## Inherited members

- from [`hrt.animgraph.Node`](../Node.md): `x`, `y`, `id`, `inputEdges`, `tick`, `resetSmoothedValues`, `serializeToDynamic`, `getInputs`, `getOutputs`, `editor`, `getAnimEditor`, `getSize`, `getDisplayName`, `canCreateManually`, `getInfo`, `getOutputNameOverride`, `getPropertiesHTML`, `getPos`, `setPos`
