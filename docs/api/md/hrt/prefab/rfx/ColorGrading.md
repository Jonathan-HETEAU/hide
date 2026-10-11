# hrt.prefab.rfx.ColorGrading

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/ColorGrading.hx`](../../../../../../hrt/prefab/rfx/ColorGrading.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Transforms the colors with a lookup table texture, in the tonemapping.

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

### customLut

```haxe
var customLut:h3d.mat.Texture
```

A lookup table texture replacing the one of the prefab, or `null`.

### customLutsBlend

```haxe
var customLutsBlend:{  }
```

The two lookup tables of a transition, or `null`.

### intensity

```haxe
var intensity:Float
```

The intensity of the effect.

## Methods

### getLutTexture

```haxe
function getLutTexture():Null<h3d.mat.Texture>
```

Returns the lookup table texture of the prefab, or `null`.

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### modulate

```haxe
override function modulate(t:Float):ColorGrading
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
override function make(?sh:hrt.prefab.ContextMake):ColorGrading
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
