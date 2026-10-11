# hrt.prefab.l3d.Text3DPrimitive

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Text3D` · source [`hrt/prefab/l3d/Text3D.hx`](../../../../../../hrt/prefab/l3d/Text3D.hx)

Extends: `h2d.TileLayerContent`

The primitive of a `Text3DMesh`: the glyphs as quads in the XY plane.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### add

```haxe
override function add(x:Float, y:Float, r:Float, g:Float, b:Float, a:Float, t:h2d.Tile):Void
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```

### render

```haxe
override function render(engine:h3d.Engine):Void
```

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### getCollider

```haxe
override function getCollider():h3d.col.Collider
```
