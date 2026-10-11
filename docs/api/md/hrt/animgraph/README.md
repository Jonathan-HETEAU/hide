# Package `hrt.animgraph`

[← API index](../../README.md)

Sub-packages: [`hrt.animgraph.nodes`](nodes/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimGraph`](AnimGraph.md) | class | An animation graph made with nodes in the editor (`.animgraph` file): blends animations depending on parameters. |
| [`AnimGraphAnimatedObject`](AnimGraphAnimatedObject.md) | class | An object animated by an `AnimGraphInstance`. |
| [`AnimGraphInstance`](AnimGraphInstance.md) | class | A playing animation graph: a `h3d.anim.Animation` computing the bone transforms from the nodes. |
| [`AnimResolver`](AnimResolver.md) | typedef | Returns the path of the animation to load for a path of the graph and a target object, or `null` to skip it. |
| [`BlendSpace2D`](BlendSpace2D.md) | class | A 2D blend space (`.bs2d` file): blends the animations of its points depending on a 2D position. |
| [`BlendSpacePoint`](BlendSpacePoint.md) | class | A point of a `BlendSpace2D`: an animation at a position. |
| [`Edge`](Edge.md) | typedef | The connection of an input of a node. |
| [`EditorProviderContext`](EditorProviderContext.md) | typedef | The context of the animation preview of the editor. |
| [`Macros`](Macros.md) | class | Builds the animation graph nodes from their `@:input` and `@:output` fields. |
| [`Node`](Node.md) | class | A node of an animation graph. |
| [`NodeAnim`](NodeAnim.md) | class | Plays a single node of an animation graph, for the previews. |
| [`NodeInputInfo`](NodeInputInfo.md) | typedef | An input of a node. |
| [`NodeOutputInfo`](NodeOutputInfo.md) | typedef | An output of a node. |
| [`OutputType`](OutputType.md) | enum | The type of an input or output of an animation graph node. |
| [`Parameter`](Parameter.md) | class | A float parameter of an animation graph, set at runtime with `AnimGraphInstance.setParam`. |
| [`Resource`](Resource.md) | class | An animation graph resource (`.animgraph` file). |
| [`SerializedEdge`](SerializedEdge.md) | typedef | A serialized connection between nodes. |
| [`Tools`](Tools.md) | class | Animation helpers. |
