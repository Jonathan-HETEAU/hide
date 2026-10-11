# hrt.prefab.fx.AdditionalProperies

**enum** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

The animated properties of a light, by kind of light.

## Constructors

### None

```haxe
None
```

No animated property.

### PointLight

```haxe
PointLight(color:hrt.prefab.fx._Value.Value, power:hrt.prefab.fx._Value.Value, size:hrt.prefab.fx._Value.Value, range:hrt.prefab.fx._Value.Value)
```

The animated properties of a point light.

### SpotLight

```haxe
SpotLight(color:hrt.prefab.fx._Value.Value, power:hrt.prefab.fx._Value.Value, range:hrt.prefab.fx._Value.Value, angle:hrt.prefab.fx._Value.Value, fallOff:hrt.prefab.fx._Value.Value)
```

The animated properties of a spot light.

### DirLight

```haxe
DirLight(color:hrt.prefab.fx._Value.Value, power:hrt.prefab.fx._Value.Value)
```

The animated properties of a directional light.
