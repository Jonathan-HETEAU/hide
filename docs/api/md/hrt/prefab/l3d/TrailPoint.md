# hrt.prefab.l3d.TrailPoint

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Trails` · source [`hrt/prefab/l3d/Trails.hx`](../../../../../../hrt/prefab/l3d/Trails.hx)

A point of a trail (a struct on HashLink).

## Constructor

### new

```haxe
function new():Void
```

Creates a trail.

## Variables

### x

```haxe
var x:Float
```

The X position of the head.

### y

```haxe
var y:Float
```

The Y position of the head.

### z

```haxe
var z:Float
```

The Z position of the head.

### w

```haxe
var w:Float
```

The width.

### tx

```haxe
var tx:Float
```

The X of the tangent.

### ty

```haxe
var ty:Float
```

The Y of the tangent.

### tz

```haxe
var tz:Float
```

The Z of the tangent.

### ux

```haxe
var ux:Float
```

The X of the orientation axis.

### uy

```haxe
var uy:Float
```

The Y of the orientation axis.

### uz

```haxe
var uz:Float
```

The Z of the orientation axis.

### color

```haxe
var color:Int
```

The color, as ARGB.

### speed

```haxe
var speed:Float
```

The speed of the head when the point was added.

### len

```haxe
var len:Float
```

The distance to the next point (toward the tail).

### lifetime

```haxe
var lifetime:Float
```

The remaining lifetime, in seconds.

### sizeMultiplier

```haxe
var sizeMultiplier:Float
```

The factor of the width.

### next

```haxe
var next:TrailPoint
```

The next point, toward the tail.
