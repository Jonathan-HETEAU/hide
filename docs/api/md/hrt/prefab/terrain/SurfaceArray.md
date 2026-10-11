# hrt.prefab.terrain.SurfaceArray

**class** · package [`hrt.prefab.terrain`](README.md) · module `hrt.prefab.terrain.Surface` · source [`hrt/prefab/terrain/Surface.hx`](../../../../../../hrt/prefab/terrain/Surface.hx)

The textures of all the surfaces, in texture arrays, with their parameters.

## Constructor

### new

```haxe
function new(count:Int, res:Int, ?mipMaps:Bool = false):Void
```

Creates the arrays of `count` textures of size `res`.

## Variables

### albedo

```haxe
var albedo:h3d.mat.TextureArray
```

The albedo textures.

### normal

```haxe
var normal:h3d.mat.TextureArray
```

The normal textures.

### pbr

```haxe
var pbr:h3d.mat.TextureArray
```

The PBR textures.

### surfaceCount

```haxe
var surfaceCount:Int
```

The number of surfaces.

### params

```haxe
var params:Array<h3d.Vector4>
```

The tiling, offset and angle (radians) of each surface.

### secondParams

```haxe
var secondParams:Array<h3d.Vector4>
```

The minimum and maximum heights of each surface.

## Methods

### clone

```haxe
function clone():SurfaceArray
```

Returns new arrays of the same size.

### dispose

```haxe
function dispose():Void
```

Disposes the textures.
