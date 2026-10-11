# hrt.prefab.rfx.Vignetting

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/Vignetting.hx`](../../../../../../hrt/prefab/rfx/Vignetting.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Colors the screen borders.

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

### color

```haxe
var color:Int
```

The color, as RGB.

### alpha

```haxe
var alpha:Float
```

The opacity.

### radius

```haxe
var radius:Float
```

The radius, relative to the screen, from which the borders are colored.

### softness

```haxe
var softness:Float
```

The width of the transition.

### renderAfterUpscaling

```haxe
var renderAfterUpscaling:Bool
```

Renders after the upscaling instead of after the tonemapping.

## Methods

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### modulate

```haxe
override function modulate(t:Float):Vignetting
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
override function make(?sh:hrt.prefab.ContextMake):Vignetting
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
