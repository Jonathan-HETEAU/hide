# hrt.prefab.rfx.TemporalFiltering

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/TemporalFiltering.hx`](../../../../../../hrt/prefab/rfx/TemporalFiltering.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Temporal anti-aliasing: jitters the camera each frame and blends with the previous frames.

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

### amount

```haxe
var amount:Float
```

The weight of the previous frames.

### varianceClipping

```haxe
var varianceClipping:Bool
```

Clips the previous color to the neighborhood of the pixel, to reduce ghosting.

### catmullRom

```haxe
var catmullRom:Bool
```

Samples the previous frame with a Catmull-Rom filter.

### velocity

```haxe
var velocity:Bool
```

Uses the velocity buffer to reproject the previous frame.

### jitterPattern

```haxe
var jitterPattern:Pattern
```

The jitter pattern.

### renderMode

```haxe
var renderMode:String
```

When the effect is rendered: `AfterTonemapping` or `BeforeTonemapping`.

### keepAlpha

```haxe
var keepAlpha:Bool
```

Keeps the alpha of the frame (otherwise `1`).

### keepSkyAlpha

```haxe
var keepSkyAlpha:Bool
```

Keeps the alpha of the frame on the sky.

### frustumJitter

```haxe
var frustumJitter:FrustumJitter
```

The jitter of the camera.

### pass

```haxe
var pass:h3d.pass.ScreenFx<TemporalFilteringShader>
```

The filtering pass.

## Methods

### start

```haxe
override function start(r:h3d.scene.Renderer):Void
```

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
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
override function make(?sh:hrt.prefab.ContextMake):TemporalFiltering
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
