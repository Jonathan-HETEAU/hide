# hrt.prefab.pbr.LightVolumeObject

**class** · package [`hrt.prefab.pbr`](README.md) · module `hrt.prefab.pbr.LightVolume` · source [`hrt/prefab/pbr/LightVolume.hx`](../../../../../../hrt/prefab/pbr/LightVolume.hx)

Extends: `h3d.scene.Mesh`

The mesh of a `LightVolume`, synced with its parent light.

## Constructor

### new

```haxe
function new(primitive:h3d.prim.Primitive, ?material:h3d.mat.Material, ?parent:h3d.scene.Object):Void
```

## Variables

### USE_SHADOW_MAP

```haxe
var USE_SHADOW_MAP:Bool
```

Uses the shadow map of the light.

### shader

```haxe
var shader:LightVolumeShader
```

The shader.
