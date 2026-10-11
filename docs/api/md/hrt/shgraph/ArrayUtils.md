# hrt.shgraph.ArrayUtils

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.Utils` · source [`hrt/shgraph/Utils.hx`](../../../../../hrt/shgraph/Utils.hx)

Macros on arrays.

## Static methods

### getOrPut _(runtime (hl) only)_

```haxe
static function getOrPut(arr:Array<getOrPut.V>, pos:Int, def:getOrPut.V):Dynamic
```

Returns arr[pos] if key if present, else execute def and puts it into arr[pos]
