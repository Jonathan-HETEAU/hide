# hide.prefab.terrain.TerrainEditor

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/TerrainEditor.hx`](../../../../../../hide_js/hide/prefab/terrain/TerrainEditor.hx) · available on editor (js)

The editor of a terrain prefab: sculpts the heights, paints the surfaces and deletes the tiles with brushes.

## Constructor

### new

```haxe
function new(terrainPrefab:hrt.prefab.terrain.Terrain, undo:hide.ui.UndoHistory):Void
```

Creates the editor of a terrain.

## Variables

### currentBrush

```haxe
var currentBrush:Brush
```

The current brush.

### currentSurface

```haxe
var currentSurface:hrt.prefab.terrain.Surface
```

The edited surface.

### textureType

```haxe
var textureType:Array<String>
```

The suffixes of the surface textures: albedo, normal, and metalness gloss AO.

### autoCreateTile

```haxe
var autoCreateTile:Bool
```

Creates the missing tiles under the brush.

### allowDisconnectedTiles

```haxe
var allowDisconnectedTiles:Bool
```

Allows creating tiles not connected to the existing ones.

### editContext

```haxe
var editContext:hide.prefab.EditContext
```

The edit context.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the editor resources.

### update

```haxe
function update(?propName:String):Void
```

Applies a changed property of the terrain or editor.

### refresh

```haxe
function refresh():Void
```

Resizes the stroke buffers to the terrain resolution.

### deleteTile

```haxe
function deleteTile(pos:h3d.col.Point):Void
```

Deletes the tile at a position.

### drawSurface

```haxe
function drawSurface(pos:h3d.col.Point):Void
```

Paints the current surface at a position.

### drawHeight

```haxe
function drawHeight(pos:h3d.col.Point):Void
```

Changes the heights at a position with the current brush.

### setSelected

```haxe
function setSelected(b:Bool):Void
```

Starts or stops the edition when the terrain is selected or unselected.

### setupUI

```haxe
function setupUI(props:hide.Element, ctx:hide.prefab.EditContext):Void
```

Adds the brush and surface properties to the properties panel.
