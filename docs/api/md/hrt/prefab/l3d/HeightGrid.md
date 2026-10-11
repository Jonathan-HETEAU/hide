# hrt.prefab.l3d.HeightGrid

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

Extends: `h3d.prim.Primitive`

A grid primitive for the tiles of a `HeightMap`, displaced by the shader.

## Constructor

### new

```haxe
function new(width:Int, height:Int, ?cellWidth:Float = 1., ?cellHeight:Float = 1., ?xOffset:Float = 0., ?yOffset:Float = 0.):Void
```

Creates a grid of `width` x `height` cells.

## Variables

### width

```haxe
var width(default, null):Int
```

The number of cells in width

### height

```haxe
var height(default, null):Int
```

The number of cells in height

### cellWidth

```haxe
var cellWidth(default, null):Float
```

The width of a cell

### cellHeight

```haxe
var cellHeight(default, null):Float
```

The height of a cell

### zMin

```haxe
var zMin:Float
```

*  Minimal Z value, used for reporting bounds.

### zMax

```haxe
var zMax:Float
```

*  Maximal Z value, used for reporting bounds.

### xOffset

```haxe
var xOffset:Float
```

The X offset of the grid.

### yOffset

```haxe
var yOffset:Float
```

The Y offset of the grid.

## Methods

### addNormals

```haxe
function addNormals():Void
```

Adds normals to the vertices.

### addUVs

```haxe
function addUVs():Void
```

Adds texture coordinates to the vertices.

### getBounds

```haxe
override function getBounds():h3d.col.Bounds
```

### alloc

```haxe
override function alloc(engine:h3d.Engine):Void
```
