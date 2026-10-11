# hrt.prefab.l3d.HeightMapTile

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

A tile of a `HeightMap`, of size `size`.

## Constructor

### new

```haxe
function new(hmap:HeightMap, tx:Int, ty:Int):Void
```

Creates the tile `(tx, ty)`.

## Variables

### tx

```haxe
var tx(default, null):Int
```

The X index of the tile.

### ty

```haxe
var ty(default, null):Int
```

The Y index of the tile.

### bounds

```haxe
var bounds(default, null):h3d.col.Bounds
```

The bounds of the tile.

### root

```haxe
var root(default, null):h3d.scene.Mesh
```

The mesh of the tile, once created.

### albedoTex

```haxe
var albedoTex:h3d.mat.Texture
```

The baked albedo texture, if `bakedAlbedo`.

## Methods

### remove

```haxe
function remove():Void
```

Removes the mesh and disposes the baked albedo.

### isEmpty

```haxe
function isEmpty():Bool
```

Tells if the tile has no height texture.

### getHeight

```haxe
function getHeight():hxd.Pixels
```

Returns the heights of the tile (loaded on first call), as a `R32F` pixels.

### createShadows

```haxe
function createShadows(mesh:HeightMapMesh):Void
```

Creates the mesh rendering the shadows.

### create

```haxe
function create(mesh:HeightMapMesh):Void
```

Creates the mesh of the tile.

### bake

```haxe
function bake():Void
```

Bakes the blended albedo textures into `albedoTex`.
