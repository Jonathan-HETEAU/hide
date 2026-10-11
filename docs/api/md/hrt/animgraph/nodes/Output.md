# hrt.animgraph.nodes.Output

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/Output.hx`](../../../../../../hrt/animgraph/nodes/Output.hx)

Extends: [`hrt.animgraph.nodes.AnimNode`](AnimNode.md) → [`hrt.animgraph.Node`](../Node.md)

The result of this node can be used as an animation by other systems

## Constructor

### new

```haxe
function new():Void
```

## Methods

### tick

```haxe
override function tick(dt:Float):Void
```

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

### getSize _(editor (js) only)_

```haxe
override function getSize():Int
```

### canCreateManually _(editor (js) only)_

```haxe
override function canCreateManually():Bool
```

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
