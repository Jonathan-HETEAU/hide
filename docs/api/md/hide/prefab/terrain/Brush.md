# hide.prefab.terrain.Brush

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/Brush.hx`](../../../../../../hide_js/hide/prefab/terrain/Brush.hx) · available on editor (js)

A terrain brush: a texture stamped along the stroke.

## Constructor

### new

```haxe
function new():Void
```

Creates a brush.

## Variables

### name

```haxe
var name:String
```

The brush name.

### size

```haxe
var size:Float
```

The brush size, in world units.

### strength

```haxe
var strength:Float
```

The brush strength (from 0 to 1). In `Set` mode, also the target height.

### step

```haxe
var step:Float
```

The distance between two stamps of the stroke.

### tex

```haxe
var tex:h3d.mat.Texture
```

The brush texture.

### bitmap

```haxe
var bitmap:h2d.Bitmap
```

The bitmap drawing the brush texture.

### texPath

```haxe
var texPath:String
```

The path of the brush texture.

### index

```haxe
var index:Int
```

The index of the painted surface.

### brushMode

```haxe
var brushMode:BrushMode
```

The brush mode.

### firstClick

```haxe
var firstClick:Bool
```

True on the first frame of a stroke.

## Methods

### isValid

```haxe
function isValid():Bool
```

Tells if the brush can be used (all set, or `Delete` mode).

### scaleForTex

```haxe
function scaleForTex(tileSize:h2d.col.Point, texResolution:h2d.col.IPoint):Void
```

Scales the bitmap to the brush size for a texture of a tile.

### drawTo

```haxe
function drawTo(target:h3d.mat.Texture, pos:h3d.col.Point, tileSize:h2d.col.Point, ?offset:Int = 0):Void
```

Stamps the brush on a tile texture at a position (from 0 to 1 on the tile).
