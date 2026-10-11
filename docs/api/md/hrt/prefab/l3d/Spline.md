# hrt.prefab.l3d.Spline

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Spline.hx`](../../../../../../hrt/prefab/l3d/Spline.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A 3D curve through points, editable in the editor. It is sampled in world space to be evaluated at a progress `t` from `0` to `1`.

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

### points

```haxe
var points:Array<SplinePoint>
```

The points, relative to the spline.

### loop

```haxe
var loop:Bool
```

Closes the spline.

### sampleResolution

```haxe
var sampleResolution:Int
```

The number of samples between two points (`1` for a linear spline).

### shape

```haxe
var shape:SplineShape
```

The interpolation between the points.

### showSpline

```haxe
var showSpline:Bool
```

Displays the spline (editor).

### overlayGizmos

```haxe
var overlayGizmos:Bool
```

Displays the spline handles over the scene (editor).

### factorTanLengthEdition

```haxe
var factorTanLengthEdition:Float
```

The scale of the tangent handles (editor).

## Methods

### getSplinePoint

```haxe
inline function getSplinePoint(t:Float, ?out:SplinePoint):SplinePoint
```

Returns the point at progress `t`, in world space, interpolated between the samples (or `null` for less than two samples).

### getPoint

```haxe
inline function getPoint(t:Float, ?out:Null<h3d.col.Point>):h3d.col.Point
```

Returns the position at progress `t`, in world space (or `null` for less than two samples).

### getNearestPointProgressOnSpline

```haxe
inline function getNearestPointProgressOnSpline(p:h3d.col.Point):Float
```

Returns the progress of the point of the spline nearest to `p`.

### getLength

```haxe
function getLength():Float
```

Returns the length of the spline.

### recomputeTangents

```haxe
function recomputeTangents():Void
```

Sets the tangents of the points along the direction between their neighbors, of the default length.

### recenterSpline

```haxe
function recenterSpline():Void
```

Moves the spline to the center of its points, keeping their world position.

### addPoint

```haxe
function addPoint(?idx:Int, ?point:SplinePoint):Void
```

Inserts a point (a default one if `null`) at `idx` (or at the end).

### removePoint

```haxe
function removePoint(?idx:Int):Void
```

Removes the point at `idx` (or the last one).

### localToGlobal

```haxe
function localToGlobal(point:h3d.col.Point):h3d.Vector
```

Returns the point transformed from the space of the spline to world space.

### globalToLocal

```haxe
function globalToLocal(point:h3d.col.Point):h3d.Vector
```

Returns the point transformed from world space to the space of the spline.

### globalToLocalSplinePoint

```haxe
function globalToLocalSplinePoint(sp:SplinePoint):Null<SplinePoint>
```

Returns a copy of the point with its up vector and tangents transformed to the space of the spline. Note: its position is transformed with `localToGlobal`.

### localToGlobalSplinePoint

```haxe
function localToGlobalSplinePoint(sp:SplinePoint):Null<SplinePoint>
```

Returns a copy of the point transformed to world space.

### drawSpline

```haxe
function drawSpline():Void
```

Draws the spline (editor).

### drawHandle

```haxe
function drawHandle(point:SplinePoint):Void
```

Draws the handles of a point (editor).

### clearHandles

```haxe
function clearHandles(?onlyOrphans:Bool = false):Void
```

Removes the handles (only the orphan ones if `onlyOrphans`).

### getLocalCollider

```haxe
function getLocalCollider():h3d.col.Collider
```

Returns a collider made of oriented boxes along the samples.

### getSplineLength

```haxe
function getSplineLength():Float
```

Returns the length of the spline, as the sum of the distances between the samples.

### makeInteractive

```haxe
override function makeInteractive():hxd.Interactive
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Spline
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
