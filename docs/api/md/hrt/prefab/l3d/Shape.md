# hrt.prefab.l3d.Shape

**enum** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Polygon` · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx)

The shape of a `Polygon`.

## Constructors

### Quad

```haxe
Quad(subdivision:Int)
```

A unit square in the XY plane, subdivided.

### Disc

```haxe
Disc(segments:Int, angle:Float, inner:Float, rings:Int)
```

A disc (or a part of it, of `angle` degrees) of radius `1`, with an inner radius and rings.

### Custom

```haxe
Custom
```

The polygon of `points`.

### Sphere

```haxe
Sphere(segsW:Int, segsH:Int)
```

A sphere.

### Capsule

```haxe
Capsule(segsW:Int, segsH:Int, axis:h3d.prim.Axis)
```

A capsule along an axis.

### Box

```haxe
Box
```

A box.
