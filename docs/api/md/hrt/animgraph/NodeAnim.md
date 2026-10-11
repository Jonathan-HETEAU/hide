# hrt.animgraph.NodeAnim

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/NodeAnim.hx`](../../../../../hrt/animgraph/NodeAnim.hx)

Type parameters: `<T>`

Extends: `h3d.anim.Animation`

Plays a single node of an animation graph, for the previews.

## Constructor

### new

```haxe
function new(resolver:AnimResolver, modelCache:h3d.prim.ModelCache):Void
```

Creates the animation.

## Variables

### node

```haxe
var node:hrt.animgraph.NodeAnim.T
```

The node.

## Methods

### bind

```haxe
override function bind(base:h3d.scene.Object):Void
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### update

```haxe
override function update(dt:Float):Float
```
