# hrt.prefab.l3d.Polygon

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A mesh of a simple shape, or of a custom polygon in the XY plane.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### getPrimCache

```haxe
static function getPrimCache():PrimCache
```

Returns the primitive cache of the engine.

### createPrimitive

```haxe
static function createPrimitive(shape:Shape):h3d.prim.Polygon
```

Creates the primitive of a shape (not for `Custom`).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### shape

```haxe
var shape(default, null):Shape
```

The shape.

### points

```haxe
var points:h2d.col.Polygon
```

The points of the `Custom` shape.

### color

```haxe
var color:Int
```

The color of the debug display, as ARGB.

### editor _(editor (js) only)_

```haxe
var editor:hide.prefab.PolygonEditor
```

The polygon editor (editor only).

### gridSize _(editor (js) only)_

```haxe
var gridSize:Float
```

The size of the grid of the polygon editor (editor only).

### cachedPrim _(editor (js) only)_

```haxe
var cachedPrim:h3d.prim.Polygon
```

The primitive of the custom polygon (editor only).

### hasDebugColor _(editor (js) only)_

```haxe
var hasDebugColor:Bool
```

Displays the polygon with its debug color (editor only).

## Methods

### setShape

```haxe
function setShape(newShape:Shape):Void
```

Sets the shape and clears the points.

### makePrimitive

```haxe
function makePrimitive():h3d.prim.Polygon
```

Returns the primitive of the shape (cached, except for a custom polygon).

### localRayIntersection

```haxe
override function localRayIntersection(ray:h3d.col.Ray):Float
```

### getPolygonBounds

```haxe
function getPolygonBounds():h2d.col.Polygon
```

Returns the outline of a 2D shape, or `null` for a 3D shape.

### setColor _(editor (js) only)_

```haxe
function setColor(color:Int):Void
```

Sets the debug color of the mesh (editor only).

### generateCustomPolygon

```haxe
function generateCustomPolygon():h3d.prim.Polygon
```

Creates the primitive of the custom polygon by triangulating `points`.

### getPrimitive

```haxe
function getPrimitive():h3d.prim.Polygon
```

Returns the primitive of the mesh.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

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
override function make(?sh:hrt.prefab.ContextMake):Polygon
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
