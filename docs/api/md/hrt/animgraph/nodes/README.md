# Package `hrt.animgraph.nodes`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimInfo`](AnimInfo.md) | typedef | An animation of a blend space node. |
| [`AnimNode`](AnimNode.md) | class | An anim node outpus a animation that can be consumed as input parameter by other nodes |
| [`AnimProxy`](AnimProxy.md) | class | An object creating the children an animation asks for, to read an animation without its model. |
| [`Blend`](Blend.md) | class | Blends the animations `a` and `b` by `alpha`. |
| [`BlendPerBone`](BlendPerBone.md) | class | Plays the animation `b` on the bones under `targetBone`, and `a` on the others. |
| [`BlendSpace2D`](BlendSpace2D.md) | class | Plays a blend space file (`path`) at the position `bsX`, `bsY`. |
| [`BlendSpaceInstancePoint`](BlendSpaceInstancePoint.md) | typedef | A point of a blend space node. |
| [`DefaultPose`](DefaultPose.md) | class | The default pose of the objects and skin joints. |
| [`FloatParameter`](FloatParameter.md) | class | Outputs the value of a parameter of the graph. |
| [`GetBoneContext`](GetBoneContext.md) | class | The context of `AnimNode.getBones`. |
| [`GetBoneTransformContext`](GetBoneTransformContext.md) | class | The context of `AnimNode.getBoneTransform`. |
| [`Input`](Input.md) | class | Plays an animation file (`path`). |
| [`Output`](Output.md) | class | The result of this node can be used as an animation by other systems |
