# hide.view.l3d.ProbeBakerProcess

**class** · package [`hide.view.l3d`](README.md) · source [`hide_js/hide/view/l3d/ProbeBakerProcess.hx`](../../../../../../hide_js/hide/view/l3d/ProbeBakerProcess.hx) · available on editor (js)

Bakes a volumetric lightmap over several frames.

## Constructor

### new

```haxe
function new(volumetricLightmap:hrt.prefab.vlm.VolumetricLightmap, res:Int, useGPU:Bool, ?bakeTime:Float = 0.016):Void
```

Creates the process of a volumetric lightmap, baking for `bakeTime` seconds per frame.

## Variables

### progress

```haxe
var progress:Float
```

The baked ratio, from 0 to 1.

## Methods

### init

```haxe
function init(env:h3d.scene.pbr.Environment, sceneData:hrt.prefab.Prefab, scene:hide.comp.Scene):Void
```

Prepares the scene to bake.

### update

```haxe
function update(dt:Float):Void
```

Bakes the next probes.

### onEnd

```haxe
dynamic function onEnd():Void
```

Called when all the probes are baked.
