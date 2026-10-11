# hrt.prefab.l3d.Spray

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Spray.hx`](../../../../../../hrt/prefab/l3d/Spray.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Subclasses: [`hrt.prefab.l3d.MeshSpray`](MeshSpray.md), [`hrt.prefab.l3d.PrefabSpray`](PrefabSpray.md)

The base of `MeshSpray`: places models or prefabs on the ground with a brush, in the editor.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### makePrimCircle

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

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### drawCircle _(editor (js) only)_

```haxe
function drawCircle(originX:Float, originY:Float, originZ:Float, radius:Float, thickness:Float, color:Int):Void
```

Displays the brush circle (editor only).

### flattenSpray _(editor (js) only)_

```haxe
function flattenSpray(?cl:Class<flattenSpray.T>, ?arr:Array<flattenSpray.T>):Array<flattenSpray.T>
```

Returns this prefab if it is of class `cl` (editor only).

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Spray
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
