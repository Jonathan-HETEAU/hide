# hrt.prefab.l3d.modellibrary.BakedMaterialData

**typedef** · package [`hrt.prefab.l3d.modellibrary`](README.md) · module `hrt.prefab.l3d.modellibrary.ModelLibrary` · source [`hrt/prefab/l3d/modellibrary/ModelLibrary.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/ModelLibrary.hx)

A material of a mesh baked in a `ModelLibrary`.

## Fields

### uvY

```haxe
var uvY:Float
```

The Y position in the atlas.

### uvX

```haxe
var uvX:Float
```

The X position in the atlas.

### uvSY

```haxe
var uvSY:Float
```

The height in the atlas.

### uvSX

```haxe
var uvSX:Float
```

The width in the atlas.

### texId

```haxe
var texId:Int
```

The texture in the atlas texture array.

### materialConfig

```haxe
var materialConfig:Int
```

The material configuration (shaders and properties), one mesh batch each.

### lodIndexStart

```haxe
var lodIndexStart:Array<Int>
```

The first index of each LOD.

### lodIndexCount

```haxe
var lodIndexCount:Array<Int>
```

The number of indexes of each LOD.

### indexStart

```haxe
var indexStart:Int
```

The first index in the library primitive.

### indexCount

```haxe
var indexCount:Int
```

The number of indexes.

### geomId

```haxe
var geomId:Int
```

The geometry in the library model.
