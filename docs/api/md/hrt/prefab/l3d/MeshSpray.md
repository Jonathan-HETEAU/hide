# hrt.prefab.l3d.MeshSpray

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/MeshSpray.hx`](../../../../../../hrt/prefab/l3d/MeshSpray.hx)

Extends: [`hrt.prefab.l3d.Spray`](Spray.md) → [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Places models on the ground with a brush in the editor, rendered with mesh batches (optionally split in cells, or stored in binary).

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### makePrimCircle _(editor (js) only)_

```haxe
static function makePrimCircle(segments:Int, ?inner:Float = 0, ?rings:Int = 0):h3d.prim.Polygon
```

Creates a disc primitive of radius `1`, with an inner radius and rings.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### applyTransform _(editor (js) only)_

```haxe
override function applyTransform():Void
```

### flatten _(editor (js) only)_

```haxe
override function flatten(?cl:Class<flatten.T>, ?arr:Array<flatten.T>):Array<flatten.T>
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### needUniqueName _(editor (js) only)_

```haxe
override function needUniqueName():Bool
```

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):MeshSpray
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.l3d.Spray`](Spray.md): `applyTransform`, `setSelected`, `drawCircle`, `flattenSpray`, `make`
- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
