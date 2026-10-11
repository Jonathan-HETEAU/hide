# hrt.prefab.terrain.Surface

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/Surface.hx`](../../../../../../hrt/prefab/terrain/Surface.hx)

A material of the terrain: textures with their placement and height blending.

## Constructor

### new

```haxe
function new(?albedo:h3d.mat.Texture, ?normal:h3d.mat.Texture, ?pbr:h3d.mat.Texture):Void
```

Creates a surface.

## Variables

### albedo

```haxe
var albedo:h3d.mat.Texture
```

The albedo texture.

### normal

```haxe
var normal:h3d.mat.Texture
```

The normal texture.

### pbr

```haxe
var pbr:h3d.mat.Texture
```

The PBR texture.

### tilling

```haxe
var tilling:Float
```

The tiling of the textures.

### offset

```haxe
var offset:h3d.Vector
```

The offset of the textures.

### angle

```haxe
var angle:Float
```

The rotation of the textures, in degrees.

### minHeight

```haxe
var minHeight:Float
```

The minimum height of the height blending.

### maxHeight

```haxe
var maxHeight:Float
```

The maximum height of the height blending.

## Methods

### clone

```haxe
function clone():Surface
```

Returns a copy of the surface (sharing the textures).

### dispose

```haxe
function dispose():Void
```

Does nothing.
