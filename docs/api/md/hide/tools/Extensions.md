# hide.tools.Extensions

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/Extensions.hx`](../../../../../hide_js/hide/tools/Extensions.hx) · available on editor (js)

Static extensions of points, vectors, matrices, maps and arrays, used with `using hide.tools.Extensions`.

## Static methods

### toVector

```haxe
static inline function toVector(pt:h2d.col.Point, z:Float):h3d.Vector
```

Returns a vector from a point and a Z.

### to2D

```haxe
static inline function to2D(vec:h3d.Vector):h2d.col.Point
```

Returns the X and Y of a vector as a point.

### toDirection

```haxe
static inline function toDirection(pt:h2d.col.Point):Float
```

Returns the angle of a point from the X axis.

### mapIter

```haxe
static inline function mapIter(map:Map<mapIter.K, mapIter.V>, func:(mapIter.K, mapIter.V) -> Void):Void
```

Calls `func` on each key and value of a map.

### values

```haxe
static inline function values(map:Map<values.K, values.V>):Array<values.V>
```

Returns the values of a map.

### listLength

```haxe
static inline function listLength(list:listLength.T):Int
```

Returns the length of a linked list.

### toArray

```haxe
static inline function toArray(it:Iterator<toArray.T>):Array<toArray.T>
```

Returns the items of an iterator.

### sum

```haxe
static function sum(a:Array<Float>):Float
```

Returns the sum of an array.

### max

```haxe
static function max(a:Array<Float>):Float
```

Returns the maximum of an array, or 0 if empty.

### findMin

```haxe
static inline function findMin(a:Array<findMin.T>, f:() -> Float, ?filter:() -> Bool):{ val:Float, item:Null<findMin.T> }
```

Returns the item with the lowest `f` and this value, skipping the items for which `filter` is false.

### findMinItem

```haxe
static inline function findMinItem(a:Array<findMinItem.T>, f:() -> Float, ?filter:() -> Bool):findMinItem.T
```

Returns the item with the lowest `f`.

### findMinValue

```haxe
static inline function findMinValue(a:Array<findMinValue.T>, f:() -> Float, ?filter:() -> Bool):Float
```

Returns the lowest `f` of the items.

### findMaxItem

```haxe
static inline function findMaxItem(a:Array<findMaxItem.T>, f:() -> Float, ?filter:() -> Bool):findMaxItem.T
```

Returns the item with the highest `f`.

### findMaxValue

```haxe
static inline function findMaxValue(a:Array<findMaxValue.T>, f:() -> Float, ?filter:() -> Bool):Float
```

Returns the highest `f` of the items.

### scaled

```haxe
static inline function scaled(pt:h2d.col.Point, scale:Float):h2d.col.Point
```

Returns the point multiplied by `scale`.

### limitSize

```haxe
static inline function limitSize(pt:h2d.col.Point, maxLength:Float):h2d.col.Point
```

Returns the point with a length of at most `maxLength`.

### normalized

```haxe
static inline function normalized(pt:h2d.col.Point):h2d.col.Point
```

Returns the point normalized, or (0, 0) if its length is near 0.

### getAngle

```haxe
static inline function getAngle(pt:h2d.col.Point):Float
```

Returns the angle of a point from the X axis.

### rounded

```haxe
static inline function rounded(pt:h2d.col.Point):h2d.col.Point
```

Returns the point with rounded coordinates.

### setInvalid

```haxe
static inline function setInvalid(pt:h2d.col.Point):Void
```

Sets the coordinates of a point to NaN.

### isValid

```haxe
static inline function isValid(pt:h2d.col.Point):Bool
```

Tells if a point has no NaN coordinate.

### rotToDir

```haxe
static inline function rotToDir(rot:Float):h2d.col.Point
```

Returns the unit direction of an angle.

### iterPolyEdges

```haxe
static inline function iterPolyEdges(poly:h2d.col.Polygon, func:(h2d.col.Point, h2d.col.Point) -> Void):Void
```

Calls `func` on each edge of a polygon (point, previous point).

### polyHasEdge

```haxe
static inline function polyHasEdge(poly:h2d.col.Polygon, p1:h2d.col.Point, p2:h2d.col.Point):Bool
```

Tells if a polygon has an edge between two points, in any direction.

### toMatrix2d

```haxe
static function toMatrix2d(mat:h3d.Matrix):h2d.col.Matrix
```

Returns the 2D part of a 3D matrix.

### getDefaultAbsPos

```haxe
static function getDefaultAbsPos(obj:h3d.scene.Object):h3d.Matrix
```

Returns the absolute position of an object without its `defaultTransform`.
