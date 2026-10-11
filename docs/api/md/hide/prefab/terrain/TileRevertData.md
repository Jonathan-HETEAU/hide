# hide.prefab.terrain.TileRevertData

**class** · package [`hide.prefab.terrain`](README.md) · module `hide.prefab.terrain.TerrainEditor` · source [`hide_js/hide/prefab/terrain/TerrainEditor.hx`](../../../../../../hide_js/hide/prefab/terrain/TerrainEditor.hx) · available on editor (js)

The undo data of a tile change: its maps before and after.

## Constructor

### new

```haxe
function new(x:Int, y:Int):Void
```

Creates the undo data of a tile.

## Variables

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

### prevHeightMapPixels

```haxe
var prevHeightMapPixels:hxd.Pixels
```

The height map before the change.

### nextHeightMapPixels

```haxe
var nextHeightMapPixels:hxd.Pixels
```

The height map after the change.

### prevWeightMapPixels

```haxe
var prevWeightMapPixels:Array<hxd.Pixels>
```

The surface weight maps before the change.

### nextWeightMapPixels

```haxe
var nextWeightMapPixels:Array<hxd.Pixels>
```

The surface weight maps after the change.

### prevSurfaceIndexMapPixels

```haxe
var prevSurfaceIndexMapPixels:hxd.Pixels
```

The surface index map before the change.

### nextSurfaceIndexMapPixels

```haxe
var nextSurfaceIndexMapPixels:hxd.Pixels
```

The surface index map after the change.
