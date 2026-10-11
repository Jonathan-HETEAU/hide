# hrt.prefab.l3d.Layer2DRFX

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Layers2D` · source [`hrt/prefab/l3d/Layers2D.hx`](../../../../../../hrt/prefab/l3d/Layers2D.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](../rfx/RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

The renderer effect displaying the painted layer.

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

### pass

```haxe
var pass:h3d.pass.ScreenFx<LayerView2DRFXShader>
```

The screen pass.

## Methods

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Layer2DRFX
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](../rfx/RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
