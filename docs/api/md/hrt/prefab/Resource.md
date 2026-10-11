# hrt.prefab.Resource

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Resource.hx`](../../../../../hrt/prefab/Resource.hx)

Extends: `hxd.res.Resource`

A prefab file resource (`.prefab`, `.fx`, `.l3d`...): `load()` returns its prefab, cached and reloaded when the file changes. Accessed with `hxd.Res` (`hxd.res.Prefab`).

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

Increase it to invalidate the prefabs cached by `load`.

## Static methods

### make

```haxe
static function make(p:Object3D):Resource
```

Returns a resource for an existing prefab.

### onPrefabLoaded

```haxe
static dynamic function onPrefabLoaded(p:Prefab):Void
```

Called when a prefab was loaded or reloaded.

## Variables

### reloadedVersion

```haxe
var reloadedVersion(default, null):Int
```

Increase each time this resource get reloaded, can be used for cache invalidation

## Methods

### watch

```haxe
override function watch(onChanged:Null<() -> Void>):Void
```

### loadBypassCache

```haxe
function loadBypassCache():Prefab
```

Loads the prefab from the file, without using the cache.

### load

```haxe
function load():Prefab
```

Returns the prefab of the file (cached, see `CACHE_VERSION`). The file is watched: the prefab is reloaded when it changes.
