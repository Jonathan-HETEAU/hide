# hrt.animgraph.nodes.GetBoneContext

**class** · package [`hrt.animgraph.nodes`](README.md) · module `hrt.animgraph.nodes.AnimNode` · source [`hrt/animgraph/nodes/AnimNode.hx`](../../../../../../hrt/animgraph/nodes/AnimNode.hx)

The context of `AnimNode.getBones`.

## Constructor

### new

```haxe
function new():Void
```

Creates the context.

## Variables

### targetObject

```haxe
var targetObject:h3d.scene.Object
```

The animated object.

### resolver

```haxe
var resolver:(path:String) -> Null<String>
```

Returns the path of the animation to load for a path of the graph.

### modelCache

```haxe
var modelCache:h3d.prim.ModelCache
```

The model cache.
