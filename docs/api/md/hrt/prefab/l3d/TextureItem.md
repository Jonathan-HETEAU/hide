# hrt.prefab.l3d.TextureItem

**typedef** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

A texture of a `HeightMap`.

## Fields

### props

```haxe
var ?props:Null<{ scale:Float, color:Int }>
```

The tint color (RGB) and scale of an albedo texture.

### path

```haxe
var path:String
```

The path of the texture. For the tile `(x, y)`, the two `0` of the path are replaced by `x` and `y`.

### kind

```haxe
var kind:HeightMaPTexturePathKind
```

The kind of texture.

### enable

```haxe
var enable:Bool
```

Uses the texture.
