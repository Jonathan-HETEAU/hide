# hrt.animgraph.nodes.Blend

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/Blend.hx`](../../../../../../hrt/animgraph/nodes/Blend.hx)

Extends: [`hrt.animgraph.nodes.AnimNode`](AnimNode.md) → [`hrt.animgraph.Node`](../Node.md)

Blends the animations `a` and `b` by `alpha`.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getBoneTransform

```haxe
override function getBoneTransform(boneId:Int, outMatrix:h3d.Matrix, ctx:GetBoneTransformContext):Void
```

### getSize _(editor (js) only)_

```haxe
override function getSize():Int
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
