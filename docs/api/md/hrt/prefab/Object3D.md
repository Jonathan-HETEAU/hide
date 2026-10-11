# hrt.prefab.Object3D

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Object3D.hx`](../../../../../hrt/prefab/Object3D.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

Subclasses: [`hrt.prefab.CrashTest`](CrashTest.md), [`hrt.prefab.CullingContainer`](CullingContainer.md), [`hrt.prefab.Light`](Light.md), [`hrt.prefab.Model`](Model.md), [`hrt.prefab.Reference`](Reference.md), [`hrt.prefab.RenderProfile`](RenderProfile.md), [`hrt.prefab.RenderProps`](RenderProps.md), [`hrt.prefab.fx.Billboard`](fx/Billboard.md), [`hrt.prefab.fx.Emitter`](fx/Emitter.md), [`hrt.prefab.fx.Event3D`](fx/Event3D.md), [`hrt.prefab.fx.FX`](fx/FX.md), [`hrt.prefab.fx.LookAt`](fx/LookAt.md), [`hrt.prefab.fx.ShaderTarget`](fx/ShaderTarget.md), [`hrt.prefab.fx.Swarm`](fx/Swarm.md), [`hrt.prefab.fx.gpuemitter.GPUEmitter`](fx/gpuemitter/GPUEmitter.md), [`hrt.prefab.l3d.Box`](l3d/Box.md), [`hrt.prefab.l3d.Camera`](l3d/Camera.md), [`hrt.prefab.l3d.Decal`](l3d/Decal.md), [`hrt.prefab.l3d.Environment`](l3d/Environment.md), [`hrt.prefab.l3d.GameController`](l3d/GameController.md), [`hrt.prefab.l3d.HeightMap`](l3d/HeightMap.md), [`hrt.prefab.l3d.Instance`](l3d/Instance.md), [`hrt.prefab.l3d.KitTest`](l3d/KitTest.md), [`hrt.prefab.l3d.Layers2D`](l3d/Layers2D.md), [`hrt.prefab.l3d.Level3D`](l3d/Level3D.md), [`hrt.prefab.l3d.LocalVolumetricLighting`](l3d/LocalVolumetricLighting.md), [`hrt.prefab.l3d.MeshGenerator`](l3d/MeshGenerator.md), [`hrt.prefab.l3d.Particles3D`](l3d/Particles3D.md), [`hrt.prefab.l3d.Polygon`](l3d/Polygon.md), [`hrt.prefab.l3d.Spline`](l3d/Spline.md), [`hrt.prefab.l3d.SplineMesh`](l3d/SplineMesh.md), [`hrt.prefab.l3d.SplineMeshSpawner`](l3d/SplineMeshSpawner.md), [`hrt.prefab.l3d.Spray`](l3d/Spray.md), [`hrt.prefab.l3d.Text3D`](l3d/Text3D.md), [`hrt.prefab.l3d.Trail`](l3d/Trail.md), [`hrt.prefab.l3d.Trails`](l3d/Trails.md), [`hrt.prefab.pbr.LightVolume`](pbr/LightVolume.md), [`hrt.prefab.terrain.Terrain`](terrain/Terrain.md), [`hrt.prefab.vlm.LightProbe`](vlm/LightProbe.md), [`hrt.prefab.vlm.VolumetricLightmap`](vlm/VolumetricLightmap.md)

A prefab with a 3D transform, creating a 3D object (`local3d`) in the scene. The base class of the 3D prefabs. Angles are in degrees.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static variables

### _

```haxe
static var _:Bool
```

## Static methods

### getLocal3d

```haxe
static inline function getLocal3d(prefab:Prefab):h3d.scene.Object
```

Returns the 3D object of the prefab if it is an `Object3D`, or `null`.

### makeTransform

```haxe
static function makeTransform(mat:h3d.Matrix):{ z:Float, y:Float, x:Float, scaleZ:Float, scaleY:Float, scaleX:Float, rotationZ:Float, rotationY:Float, rotationX:Float }
```

Returns the position, scale and rotation (in degrees) of a matrix, rounded, as a structure (see `loadTransform`).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### local3d

```haxe
var local3d:h3d.scene.Object
```

The 3D object created by `make`, or `null` before.

### x

```haxe
var x:Float
```

The X position.

### y

```haxe
var y:Float
```

The Y position.

### z

```haxe
var z:Float
```

The Z position.

### scaleX

```haxe
var scaleX:Float
```

The X scale.

### scaleY

```haxe
var scaleY:Float
```

The Y scale.

### scaleZ

```haxe
var scaleZ:Float
```

The Z scale.

### rotationX

```haxe
var rotationX:Float
```

The rotation around the X axis, in degrees.

### rotationY

```haxe
var rotationY:Float
```

The rotation around the Y axis, in degrees.

### rotationZ

```haxe
var rotationZ:Float
```

The rotation around the Z axis, in degrees.

### visible

```haxe
var visible:Bool
```

Tells if the object is visible.

### editorIcon _(editor (js) only)_

```haxe
var editorIcon:h2d.ObjectFollower
```

The icon of the object in the editor (editor only).

## Methods

### get_scaleArray

```haxe
inline function get_scaleArray():Array<Float>
```

### set_scaleArray

```haxe
inline function set_scaleArray(newScale:Array<Float>):Array<Float>
```

### setTransform

```haxe
function setTransform(mat:h3d.Matrix):Void
```

Sets the position, scale and rotation from a matrix.

### saveTransform

```haxe
function saveTransform():{ z:Float, y:Float, x:Float, scaleZ:Float, scaleY:Float, scaleX:Float, rotationZ:Float, rotationY:Float, rotationX:Float }
```

Returns the position, scale and rotation, as a structure.

### applyTransform

```haxe
function applyTransform():Void
```

Applies the position, scale and rotation to `local3d`.

### getTransform

```haxe
function getTransform(?m:h3d.Matrix):Null<h3d.Matrix>
```

Returns the local transform matrix (in `m` if given).

### localRayIntersection

```haxe
function localRayIntersection(ray:h3d.col.Ray):Float
```

Returns the distance of the intersection of the ray (in local space) with the object, or `-1` (editor only, used for the selection).

### loadTransform

```haxe
function loadTransform(t:{ z:Float, y:Float, x:Float, scaleZ:Float, scaleY:Float, scaleX:Float, rotationZ:Float, rotationY:Float, rotationX:Float }):Void
```

Sets the position, scale and rotation from a structure returned by `saveTransform`.

### getAbsPos

```haxe
function getAbsPos(?followRefs:Bool = false):h3d.Matrix
```

Returns the absolute transform matrix of the prefab.

### getRelativeTransform

```haxe
function getRelativeTransform(to:Prefab, ?matrix:h3d.Matrix, ?followRefs:Bool = false):h3d.Matrix
```

Return the relative transform between this and to prefab. To must be a parent of this object. Pass null to the the AbsPos of the object

### getObjects

```haxe
function getObjects(c:Class<getObjects.T>, ?filter:() -> Bool):Array<getObjects.T>
```

Returns the list of all h3d.scene.Object created by this prefab (but not
the ones created by its children)

### getDisplayFilters

```haxe
function getDisplayFilters():Array<String>
```

Returns the ids of the display filters of the editor that change how the object is displayed: it is updated when one of them is toggled.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### makeInteractive

```haxe
override function makeInteractive():hxd.Interactive
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### addEditorUI _(editor (js) only)_

```haxe
function addEditorUI():Void
```

Adds the editor helpers of the object (editor only).

### removeEditorUI _(editor (js) only)_

```haxe
function removeEditorUI():Void
```

Removes the editor helpers of the object (editor only).

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
override function make(?sh:ContextMake):Object3D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
