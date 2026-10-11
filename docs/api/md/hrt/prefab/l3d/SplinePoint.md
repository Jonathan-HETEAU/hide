# hrt.prefab.l3d.SplinePoint

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Spline` · source [`hrt/prefab/l3d/Spline.hx`](../../../../../../hrt/prefab/l3d/Spline.hx)

A point of a spline.

## Constructor

### new

```haxe
function new(?pos:Null<h3d.col.Point>, ?up:h3d.Vector, ?tangentIn:h3d.Vector, ?tangentOut:h3d.Vector):Void
```

Creates a point. The values are copied.

## Static variables

### DEFAULT_TAN_LENGTH

```haxe
static var DEFAULT_TAN_LENGTH:Float
```

The default length of the tangents.

## Variables

### pos

```haxe
var pos:h3d.col.Point
```

The position, relative to the spline (in world space for samples).

### up

```haxe
var up:h3d.Vector
```

The up vector, relative to the spline.

### tangentIn

```haxe
var tangentIn:h3d.Vector
```

The incoming tangent, relative to the point.

### tangentOut

```haxe
var tangentOut:h3d.Vector
```

The outgoing tangent, relative to the point.

### length

```haxe
var length:Float
```

The length of the spline from its start to this point.

### t

```haxe
var t:Float
```

The progress of the point along the spline, from `0` to `1`.

### realPointIndex

```haxe
var realPointIndex:Float
```

For a sample: the integer part is the index of the spline point before it, the fractional part the progress to the next point.

## Methods

### save

```haxe
function save():Dynamic
```

Returns the serialized point.

### load

```haxe
function load(obj:Dynamic):Void
```

Loads a serialized point, or copies a `SplinePoint`.

### loadOther

```haxe
function loadOther(other:SplinePoint):Void
```

Copies another point.
