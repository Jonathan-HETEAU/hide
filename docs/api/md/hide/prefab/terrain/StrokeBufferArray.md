# hide.prefab.terrain.StrokeBufferArray

**class** · package [`hide.prefab.terrain`](README.md) · module `hide.prefab.terrain.StrokeBuffer` · source [`hide_js/hide/prefab/terrain/StrokeBuffer.hx`](../../../../../../hide_js/hide/prefab/terrain/StrokeBuffer.hx) · available on editor (js)

The stroke buffers of the tiles touched by a stroke.

## Constructor

### new

```haxe
function new(format:hxd.PixelFormat, texSize:h2d.col.IPoint):Void
```

Creates an empty array of buffers of a format and size.

## Variables

### strokeBuffers

```haxe
var strokeBuffers(default, null):Array<StrokeBuffer>
```

The buffers.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the buffers.

### getStrokeBuffer

```haxe
function getStrokeBuffer(x:Int, y:Int):StrokeBuffer
```

Returns the buffer of a tile, reusing an unused one or creating it.

### refresh

```haxe
function refresh(size:h2d.col.IPoint):Void
```

Resizes the buffers.

### reset

```haxe
function reset():Void
```

Clears all the buffers.
