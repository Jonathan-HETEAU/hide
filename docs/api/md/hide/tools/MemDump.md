# hide.tools.MemDump

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/MemDump.hx`](../../../../../hide_js/hide/tools/MemDump.hx) · available on editor (js)

GPU memory dump.

## Static methods

### gpudump

```haxe
static function gpudump():String
```

Writes the GPU memory allocations (textures and buffers, with their stacks) to `../dump/gpudump.txt`. Returns the path.
