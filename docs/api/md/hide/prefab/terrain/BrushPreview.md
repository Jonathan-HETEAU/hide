# hide.prefab.terrain.BrushPreview

**class** · package [`hide.prefab.terrain`](README.md) · module `hide.prefab.terrain.Brush` · source [`hide_js/hide/prefab/terrain/Brush.hx`](../../../../../../hide_js/hide/prefab/terrain/Brush.hx) · available on editor (js)

Extends: `h3d.scene.Mesh`

Shows the brush on the terrain as a decal.

## Constructor

### new

```haxe
function new(terrain:hrt.prefab.terrain.TerrainMesh):Void
```

Creates the preview of a terrain.

## Variables

### opacity

```haxe
var opacity:Float
```

The opacity of the preview.

## Methods

### previewAt

```haxe
function previewAt(brush:Brush, pos:h3d.col.Point):Void
```

Shows a brush at a position.

### reset

```haxe
function reset():Void
```

Hides the preview.
