# hrt.prefab.rfx.Sao

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/Sao.hx`](../../../../../../hrt/prefab/rfx/Sao.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Scalable ambient occlusion: a screen space ambient occlusion, combined with the material occlusion.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### size

```haxe
var size:Float
```

The size of the occlusion texture, relative to the screen.

### blur

```haxe
var blur:Float
```

The blur radius.

### blurQuality

```haxe
var blurQuality:Float
```

The blur quality.

### noiseScale

```haxe
var noiseScale:Float
```

The scale of the noise texture.

### samples

```haxe
var samples:Int
```

The number of samples.

### radius

```haxe
var radius:Float
```

The radius of the occlusion.

### intensity

```haxe
var intensity:Float
```

The intensity of the occlusion.

### bias

```haxe
var bias:Float
```

The bias against self occlusion.

### microIntensity

```haxe
var microIntensity:Float
```

The intensity of the material occlusion.

### blendMode

```haxe
var blendMode:SaoBlendMode
```

How the occlusion is combined with the material occlusion.

### useWorldUV

```haxe
var useWorldUV:Bool
```

Samples the noise in world space.

### noiseTexturePath

```haxe
var noiseTexturePath:String
```

The path of the noise texture, or `null`.

### USE_START_FADE

```haxe
var USE_START_FADE:Bool
```

Fades the occlusion in near the camera.

### startFadeStart

```haxe
var startFadeStart:Float
```

The distance at which the near fade starts.

### startFadeEnd

```haxe
var startFadeEnd:Float
```

The distance at which the near fade ends.

### USE_FADE

```haxe
var USE_FADE:Bool
```

Fades the occlusion out with the distance.

### fadeStart

```haxe
var fadeStart:Float
```

The distance at which the fade starts.

### fadeEnd

```haxe
var fadeEnd:Float
```

The distance at which the occlusion disappears.

### useScalableBias

```haxe
var useScalableBias:Bool
```

Scales the bias with the distance.

## Methods

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### modulate

```haxe
override function modulate(t:Float):Sao
```

### transition

```haxe
override function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Sao
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
