# hrt.prefab.RenderProps

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/RenderProps.hx`](../../../../../hrt/prefab/RenderProps.hx)

Extends: [`hrt.prefab.Object3D`](Object3D.md) → [`hrt.prefab.Prefab`](Prefab.md)

The properties of the renderer (`h3d.scene.Renderer.props`), by material setup, with the renderer effects (`hrt.prefab.rfx.RendererFX` children).

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### getProps

```haxe
function getProps(renderer:h3d.scene.Renderer):Null<{  }>
```

Returns the renderer properties of the current material setup, completed with the default properties of the renderer, or `null`.

### setProps

```haxe
function setProps(props:Any):Void
```

Sets the renderer properties of the current material setup (or removes them if `null`).

### applyProps

```haxe
function applyProps(renderer:h3d.scene.Renderer):Bool
```

Applies the properties and the effects to the renderer. Returns `false` if there are no properties.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### editorAllowChild

```haxe
override function editorAllowChild(cl:Class<Prefab>):Bool
```

### make

```haxe
override function make(?sh:ContextMake):RenderProps
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
