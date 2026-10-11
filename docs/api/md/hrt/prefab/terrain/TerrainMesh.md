# hrt.prefab.terrain.TerrainMesh

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/TerrainMesh.hx`](../../../../../../hrt/prefab/terrain/TerrainMesh.hx)

Extends: `h3d.scene.Object`

The object of a `Terrain`: its tiles and surfaces.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates the terrain.

## Variables

### tileSize

```haxe
var tileSize:h2d.col.Point
```

The size of a tile.

### cellSize

```haxe
var cellSize:h2d.col.Point
```

The size of a cell of the grid.

### cellCount

```haxe
var cellCount:h2d.col.IPoint
```

The number of cells of a tile.

### vertexPerMeter

```haxe
var vertexPerMeter:Float
```

The number of vertices per unit.

### heightMapResolution

```haxe
var heightMapResolution:h2d.col.IPoint
```

The resolution of the height maps.

### weightMapResolution

```haxe
var weightMapResolution:h2d.col.IPoint
```

The resolution of the weight maps.

### useBigPrim

```haxe
var useBigPrim:Bool
```

Not used.

### showGrid _(editor (js) only)_

```haxe
var showGrid:Bool
```

Displays the grid (editor only).

### showChecker _(editor (js) only)_

```haxe
var showChecker:Bool
```

Displays a checker texture (editor only).

### showComplexity _(editor (js) only)_

```haxe
var showComplexity:Bool
```

Displays the number of surfaces per pixel (editor only).

### enableParallax

```haxe
var enableParallax:Bool
```

Enables the parallax mapping.

### parallaxAmount

```haxe
var parallaxAmount:Float
```

The amount of parallax mapping.

### parallaxMinStep

```haxe
var parallaxMinStep:Int
```

The minimum number of parallax steps.

### parallaxMaxStep

```haxe
var parallaxMaxStep:Int
```

The maximum number of parallax steps.

### heightBlendStrength

```haxe
var heightBlendStrength:Float
```

The strength of the blending of the surfaces by height.

### blendSharpness

```haxe
var blendSharpness:Float
```

The sharpness of the blending of the surfaces.

### generateMipMaps

```haxe
var generateMipMaps:Bool
```

Generates the mip maps of the surface textures.

## Methods

### getLocalHeight

```haxe
function getLocalHeight(x:Float, y:Float, ?fast:Bool = false):Null<Float>
```

Returns the height at a position in the space of the terrain, or `null` outside the tiles. `fast` skips the bilinear filtering.

### getHeight

```haxe
function getHeight(x:Float, y:Float, ?fast:Bool = false):Null<Float>
```

Returns the height at a world position, or `null` outside the tiles. `fast` skips the bilinear filtering.

### getSurface

```haxe
function getSurface(i:Int):Surface
```

Returns the surface `i`, or `null`.

### getSurfaceFromTex

```haxe
function getSurfaceFromTex(albedo:String, ?normal:String, ?pbr:String):Surface
```

Returns the surface using these textures (by name), or `null`.

### addSurface

```haxe
function addSurface(albedo:Null<h3d.mat.Texture>, normal:Null<h3d.mat.Texture>, pbr:Null<h3d.mat.Texture>):Surface
```

Adds a surface with these textures.

### addEmptySurface

```haxe
function addEmptySurface():Surface
```

Adds a surface without textures.

### generateSurfaceArray

```haxe
function generateSurfaceArray():Void
```

Copies the textures of the surfaces into the texture arrays.

### updateSurfaceParams

```haxe
function updateSurfaceParams():Void
```

Updates the parameters of the surfaces in the texture arrays.

### refreshAllGrids

```haxe
function refreshAllGrids():Void
```

Rebuilds the grid primitive.

### refreshAllTex

```haxe
function refreshAllTex():Void
```

Refreshes the textures of the tiles.

### refreshAll

```haxe
function refreshAll():Void
```

Rebuilds the grid and refreshes the textures.

### createTile

```haxe
function createTile(x:Int, y:Int, ?createTexture:Bool = true):Tile
```

Returns the tile at `(x, y)`, created if missing.

### addTile

```haxe
function addTile(tile:Tile, ?replace:Bool = false):Void
```

Adds a tile (replacing the one at its position if `replace`).

### removeTileAt

```haxe
function removeTileAt(x:Int, y:Int):Bool
```

Removes the tile at `(x, y)`. Note: as written, it only calls `removeTile` when there is no tile, so it removes nothing.

### removeTile

```haxe
function removeTile(t:Tile):Bool
```

Removes a tile. Returns `false` if it is not in the terrain.

### getTileIndex

```haxe
function getTileIndex(t:Tile):Int
```

Returns the index of a tile, or `-1`.

### getTile

```haxe
function getTile(x:Int, y:Int):Tile
```

Returns the tile at `(x, y)`, or `null`.

### getTileAtWorldPos

```haxe
function getTileAtWorldPos(x:Float, y:Float):Tile
```

Returns the tile at a world position, or `null`.

### createTileAtWorldPos

```haxe
function createTileAtWorldPos(x:Float, y:Float):Tile
```

Returns the tile at a world position, created if missing.

### getTiles

```haxe
function getTiles(x:Float, y:Float, range:Float, ?create:Bool = false, ?disconectedTiles:Bool = false):Array<Tile>
```

Returns the tiles within `range` of a world position, creating them if `create` (next to existing tiles, or anywhere with `disconectedTiles`).

### localRayIntersection

```haxe
function localRayIntersection(ray:h3d.col.Ray):Float
```

Returns the distance of the intersection of a local ray with the tiles, or `-1`.

### onModified

```haxe
function onModified():Void
```

Called when the terrain is modified. Does nothing by default.
