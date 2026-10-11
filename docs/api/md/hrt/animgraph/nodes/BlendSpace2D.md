# hrt.animgraph.nodes.BlendSpace2D

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/BlendSpace2D.hx`](../../../../../../hrt/animgraph/nodes/BlendSpace2D.hx)

Extends: [`hrt.animgraph.nodes.AnimNode`](AnimNode.md) → [`hrt.animgraph.Node`](../Node.md)

Plays a blend space file (`path`) at the position `bsX`, `bsY`.

## Constructor

### new

```haxe
function new():Void
```

## Methods

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
