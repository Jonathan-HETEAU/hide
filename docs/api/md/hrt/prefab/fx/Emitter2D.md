# hrt.prefab.fx.Emitter2D

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/Emitter2D.hx`](../../../../../../hrt/prefab/fx/Emitter2D.hx)

Extends: [`hrt.prefab.Object2D`](../Object2D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A 2D particle emitter of an `FX2D`. Its parameters are stored in `props`, and can be animated by children curves named after them.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static variables

### emitterParams

```haxe
static var emitterParams:Array<ParamDef>
```

The parameters of the emitter.

### instanceParams

```haxe
static var instanceParams:Array<ParamDef>
```

The parameters of the particles.

### PARAMS

```haxe
static var PARAMS:Map<String, ParamDef>
```

All the parameters, by name.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Emitter2D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object2D`](../Object2D.md): `local2d`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `blendMode`, `get_scaleArray`, `set_scaleArray`, `loadTransform`, `saveTransform`, `setTransform`, `applyTransform`, `getDefaultEditorName`, `getTransformMatrix`, `setTransformMatrix`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
