# hrt.prefab.l3d.BillboardObj

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Billboard` · source [`hrt/prefab/l3d/Billboard.hx`](../../../../../../hrt/prefab/l3d/Billboard.hx)

Extends: `h3d.scene.Mesh`

Subclasses: [`hrt.impl.EditorIcon`](../../impl/EditorIcon.md)

A textured quad facing the camera.

## Constructor

### new

```haxe
function new(?tile:h3d.mat.Texture, ?parent:h3d.scene.Object):Void
```

Creates the billboard.

## Variables

### billboardScale

```haxe
var billboardScale:Float
```

The scale of the quad.

### texture

```haxe
var texture(get, set):h3d.mat.Texture
```

The texture.

### color

```haxe
var color(get, set):h3d.Vector4
```

The color.

## Methods

### getMaterials

```haxe
override function getMaterials(?a:Array<h3d.mat.Material>, ?recursive:Bool = true):Array<h3d.mat.Material>
```
