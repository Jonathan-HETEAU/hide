# hrt.prefab.fx.ObjectAnimation

**typedef** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

The animated transform, color and visibility of an object of an FX, from the curves of its prefab.

## Fields

### visibility

```haxe
var ?visibility:Null<hrt.prefab.fx._Value.Value>
```

The visibility: visible above `0.5`.

### scale

```haxe
var ?scale:Null<hrt.prefab.fx._Value.Value>
```

The scale, applied before the transform of the prefab.

### rotation

```haxe
var ?rotation:Null<hrt.prefab.fx._Value.Value>
```

The rotation in degrees, applied before the transform of the prefab.

### position

```haxe
var ?position:Null<hrt.prefab.fx._Value.Value>
```

The position, added to the transform of the prefab.

### obj2d

```haxe
var ?obj2d:Null<h2d.Object>
```

The 2D object animated.

### obj

```haxe
var ?obj:Null<h3d.scene.Object>
```

The 3D object animated.

### localRotation

```haxe
var ?localRotation:Null<hrt.prefab.fx._Value.Value>
```

The rotation in degrees of the leaf objects of the prefab, in their local space.

### localPosition

```haxe
var ?localPosition:Null<hrt.prefab.fx._Value.Value>
```

The position offset of the leaf objects of the prefab, in their local space.

### elt2d

```haxe
var ?elt2d:Null<hrt.prefab.Object2D>
```

The 2D prefab animated.

### elt

```haxe
var ?elt:Null<hrt.prefab.Object3D>
```

The 3D prefab animated.

### color

```haxe
var ?color:Null<hrt.prefab.fx._Value.Value>
```

The color of the materials (only the alpha for a single curve).

### additionalProperies

```haxe
var ?additionalProperies:Null<AdditionalProperies>
```

The animated properties of a light.
