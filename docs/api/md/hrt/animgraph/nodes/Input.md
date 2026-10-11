# hrt.animgraph.nodes.Input

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/Input.hx`](../../../../../../hrt/animgraph/nodes/Input.hx)

Extends: [`hrt.animgraph.nodes.AnimNode`](AnimNode.md) → [`hrt.animgraph.Node`](../Node.md)

Plays an animation file (`path`).

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

### tick

```haxe
override function tick(dt:Float):Void
```

### getBoneTransform

```haxe
override function getBoneTransform(id:Int, matrix:h3d.Matrix, ctx:GetBoneTransformContext):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
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
