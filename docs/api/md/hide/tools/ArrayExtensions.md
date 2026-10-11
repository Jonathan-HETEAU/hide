# hide.tools.ArrayExtensions

**class** · package [`hide.tools`](README.md) · module `hide.tools.Extensions` · source [`hide_js/hide/tools/Extensions.hx`](../../../../../hide_js/hide/tools/Extensions.hx) · available on editor (js)

Static extensions of arrays, used with `using hide.tools.Extensions`.

## Static methods

### iterRand

```haxe
static function iterRand(a:Array<iterRand.T>, func:(Int, iterRand.T) -> Void):Void
```

Iterate over all items starting from a random index. Use findRand to interrupt search

### findRand

```haxe
static function findRand(a:Array<findRand.T>, ?rnd:hxd.Rand, func:(Int, findRand.T) -> findRand.R):findRand.R
```

Iterate over all items starting from a random index, until func returns a non-null value

### last

```haxe
static function last(a:Array<last.T>):last.T
```

Returns the last item.

### clear

```haxe
static function clear(a:Array<clear.T>):Void
```

Removes all the items.

### fill

```haxe
static function fill(to:Array<fill.T>, from:Array<fill.T>):Void
```

Makes `to` a copy of `from`, keeping the array instance.

### unshiftUnique

```haxe
static function unshiftUnique(a:Array<unshiftUnique.T>, item:unshiftUnique.T):Void
```

Adds an item at the start if not already in the array.

### pushUnique

```haxe
static function pushUnique(a:Array<pushUnique.T>, item:pushUnique.T):Void
```

Adds an item at the end if not already in the array.

### appendUnique

```haxe
static function appendUnique(a:Array<appendUnique.T>, items:Array<appendUnique.T>):Void
```

Adds the items not already in the array.

### shuffle

```haxe
static function shuffle(a:Array<shuffle.T>, ?rnd:hxd.Rand):Void
```

Shuffles the array, with `rnd` if set.

### pickRandom

```haxe
static function pickRandom(a:Array<pickRandom.T>):Null<pickRandom.T>
```

Returns a random item, or null if empty.

### reverseFor

```haxe
static function reverseFor(a:Array<reverseFor.T>, func:() -> Void):Void
```

Calls `func` on the items from the last one.

### removeIf

```haxe
static function removeIf(a:Array<removeIf.T>, func:() -> Bool):Void
```

Removes the items for which `func` is true.

### find

```haxe
static function find(it:Array<find.T>, f:() -> Bool):Null<find.T>
```

Returns the first item for which `f` is true, or null.

### findIndex

```haxe
static inline function findIndex(it:Array<findIndex.T>, f:() -> Bool):Int
```

Returns the index of the first item for which `f` is true, or -1.

### filterCount

```haxe
static function filterCount(it:Array<filterCount.T>, count:Int, f:() -> Bool):Array<filterCount.T>
```

Returns the first `count` items for which `f` is true.

### any

```haxe
static function any(it:Array<any.T>, f:() -> Bool):Bool
```

Tells if `f` is true for one of the items.

### exists

```haxe
static function exists(it:Array<exists.T>, f:() -> Bool):Bool
```

Tells if `f` is true for one of the items.

### all

```haxe
static function all(it:Array<all.T>, f:() -> Bool):Bool
```

Tells if `f` is true for all the items.

### isEmpty

```haxe
static function isEmpty(array:Array<isEmpty.T>):Bool
```

Tells if the array is empty.

### sum

```haxe
static function sum(array:Array<sum.T>, f:() -> Float):Float
```

Returns the sum of `f` on the items.

### count

```haxe
static function count(it:Array<count.T>, f:() -> Bool):Int
```

Returns the number of items for which `f` is true.

### has

```haxe
static function has(it:Array<has.A>, elt:has.A):Bool
```

Tells if the array contains `elt` (with `==`).

### enumHas

```haxe
static function enumHas(it:Array<enumHas.A>, elt:enumHas.A):Bool
```

Tells if the array has an enum value equal to `elt` (with `Type.enumEq`).

### enumContains

```haxe
static function enumContains(it:Array<enumContains.A>, elt:enumContains.A):Bool
```

Same as `enumHas`.

### getAll

```haxe
static function getAll(array:Array<getAll.A>, f:() -> getAll.B):Array<getAll.B>
```

Returns the non null results of `f` on the items.
