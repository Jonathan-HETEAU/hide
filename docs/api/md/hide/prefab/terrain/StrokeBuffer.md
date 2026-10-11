# hide.prefab.terrain.StrokeBuffer

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/StrokeBuffer.hx`](../../../../../../hide_js/hide/prefab/terrain/StrokeBuffer.hx) · available on editor (js)

A render target accumulating a brush stroke on one terrain tile.

## Constructor

### new

```haxe
function new(size:h2d.col.IPoint, x:Int, y:Int, format:hxd.PixelFormat):Void
```

Creates the buffer of a tile.

## Variables

### tex

```haxe
var tex:h3d.mat.Texture
```

The stroke texture.

### x

```haxe
var x:Int
```

The X index of the tile.

### y

```haxe
var y:Int
```

The Y index of the tile.

### used

```haxe
var used:Bool
```

True when the buffer is used by the current stroke.

### prevTex

```haxe
var prevTex:h3d.mat.Texture
```

The height map of the tile before the stroke.

### tempTex

```haxe
var tempTex:h3d.mat.Texture
```

A temporary texture.

### format

```haxe
var format:hxd.PixelFormat
```

The texture format.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the textures.

### refresh

```haxe
function refresh(size:h2d.col.IPoint):Void
```

Recreates the textures with a new size.

### reset

```haxe
function reset():Void
```

Clears the stroke and marks the buffer as unused.
