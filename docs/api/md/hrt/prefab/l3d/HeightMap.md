# hrt.prefab.l3d.HeightMap

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A terrain displaced by height textures, optionally made of tiles. Not tested.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static variables

### INVALID_Z

```haxe
static var INVALID_Z:Float
```

The height returned outside the height map.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### quality

```haxe
var quality(get, default):Int
```

The resolution of the grid, from `0` to `4` (full resolution of the height texture).

### bakedAlbedo

```haxe
var bakedAlbedo:Bool
```

Bakes the blended albedo textures of each tile in a texture.

### shadowQuality

```haxe
var shadowQuality(get, default):Int
```

The resolution of the shadow grid, from `0` to `4`.

### castShadows

```haxe
var castShadows:Bool
```

Casts shadows.

## Methods

### set_castShadows

```haxe
function set_castShadows(v:Bool):Bool
```

### getZ

```haxe
function getZ(x:Float, y:Float):Float
```

Returns the height at a position, or `INVALID_Z`.

### localRayIntersection

```haxe
override function localRayIntersection(ray:h3d.col.Ray):Float
```

### isTileInBounds

```haxe
inline function isTileInBounds(x:Int, y:Int):Bool
```

Tells if the tile is in the bounds of the height map.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### getDisplayFilters _(editor (js) only)_

```haxe
override function getDisplayFilters():Array<String>
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):HeightMap
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
