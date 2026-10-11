# hrt.prefab.rfx.VolumetricLighting

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/VolumetricLighting.hx`](../../../../../../hrt/prefab/rfx/VolumetricLighting.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A volumetric fog lit by the lights (with their shadows), computed by ray marching at half resolution.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### intensity

```haxe
var intensity:Float
```

The intensity of the effect.

### AFTER_FX

```haxe
var AFTER_FX:Bool
```

Renders after the other effects of the step.

### blend

```haxe
var blend:h3d.mat.PbrBlend
```

How the fog is blended.

### color

```haxe
var color:Int
```

The color of the fog, as RGB.

### steps

```haxe
var steps:Int
```

The number of ray marching steps.

### mode

```haxe
var mode:VolumetricLightingMode
```

The lights.

### blur

```haxe
var blur:Float
```

The blur radius.

### blurDepthThreshold

```haxe
var blurDepthThreshold:Float
```

The depth difference above which the blur stops.

### startDistance

```haxe
var startDistance:Float
```

The distance at which the fog starts.

### endDistance

```haxe
var endDistance:Float
```

The distance at which the ray marching stops.

### maxCamDist

```haxe
var maxCamDist:Float
```

The maximum distance of the ray marching (`0` for none).

### distanceOpacity

```haxe
var distanceOpacity:Float
```

The opacity of the fog (`0` disables the effect).

### ditheringIntensity

```haxe
var ditheringIntensity:Float
```

The dithering of the ray marching steps.

### noiseScale

```haxe
var noiseScale:Float
```

The scale of the noise.

### noiseLacunarity

```haxe
var noiseLacunarity:Float
```

The frequency factor between the noise octaves.

### noiseSharpness

```haxe
var noiseSharpness:Float
```

The sharpness of the noise.

### noisePersistence

```haxe
var noisePersistence:Float
```

The amplitude factor between the noise octaves.

### noiseTurmoil

```haxe
var noiseTurmoil:Float
```

The speed of the noise animation.

### noiseOctave

```haxe
var noiseOctave:Int
```

The number of noise octaves.

### fogDensity

```haxe
var fogDensity:Float
```

The density of the fog.

### fogUseNoise

```haxe
var fogUseNoise:Float
```

How much the noise modulates the fog, from `0` to `1`.

### fogHeightFalloff

```haxe
var fogHeightFalloff:Float
```

The decrease of the density with the height.

### fogEnvPower

```haxe
var fogEnvPower:Float
```

The intensity of the environment lighting of the fog.

### fogBottom

```haxe
var fogBottom:Float
```

The height of the bottom of the fog.

### fogTop

```haxe
var fogTop:Float
```

The height of the top of the fog.

### fogEnvColorMult

```haxe
var fogEnvColorMult:Float
```

How much the environment color tints the fog, from `0` to `1`.

### secondFogColor

```haxe
var secondFogColor:Int
```

The color of the second fog layer, as RGB.

### secondFogUseNoise

```haxe
var secondFogUseNoise:Float
```

How much the noise modulates the second fog, from `0` to `1`.

### secondFogDensity

```haxe
var secondFogDensity:Float
```

The density of the second fog (`0` to disable it).

### secondFogHeightFalloff

```haxe
var secondFogHeightFalloff:Float
```

The decrease of the density of the second fog with the height.

### secondFogBottom

```haxe
var secondFogBottom:Float
```

The height of the bottom of the second fog.

### secondFogTop

```haxe
var secondFogTop:Float
```

The height of the top of the second fog.

### emissiveColor

```haxe
var emissiveColor:Int
```

The color of the light emitted by the fog, as RGB.

### emissiveIntensity

```haxe
var emissiveIntensity:Float
```

The intensity of the light emitted by the fog.

### offsetCamHeight

```haxe
var offsetCamHeight:Bool
```

Moves the top of the fog layers with the camera height.

## Methods

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### modulate

```haxe
override function modulate(t:Float):VolumetricLighting
```

### transition

```haxe
override function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):VolumetricLighting
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
