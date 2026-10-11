# hrt.prefab.MaterialLibrary

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/MaterialLibrary.hx`](../../../../../hrt/prefab/MaterialLibrary.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

A library of materials, that `Material` prefabs can reference.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static methods

### isMaterialLibrary

```haxe
static function isMaterialLibrary(p:Prefab):Bool
```

Tells if the prefab is a material library.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### make

```haxe
override function make(?sh:ContextMake):MaterialLibrary
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
