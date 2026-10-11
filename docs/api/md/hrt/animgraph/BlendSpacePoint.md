# hrt.animgraph.BlendSpacePoint

**class** · package [`hrt.animgraph`](README.md) · module `hrt.animgraph.BlendSpace2D` · source [`hrt/animgraph/BlendSpace2D.hx`](../../../../../hrt/animgraph/BlendSpace2D.hx)

A point of a `BlendSpace2D`: an animation at a position.

## Constructor

### new

```haxe
function new(?x:Null<Float>, ?y:Null<Float>, ?speed:Null<Float>, ?animPath:Null<String>, ?keepSync:Null<Bool>):Void
```

- **param** `keepSync` Keeps the animation in sync with the other animations of the graph marked as `keepSync`.
- **param** `animPath` The path of the animation.
- **param** `speed` The speed of the animation.
- **param** `y` The Y position.
- **param** `x` The X position.

## Variables

### x

```haxe
var x:Float
```

The X position.

### y

```haxe
var y:Float
```

The Y position.

### speed

```haxe
var speed:Float
```

The speed of the animation.

### animPath

```haxe
var animPath:String
```

The path of the animation.

### keepSync

```haxe
var keepSync:Bool
```

Keeps the animation in sync with the other animations of the graph marked as `keepSync`.
