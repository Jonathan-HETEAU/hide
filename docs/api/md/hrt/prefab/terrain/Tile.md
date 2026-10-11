# hrt.prefab.terrain.Tile

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/Tile.hx`](../../../../../../hrt/prefab/terrain/Tile.hx)

Extends: `h3d.scene.Mesh`

A tile of a terrain, with its height map, normal map and surface weight maps.

## Constructor

### new

```haxe
function new(x:Int, y:Int, parent:TerrainMesh):Void
```

Creates the tile `(x, y)` of the terrain.

## Variables

### tileX

```haxe
var tileX(default, null):Int
```

The X index of the tile.

### tileY

```haxe
var tileY(default, null):Int
```

The Y index of the tile.

### heightMap

```haxe
var heightMap:h3d.mat.Texture
```

The height map.

### normalMap

```haxe
var normalMap(default, null):h3d.mat.Texture
```

The normal map, computed from the height map.

### surfaceIndexMap

```haxe
var surfaceIndexMap:h3d.mat.Texture
```

The index map: the surfaces of each pixel.

### surfaceWeights

```haxe
var surfaceWeights:Array<h3d.mat.Texture>
```

The weight map of each surface.

### surfaceWeightArray

```haxe
var surfaceWeightArray(default, null):h3d.mat.TextureArray
```

The weight maps, in a texture array.

### needNewPixelCapture

```haxe
var needNewPixelCapture:Bool
```

Captures the height map pixels again on the next `getHeightMapPixels`.

### insideFrustrum

```haxe
var insideFrustrum(default, null):Bool
```

Tells if the tile was in the camera frustum at the last emit.

### packedWeightMapPixel

```haxe
var packedWeightMapPixel:hxd.Pixels
```

The packed weights, set by the loader for CPU access.

### indexMapPixels

```haxe
var indexMapPixels:hxd.Pixels
```

The index map, set by the loader for CPU access.

### normalTangentBytes

```haxe
var normalTangentBytes:Bytes
```

The normals and tangents, set by the loader.

## Methods

### getHeightMapPixels

```haxe
inline function getHeightMapPixels():hxd.Pixels
```

Returns the pixels of the height map (captured from the texture if needed).

### getNormalMapPixels

```haxe
inline function getNormalMapPixels():hxd.Pixels
```

Returns the pixels of the normal map (captured from the texture if needed).

### createBigPrim

```haxe
function createBigPrim():Void
```

Creates the primitive of the tile, with the heights and normals of its pixels.

### refreshTex

```haxe
function refreshTex():Void
```

Creates the missing textures of the tile.

### generateWeightTextureArray

```haxe
function generateWeightTextureArray():Void
```

Copies the weight maps into the texture array.

### getHeight

```haxe
function getHeight(u:Float, v:Float, ?fast:Bool = false):Float
```

Returns the height at `(u, v)` (from `0` to `1` on the tile), from the captured height map pixels (`0` if none). `fast` skips the bilinear filtering.

### getCachedBounds

```haxe
inline function getCachedBounds():h3d.col.Bounds
```

Returns the bounds of the tile, computed once.

### beforeEmit

```haxe
dynamic function beforeEmit():Bool
```

Called before drawing the tile: returns `false` to skip it. Returns `true` by default.
