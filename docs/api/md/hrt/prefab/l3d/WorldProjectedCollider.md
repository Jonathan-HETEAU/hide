# hrt.prefab.l3d.WorldProjectedCollider

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Polygon` · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx)

Extends: `h3d.col.Collider`

A collider of a polygon projected on the ground.

## Constructor

### new

```haxe
function new(polygon:Polygon, groundCollide:(ray:h3d.col.Ray) -> Float):Void
```

Creates the collider. `groundCollide` returns the distance to the ground along a ray, or a negative value.

## Methods

### rayIntersection

```haxe
override function rayIntersection(ray:h3d.col.Ray, bestMatch:Bool):Float
```

### contains

```haxe
override function contains(pos:h3d.Vector):Bool
```

### inFrustum

```haxe
override function inFrustum(f:h3d.col.Frustum, ?localMatrix:h3d.Matrix):Bool
```

### inSphere

```haxe
override function inSphere(s:h3d.col.Sphere):Bool
```

### dimension

```haxe
override function dimension():Float
```

### closestPoint

```haxe
override function closestPoint(p:h3d.col.Point):h3d.Vector
```

### makeDebugObj

```haxe
override function makeDebugObj():Null<h3d.scene.Object>
```
