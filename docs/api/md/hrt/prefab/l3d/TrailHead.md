# hrt.prefab.l3d.TrailHead

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Trails` · source [`hrt/prefab/l3d/Trails.hx`](../../../../../../hrt/prefab/l3d/Trails.hx)

A trail of a `TrailObj` (a struct on HashLink).

## Constructor

### new

```haxe
function new():Void
```

Creates a point.

## Variables

### firstPoint

```haxe
var firstPoint:TrailPoint
```

The newest point.

### totalLength

```haxe
var totalLength:Float
```

The length of the trail.

### numPoints

```haxe
var numPoints:Int
```

The number of points.

### generation

```haxe
var generation:Int
```

Incremented each time the trail is cleared, to detect a reused trail.

### nextTrail

```haxe
var nextTrail:TrailHead
```

The next free trail, in the pool.

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

### z

```haxe
var z:Float
```

The Z position.

### cooldown

```haxe
var cooldown:Float
```

The time before the next point is added, in seconds.
