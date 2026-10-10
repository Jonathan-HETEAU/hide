package hide.tools;

/**
	Static extensions of arrays, used with `using hide.tools.Extensions`.
**/
@:genericClassPerMethod
class ArrayExtensions {
	/**
		Iterate over all items starting from a random index. Use findRand to interrupt search
	**/
	public static function iterRand<T>(a: Array<T>, func: Int->T->Void) {
		var len = a.length;
		var offset = Std.random(len);
		for(i in 0...len) {
			var idx = (i + offset) % len;
			var item = a[idx];
			
			func(idx, item);
		}
	}

	/**
		Iterate over all items starting from a random index, until func returns a non-null value
	**/
	public static function findRand<T, R>(a: Array<T>, ?rnd: hxd.Rand, func: Int->T->R) : R {
		var len = a.length;
		var offset = rnd != null ? rnd.random(len) : Std.random(len);
		var ret : R = null;
		for(i in 0...len) {
			var idx = (i + offset) % len;
			var item = a[idx];
			ret = func(idx, item);
			if(ret != null) {
				break;
			}
		}
		return ret;
	}

	/**
		Returns the last item.
	**/
	static public function last<T>(a: Array<T>) {
		return a[a.length - 1];
	}

	/**
		Removes all the items.
	**/
	static public function clear<T>(a: Array<T>) {
		a.splice(0, a.length);
	}

	/**
		Makes `to` a copy of `from`, keeping the array instance.
	**/
	static public function fill<T>(to: Array<T>, from: Array<T>) {
		for(i in 0...from.length)
			to[i] = from[i];
		while(to.length > from.length)
			to.pop();
	}

	/**
		Adds an item at the start if not already in the array.
	**/
	static public function unshiftUnique<T>(a: Array<T>, item: T) {
		if(a.indexOf(item) < 0)
			a.unshift(item);
	}

	/**
		Adds an item at the end if not already in the array.
	**/
	static public function pushUnique<T>(a: Array<T>, item: T) {
		if(a.indexOf(item) < 0)
			a.push(item);
	}

	/**
		Adds the items not already in the array.
	**/
	static public function appendUnique<T>(a: Array<T>, items: Array<T>) {
		for(item in items) {
			pushUnique(a, item);
		}
	}

	/**
		Shuffles the array, with `rnd` if set.
	**/
	public static function shuffle<T>( a : Array<T>, ?rnd: hxd.Rand) {
		var len = a.length;
		for( i in 0...len ) {
			var y = rnd != null ? rnd.random(len) : Std.random(len);
			var tmp = a[i];
			a[i] = a[y];
			a[y] = tmp;
		}
	}

	/**
		Returns a random item, or null if empty.
	**/
	public static function pickRandom<T>(a: Array<T>) {
		if(a.length == 0) return null;
		return a[Std.random(a.length)];
	}

	@:generic
	public static function pickWeightIndex<T>(array: Array<T>, ?rnd: hxd.Rand, weight: T -> Float) : Int {
		if(array.length == 0) return -1;
		var total = 0.0;
		for(i in 0...array.length)
			total += weight(array[i]);
		if(total == 0)
			return rnd != null ? rnd.random(array.length) : Std.random(array.length);
		var rval = rnd != null ? rnd.rand() : Math.random();
		var acc = 0.0;
		for(i in 0...array.length) {
			acc += weight(array[i]) / total;
			if(acc >= rval)
				return i;
		}
		return array.length-1;
	}

	@:generic
	public static function pickWeight<T>(array: Array<T>, ?rnd: hxd.Rand, weight: T -> Float) : T {
		if(array.length == 0)
			return null;
		return array[pickWeightIndex(array, rnd, weight)];
	}

	/**
		Calls `func` on the items from the last one.
	**/
	static public function reverseFor<T>(a: Array<T>, func: T->Void) {
		var i = a.length;
		while (i-- > 0)
			func(a[i]);
	}

	/**
		Removes the items for which `func` is true.
	**/
	static public function removeIf<T>(a: Array<T>, func: T->Bool) {
		var i = a.length;
		while (i-- > 0) {
			if(func(a[i])) {
				a.remove(a[i]);
			}
		}
	}

	// Don't make this Iterable<T> (causes a cast on arrays)
	/**
		Returns the first item for which `f` is true, or null.
	**/
	public static function find<T>( it : Array<T>, f : T -> Bool ) : Null<T> {
		var ret = null;
		for( v in it ) {
			if(f(v)) {
				ret = v;
				break;
			}
		}
		return ret;
	}

	/**
		Returns the index of the first item for which `f` is true, or -1.
	**/
	inline static public function findIndex<T>( it : Array<T>, f : T -> Bool ) : Int {
		var i = 0;
		while (i < it.length ) {
			if(f(it[i]))
				break;
			i++;
		}
		if (i >= it.length)
			i = -1;
		return i;
	}

	// Don't make this Iterable<T> (causes a cast on arrays)
	/**
		Returns the first `count` items for which `f` is true.
	**/
	public static function filterCount<T>( it : Array<T>, count: Int, f : T -> Bool ) : Array<T> {
		var ret = [];
		for( v in it ) {
			if(f(v)) {
				ret.push(v);
				if(ret.length == count)
					break;
			}
		}
		return ret;
	}

	@:generic
	public static function bubbleSort<T>(array : Array<T>, greater: T->T->Bool) {
		var swapped = false;
		do {
			swapped = false;
			for (i in 0...array.length-1) {
				if (greater(array[i], array[i + 1])) {
					var tmp = array[i];
					array[i] = array[i + 1];
					array[i + 1] = tmp;
					swapped = true;
				}
			}
		} while (swapped);
	}

	@:generic
	public static function sortAsc<T>(array : Array<T>, field: T->Float) {
		bubbleSort(array, (a, b) -> field(a) > field(b));
	}

	@:generic
	public static function sortDesc<T>(array : Array<T>, field: T->Float) {
		bubbleSort(array, (a, b) -> field(a) < field(b));
	}

	/**
		Tells if `f` is true for one of the items.
	**/
	public static function any<T>( it : Array<T>, f : T -> Bool ) : Bool {
		return find(it, f) != null;
	}
	/**
		Tells if `f` is true for one of the items.
	**/
	public static function exists<T>( it : Array<T>, f : T -> Bool ) : Bool {
		return find(it, f) != null;
	}

	/**
		Tells if `f` is true for all the items.
	**/
	public static function all<T>( it : Array<T>, f : T -> Bool ) : Bool {
		return find(it, e -> !f(e)) == null;
	}

	/**
		Tells if the array is empty.
	**/
	public static function isEmpty<T>(array : Array<T>) : Bool {
		return array.length <= 0;
	}

	/**
		Returns the sum of `f` on the items.
	**/
	public static function sum<T>(array : Array<T>, f : T -> Float) : Float {
		var sum = 0.;
		for (e in array)
			sum += f(e);
		return sum;
	}

	// Don't make this Iterable<T> (causes a cast on arrays)
	/**
		Returns the number of items for which `f` is true.
	**/
	public static function count<T>( it : Array<T>, f : T -> Bool ) : Int {
		var ret = 0;
		for( v in it ) {
			if(f(v)) {
				++ret;
			}
		}
		return ret;
	}

	// Don't make this Iterable<T> (causes a cast on arrays)
	/**
		Tells if the array contains `elt` (with `==`).
	**/
	public static function has<A>( it : Array<A>, elt : A ) : Bool {
		var ret = false;
		for( x in it ) {
			if( x == elt ) {
				ret = true;
			}
		}
		return ret;
	}
	/**
		Tells if the array has an enum value equal to `elt` (with `Type.enumEq`).
	**/
	static public function enumHas<A: EnumValue>(  it : Array<A>, elt : A ) : Bool {
		var ret = false;
		for( x in it ) {
			if( Type.enumEq(x, elt) )
				ret = true;
		}
		return ret;
	}
	/**
		Same as `enumHas`.
	**/
	static public function enumContains<A: EnumValue>(  it : Array<A>, elt : A ) : Bool {
		return enumHas(it, elt);
	}

	@:generic
	static public function append<T>(a: Array<T>, b: Array<T>) {
		for(e in b) {
			a.push(e);
		}
		return a;
	}

	/*
	 * Find the element inside the array and return a reference to it
	 * If we could not find it, add it and return a reference to it
	 */
	@:generic
	static public function findOrAdd<T>(a: Array<T>, elem: T) : T {
		if (!a.contains(elem)) {
			a.push(elem);
		}
		return elem;
	}

	@:generic
	static public function filterFindOrAdd<T>(a: Array<T>, elem: T, func: T -> Bool) {
		if (find(a, func) == null) {
			a.push(elem);
		}
		return elem;
	}

	@:generic
	static public function split<T>(a: Array<T>, numGroups: Int): Array<Array<T>> {
		var groups = [for(_ in 0...numGroups) []];
        if(a.length >= 2) {
            for(i in 0...a.length)
                groups[Math.round((numGroups - 1) * i / (a.length - 1))].push(a[i]);
		}
		else if(a.length == 1)
			groups[0].push(a[0]);
		return groups;
	}

	@:generic
	static public function groupBy<T,K>(array: Array<T>, func: T->K): Map<K, Array<T>> {
		var map : Map<K, Array<T>> = new Map();
		for(e in array) {
			var k = func(e);
			var g = map.get(k);
			if(g == null) {
				g = [];
				map.set(k, g);
			}
			g.push(e);
		}
		return map;
	}

	/**
		Returns the non null results of `f` on the items.
	**/
	static public function getAll<A,B>(array: Array<A>, f : A -> B): Array<B> {
		var ret : Array<B> = [];
		for(e in array) {
			var b = f(e);
			if(b != null)
				ret.push(b);
		}
		return ret;
	}
}


/**
	Static extensions of points, vectors, matrices, maps and arrays, used with `using hide.tools.Extensions`.
**/
@:genericClassPerMethod
class Extensions {
	/**
		Returns a vector from a point and a Z.
	**/
	inline public static function toVector(pt : h2d.col.Point, z:Float) {
		return new h3d.Vector(pt.x, pt.y, z);
	}

	/**
		Returns the X and Y of a vector as a point.
	**/
	inline public static function to2D(vec : h3d.Vector) {
		return new h2d.col.Point(vec.x, vec.y);
	}

	/**
		Returns the angle of a point from the X axis.
	**/
	inline public static function toDirection(pt : h2d.col.Point) {
		return Math.atan2(pt.y, pt.x);
	}

	/**
		Calls `func` on each key and value of a map.
	**/
	inline public static function mapIter<K,V>(map: Map<K,V>, func: K->V->Void) {
		for(k in map.keys()) {
			var v = map[k];
			func(k, v);
		}
	}

	/**
		Returns the values of a map.
	**/
	inline public static function values<K, V>(map: Map<K, V>) : Array<V> {
		return [for (k => v in map) v];
	}

	/**
		Returns the length of a linked list.
	**/
	inline public static function listLength<T:{next:T}>(list:T) : Int {
		var e = list;
		var cnt = 0;
		while( e != null ) {
			++cnt;
			e = e.next;
		}
		return cnt;
	}

	/**
		Returns the items of an iterator.
	**/
	inline public static function toArray<T>(it: Iterator<T>) {
		return [for(a in it) a];
	}

	/**
		Returns the sum of an array.
	**/
	public static function sum( a : Array<Float> ) : Float {
		var s = 0.0;
		for(v in a)
			s += v;
		return s;
	}

	/**
		Returns the maximum of an array, or 0 if empty.
	**/
	public static function max( a : Array<Float> ) : Float {
		if(a.length == 0)
			return 0.0;
		var ret = a[0];
		for(v in a) {
			if(v > ret)
				ret = v;
		}
		return ret;
	}

	/**
		Returns the item with the lowest `f` and this value, skipping the items for which `filter` is false.
	**/
	inline static public function findMin<T>(a: Array<T>, f: T->Float, ?filter: T->Bool) {
		var minVal = Math.POSITIVE_INFINITY;
		var minItem = null;
		for(item in a) {
			if(filter != null && !filter(item))
				continue;
			var v = f(item);
			if(v < minVal) {
				minVal = v;
				minItem = item;
			}
		}
		return { item: minItem, val: minVal };
	}

	/**
		Returns the item with the lowest `f`.
	**/
	inline static public function findMinItem<T>(a: Array<T>, f: T->Float, ?filter: T->Bool) : T {
		return findMin(a, f, filter).item;
	}

	/**
		Returns the lowest `f` of the items.
	**/
	inline static public function findMinValue<T>(a: Array<T>, f: T->Float, ?filter: T->Bool) : Float {
		return findMin(a, f, filter).val;
	}

	/**
		Returns the item with the highest `f`.
	**/
	inline static public function findMaxItem<T>(a: Array<T>, f: T->Float, ?filter: T->Bool) : T{
		return findMin(a, i -> -f(i), filter).item;
	}

	/**
		Returns the highest `f` of the items.
	**/
	inline static public function findMaxValue<T>(a: Array<T>, f: T->Float, ?filter: T->Bool) : Float {
		return -findMin(a, i -> -f(i), filter).val;
	}

	@:generic
	public static function arrayEqual<A>( a : Iterable<A>, b : Iterable<A> ) : Bool {
		if(a == null && b == null) return true;
		if(a == null || b == null) return false;

		for(av in a) {
			if(!b.iterator().hasNext())
				return false;
			if(av != b.iterator().next())
				return false;
		}
		if(b.iterator().hasNext())
			return false;

		return true;
	}

	@:generic
	public static function arrayCompare<A>( a : Array<A>, b : Array<A>, eq : (A, A) -> Bool) : Bool {
		if(a == null && b == null) return true;
		if(a == null || b == null) return false;
		if(a.length != b.length) return false;
		for(i in 0...a.length) {
			if(!eq(a[i], b[i]))
				return false;
		}
		return true;
	}

	@:generic
	public static function setEqual<A>( a : Array<A>, b : Array<A> ) : Bool {
		if(a.length != b.length)
			return false;
		for(v in a)
			if(b.indexOf(v) < 0) return false;
		for(v in b)
			if(a.indexOf(v) < 0) return false;
		return true;
	}

	/**
		Returns the point multiplied by `scale`.
	**/
	inline public static function scaled(pt: h2d.col.Point, scale: Float) {
		return new h2d.col.Point(pt.x * scale, pt.y * scale);
	}

	/**
		Returns the point with a length of at most `maxLength`.
	**/
	inline public static function limitSize(pt: h2d.col.Point, maxLength: Float) {
		var l = pt.length();
		if(l > maxLength && l > hxd.Math.EPSILON) {
			return scaled(normalized(pt), maxLength);
		}
		return pt;
	}

	/**
		Returns the point normalized, or (0, 0) if its length is near 0.
	**/
	inline public static function normalized(pt: h2d.col.Point) {
		var l = pt.length();
		if(l > hxd.Math.EPSILON)
			return new h2d.col.Point(pt.x / l, pt.y / l);
		else
			return new h2d.col.Point(0, 0);
	}

	/**
		Returns the angle of a point from the X axis.
	**/
	inline public static function getAngle(pt: h2d.col.Point) {
		return hxd.Math.atan2(pt.y, pt.x);
	}

	/**
		Returns the point with rounded coordinates.
	**/
	inline public static function rounded(pt: h2d.col.Point) {
		return new h2d.col.Point(Math.round(pt.x), Math.round(pt.y));
	}

	/**
		Sets the coordinates of a point to NaN.
	**/
	inline public static function setInvalid(pt: h2d.col.Point) {
		pt.x = pt.y = Math.NaN;
	}

	/**
		Tells if a point has no NaN coordinate.
	**/
	inline public static function isValid(pt: h2d.col.Point) {
		return !Math.isNaN(pt.x) && !Math.isNaN(pt.y);
	}

	/**
		Returns the unit direction of an angle.
	**/
	inline public static function rotToDir(rot: Float) {
		return new h2d.col.Point(Math.cos(rot), Math.sin(rot));
	}

	/**
		Calls `func` on each edge of a polygon (point, previous point).
	**/
	inline public static function iterPolyEdges(poly: h2d.col.Polygon, func: h2d.col.Point->h2d.col.Point->Void) {
		var prevPt = ArrayExtensions.last(poly.points);
		for(p in poly.points) {
			func(p, prevPt);
			prevPt = p;
		}
	}

	/**
		Tells if a polygon has an edge between two points, in any direction.
	**/
	inline public static function polyHasEdge(poly: h2d.col.Polygon, p1: h2d.col.Point, p2: h2d.col.Point) {
		var has = false;
		iterPolyEdges(poly, function(op1, op2) {
			if(p1 == op1 && p2 == op2 || p1 == op2 && p2 == op1)
				has = true;
		});
		return has;
	}

	/**
		Returns the 2D part of a 3D matrix.
	**/
	public static function toMatrix2d(mat: h3d.Matrix) {
		var mat2d = new h2d.col.Matrix();
		mat2d.x = mat.tx;	mat2d.y = mat.ty;
		mat2d.a = mat._11;	mat2d.b = mat._12;
		mat2d.c = mat._21;	mat2d.d = mat._22;
		return mat2d;
	}

	/**
		Returns the absolute position of an object without its `defaultTransform`.
	**/
	public static function getDefaultAbsPos(obj: h3d.scene.Object) {
		if(obj.defaultTransform != null) {
			var mat = obj.getAbsPos().clone();
			var tmp = obj.defaultTransform.clone();
			tmp.invert();
			mat.multiply(tmp, mat);
			return mat;
		}
		else
			return obj.getAbsPos();
	}
}
