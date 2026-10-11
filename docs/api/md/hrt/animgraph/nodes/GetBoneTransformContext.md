# hrt.animgraph.nodes.GetBoneTransformContext

**class** · package [`hrt.animgraph.nodes`](README.md) · module `hrt.animgraph.nodes.AnimNode` · source [`hrt/animgraph/nodes/AnimNode.hx`](../../../../../../hrt/animgraph/nodes/AnimNode.hx)

The context of `AnimNode.getBoneTransform`.

## Constructor

### new

```haxe
function new():Void
```

Creates the context.

## Methods

### reset

```haxe
function reset(target:hrt.animgraph.AnimGraphAnimatedObject):Void
```

Prepares the context for a bone.

### getDefPose

```haxe
function getDefPose():h3d.Matrix
```

In the decomposed format
