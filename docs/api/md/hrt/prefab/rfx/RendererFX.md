# hrt.prefab.rfx.RendererFX

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/RendererFX.hx`](../../../../../../hrt/prefab/rfx/RendererFX.hx)

Extends: [`hrt.prefab.Prefab`](../Prefab.md)

Implements: `h3d.impl.RendererFX`

Subclasses: [`hrt.prefab.l3d.Layer2DRFX`](../l3d/Layer2DRFX.md), [`hrt.prefab.rfx.AutoExposure`](AutoExposure.md), [`hrt.prefab.rfx.Bloom`](Bloom.md), [`hrt.prefab.rfx.Border`](Border.md), [`hrt.prefab.rfx.ChromaticAberration`](ChromaticAberration.md), [`hrt.prefab.rfx.CloudShadow`](CloudShadow.md), [`hrt.prefab.rfx.ColorGrading`](ColorGrading.md), [`hrt.prefab.rfx.Configurator`](Configurator.md), [`hrt.prefab.rfx.DistanceBlur`](DistanceBlur.md), [`hrt.prefab.rfx.Distortion`](Distortion.md), [`hrt.prefab.rfx.GenFog`](GenFog.md), [`hrt.prefab.rfx.HierarchicalSSR`](HierarchicalSSR.md), [`hrt.prefab.rfx.KuwaharaFilter`](KuwaharaFilter.md), [`hrt.prefab.rfx.LightVolume`](LightVolume.md), [`hrt.prefab.rfx.Outline`](Outline.md), [`hrt.prefab.rfx.Refraction`](Refraction.md), [`hrt.prefab.rfx.SSR`](SSR.md), [`hrt.prefab.rfx.Sao`](Sao.md), [`hrt.prefab.rfx.ScreenShaderGraph`](ScreenShaderGraph.md), [`hrt.prefab.rfx.Sharpen`](Sharpen.md), [`hrt.prefab.rfx.TemporalBloom`](TemporalBloom.md), [`hrt.prefab.rfx.TemporalFiltering`](TemporalFiltering.md), [`hrt.prefab.rfx.Vignetting`](Vignetting.md), [`hrt.prefab.rfx.VolumetricLighting`](VolumetricLighting.md)

The base of the renderer effect prefabs: a `h3d.impl.RendererFX` added to the renderer. The prefab is cloned as the effect instance.

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

## Methods

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

Called when the rendering starts. Does nothing by default.

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

Called at the beginning of a rendering step. Does nothing by default.

### end

```haxe
function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

Called at the end of a rendering step. Does nothing by default.

### transition

```haxe
function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

Returns a transition from `r1` to `r2`: switches to `r2` without blending by default.

### modulate

```haxe
function modulate(t:Float):h3d.impl.RendererFX
```

Returns the effect instance (made if needed).

### dispose

```haxe
override function dispose():Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):RendererFX
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
