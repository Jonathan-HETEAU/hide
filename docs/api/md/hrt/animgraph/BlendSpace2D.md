# hrt.animgraph.BlendSpace2D

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/BlendSpace2D.hx`](../../../../../hrt/animgraph/BlendSpace2D.hx)

Extends: [`hrt.prefab.Prefab`](../prefab/Prefab.md)

A 2D blend space (`.bs2d` file): blends the animations of its points depending on a 2D position.

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

### makeAnimation

```haxe
function makeAnimation(?animSet:Map<String, String>, animCache:h3d.prim.ModelCache):h3d.anim.BlendSpace2D
```

Returns a `h3d.anim.BlendSpace2D` playing the points (their paths replaced through `animSet`).

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):BlendSpace2D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../prefab/Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
