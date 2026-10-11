# hrt.animgraph.Resource

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/Resource.hx`](../../../../../hrt/animgraph/Resource.hx)

Extends: `hxd.res.Resource`

An animation graph resource (`.animgraph` file).

## Constructor

### new

```haxe
function new(entry:hxd.fs.FileEntry):Void
```

## Static variables

### CACHE_VERSION

```haxe
static var CACHE_VERSION:Int
```

Increment to reload the cached graphs.

## Methods

### watch

```haxe
override function watch(onChanged:Null<() -> Void>):Void
```

### load

```haxe
function load():AnimGraph
```

Returns the animation graph (cached, reloaded when the file changes).

### loadAnim

```haxe
function loadAnim(?modelCache:h3d.prim.ModelCache, ?resolver:Null<AnimResolver>):AnimGraphInstance
```

Returns an instance of the animation graph.
