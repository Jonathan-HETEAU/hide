# hrt.prefab.l3d.UVRepeat

**enum** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Trails` · source [`hrt/prefab/l3d/Trails.hx`](../../../../../../hrt/prefab/l3d/Trails.hx)

How the texture coordinate U repeats.

## Constructors

### EMod

```haxe
EMod
```

From `0` to `1`, then back to `0`: for textures tiling horizontally.

### EMirror

```haxe
EMirror
```

From `0` to `1`, then from `1` to `0`: for textures not tiling horizontally.

### EClamp

```haxe
EClamp
```

From `0` to `1`, then stays at `1`.

### ENone

```haxe
ENone
```

No repeat.
