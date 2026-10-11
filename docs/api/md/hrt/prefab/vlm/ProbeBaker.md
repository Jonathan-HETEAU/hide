# hrt.prefab.vlm.ProbeBaker

**class** · package [`hrt.prefab.vlm`](README.md) · source [`hrt/prefab/vlm/ProbeBaker.hx`](../../../../../../hrt/prefab/vlm/ProbeBaker.hx)

Captures the environment around a position and computes its spherical harmonics, for the volumetric lightmaps.

## Constructor

### new

```haxe
function new():Void
```

Creates the baker.

## Variables

### useGPU

```haxe
var useGPU:Bool
```

Computes the spherical harmonics on the GPU.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the textures.

### captureEnvironment

```haxe
function captureEnvironment(position:h3d.Vector, resolution:Int, scene:h3d.scene.Scene, output:h3d.mat.Texture):Void
```

Renders the scene around `position` into the cube texture `output`.
