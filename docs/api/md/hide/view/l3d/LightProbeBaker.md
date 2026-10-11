# hide.view.l3d.LightProbeBaker

**class** · package [`hide.view.l3d`](README.md) · source [`hide_js/hide/view/l3d/LightProbeBaker.hx`](../../../../../../hide_js/hide/view/l3d/LightProbeBaker.hx) · available on editor (js)

Bakes the light probes of a volumetric lightmap by rendering cube maps of the scene.

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

Converts the probes to spherical harmonics on the GPU.

### environment

```haxe
var environment:h3d.scene.pbr.Environment
```

The environment of the bake.

## Methods

### dispose

```haxe
function dispose():Void
```

Disposes the baker resources.

### initScene

```haxe
function initScene(sceneData:hrt.prefab.Prefab, scene:hide.comp.Scene, env:h3d.scene.pbr.Environment):Void
```

Creates the off screen scene to bake from a prefab.

### bake

```haxe
function bake(volumetricLightMap:hrt.prefab.vlm.VolumetricMesh, resolution:Int, ?time:Float):Null<Float>
```

Bakes probes of a volumetric lightmap, for at most `time` seconds if set.
