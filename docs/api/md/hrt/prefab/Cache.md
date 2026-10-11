# hrt.prefab.Cache

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Cache.hx`](../../../../../hrt/prefab/Cache.hx)

The shared cache of the models, textures and shaders loaded by the prefabs.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty cache.

## Static methods

### init

```haxe
static dynamic function init():Cache
```

Override this with your own cache objets.

### get

```haxe
static function get():Cache
```

Returns the cache (created with `init`).

## Variables

### modelCache

```haxe
var modelCache:h3d.prim.ModelCache
```

The cache of the models, animations and textures.

### shaderDefCache

```haxe
var shaderDefCache:ShaderDefCache
```

The cache of the shaders.
