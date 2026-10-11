# hrt.impl.EditorIcon

**class** · package [`hrt.impl`](README.md) · module `hrt.impl.EditorTools` · source [`hrt/impl/EditorTools.hx`](../../../../../hrt/impl/EditorTools.hx)

Extends: [`hrt.prefab.l3d.BillboardObj`](../prefab/l3d/BillboardObj.md) → `h3d.scene.Mesh`

A 3D icon of an object in the editor, facing the camera, with no rotation or scale.

## Constructor

### new

```haxe
function new(?tile:h3d.mat.Texture, ?parent:h3d.scene.Object, category:IconCategory):Void
```

Creates the icon.

## Variables

### scaleWithParent

```haxe
var scaleWithParent:Bool
```

Not used.

### category

```haxe
var category:IconCategory
```

The category, to hide the icons by category.

## Methods

### getLocalCollider

```haxe
override function getLocalCollider():h3d.col.Collider
```

## Inherited members

- from [`hrt.prefab.l3d.BillboardObj`](../prefab/l3d/BillboardObj.md): `billboardScale`, `texture`, `color`, `getMaterials`
