# hrt.prefab.l3d.modellibrary.ModelLibraryCache

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · module `hrt.prefab.l3d.modellibrary.ModelLibrary` · source [`hrt/prefab/l3d/modellibrary/ModelLibrary.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/ModelLibrary.hx)

The loaded data of a `ModelLibrary`, shared by its clones.

## Constructor

### new

```haxe
function new():Void
```

Creates the cache.

## Variables

### wasMade

```haxe
var wasMade:Bool
```

Tells if the library was made.

### hmdPrim

```haxe
var hmdPrim:h3d.prim.HMDModel
```

The primitive of all the meshes.

### shader

```haxe
var shader:AtlasShader
```

The atlas shader.

### geomBounds

```haxe
var geomBounds:Array<h3d.col.Bounds>
```

The bounds of the geometries.
