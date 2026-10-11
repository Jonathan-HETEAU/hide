# hrt.tools.OneToMany

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/OneToMany.hx`](../../../../../hrt/tools/OneToMany.hx)

Represent a collection of One -> Many relationship, i.e Multiple `Right` elements can point to an unique `Left` element.
For example, a Parent -> Children relationship can be modeled with this, or a Output -> Input in a shadergraph.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty collection.

## Methods

### insert

```haxe
function insert(l:Left, r:Right):Void
```

Add a relation in the collection.
If the right element already has a relation, it will be removed and replaced by this one.

### removeRight

```haxe
function removeRight(r:Right):Null<Left>
```

Removes the relation of a right element. Returns its left element, or `null`.

### removeLeft

```haxe
function removeLeft(l:Left):Void
```

Removes the relations of a left element.

### iterAll

```haxe
function iterAll():KeyValueIterator<Int, Iterator<Right>>
```

Iterates on the left elements and their right elements.

### iterRights

```haxe
function iterRights(l:Left):Iterator<Right>
```

Iterates on the right elements of a left element.

### getLeft

```haxe
function getLeft(r:Right):Null<Left>
```

Returns the left element of a right element, or `null`.

### clear

```haxe
function clear():Void
```

Removes all the relations.
