# hrt.animgraph.nodes.DefaultPose

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/DefaultPose.hx`](../../../../../../hrt/animgraph/nodes/DefaultPose.hx)

Extends: [`hrt.animgraph.nodes.AnimNode`](AnimNode.md) → [`hrt.animgraph.Node`](../Node.md)

The default pose of the objects and skin joints.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getBones

```haxe
override function getBones(ctx:GetBoneContext):Map<String, Int>
```

### getBoneTransform

```haxe
override function getBoneTransform(boneId:Int, outMatrix:h3d.Matrix, ctx:GetBoneTransformContext):Void
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

- from [`hrt.animgraph.nodes.AnimNode`](AnimNode.md): `getBones`, `getBoneTransform`, `getInfo`, `getInputs`, `getOutputs`, `getDisplayName`
- from [`hrt.animgraph.Node`](../Node.md): `x`, `y`, `id`, `inputEdges`, `tick`, `resetSmoothedValues`, `serializeToDynamic`, `getInputs`, `getOutputs`, `editor`, `getAnimEditor`, `getSize`, `getDisplayName`, `canCreateManually`, `getInfo`, `getOutputNameOverride`, `getPropertiesHTML`, `getPos`, `setPos`
