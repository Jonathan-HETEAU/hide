# hrt.prefab.l3d.Trails

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Trails.hx`](../../../../../../hrt/prefab/l3d/Trails.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Trails following the object (or positions given to the `TrailObj`), with a width fading over their lifetime.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### startWidth

```haxe
var startWidth:Float
```

The width at the head.

### endWidth

```haxe
var endWidth:Float
```

The width at the tail.

### lifetime

```haxe
var lifetime:Float
```

The lifetime of the points, in seconds.

### orientation

```haxe
var orientation:TrailOrientation
```

The orientation of the trails.

### useScale

```haxe
var useScale:Bool
```

Scales the width by the scale of the object.

### useMagnification

```haxe
var useMagnification:Bool
```

Scales the width with the distance to the camera, `1` at `magnificationRefDist`.

### magnificationRefDist

```haxe
var magnificationRefDist:Float
```

The distance at which the magnification scale is `1`.

### useMinify

```haxe
var useMinify:Bool
```

Allows a magnification scale below `1`.

### magnificationMaxDist

```haxe
var magnificationMaxDist:Float
```

The maximum distance of the magnification.

### minSpeed

```haxe
var minSpeed:Float
```

The minimum speed of the head for a segment to be drawn.

### maxSpeed

```haxe
var maxSpeed:Float
```

The maximum speed of the head for a segment to be drawn.

### uvMode

```haxe
var uvMode:UVMode
```

How the texture coordinate U goes along the trails.

### uvStretch

```haxe
var uvStretch:Float
```

The scale of the texture coordinate U.

### uvRepeat

```haxe
var uvRepeat:UVRepeat
```

How the texture coordinate U repeats.

### framerate

```haxe
var framerate:Float
```

The number of points added per second.

### useColor

```haxe
var useColor:Bool
```

Uses the vertex colors.

### color

```haxe
var color:Int
```

The color of the points, as ARGB.

### constantSpeedX

```haxe
var constantSpeedX:Float
```

The X of a constant speed applied to the points, to make the trails appear to move.

### constantSpeedY

```haxe
var constantSpeedY:Float
```

The Y of a constant speed applied to the points.

### constantSpeedZ

```haxe
var constantSpeedZ:Float
```

The Z of a constant speed applied to the points.

### debug

```haxe
var debug:Bool
```

Displays the length of the trails in the editor.

### debugElement _(editor (js) only)_

```haxe
var debugElement:hide.Element
```

The element displaying the debug information (editor only).

## Methods

### create

```haxe
function create(parent:h3d.scene.Object, numTrails:Int):TrailObj
```

Creates the mesh with `numTrails` trails.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Trails
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
