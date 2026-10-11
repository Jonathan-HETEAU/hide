# hrt.animgraph.nodes.AnimInfo

**typedef** · package [`hrt.animgraph.nodes`](README.md) · module `hrt.animgraph.nodes.BlendSpace2D` · source [`hrt/animgraph/nodes/BlendSpace2D.hx`](../../../../../../hrt/animgraph/nodes/BlendSpace2D.hx)

An animation of a blend space node.

## Fields

### selfSpeed

```haxe
var selfSpeed:Float
```

The speed of the animation.

### proxy

```haxe
var proxy:AnimProxy
```

The object the animation is bound to.

### keepSync

```haxe
var keepSync:Bool
```

Keeps the animation in sync with the others.

### indexRemap

```haxe
var indexRemap:Array<Null<Int>>
```

The bone of the animation for each bone of the node.

### anim

```haxe
var anim:h3d.anim.Animation
```

The animation.
