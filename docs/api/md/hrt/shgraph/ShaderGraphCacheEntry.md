# hrt.shgraph.ShaderGraphCacheEntry

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

A compiled shader graph in the cache.

## Constructor

### new

```haxe
function new(lastTime:Float, def:hrt.prefab.ShaderDef):Void
```

- **param** `def` The compiled shader.
- **param** `lastTime` The modification time of the file.

## Variables

### lastTime

```haxe
var lastTime:Float
```

The modification time of the file.

### def

```haxe
var def:hrt.prefab.ShaderDef
```

The compiled shader.
