# hrt.prefab.fx.FX

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/FX.hx`](../../../../../../hrt/prefab/fx/FX.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Implements: [`hrt.prefab.fx.BaseFX`](BaseFX.md)

A 3D FX: a timeline of animations, particles and events. Its children under a prefab named `FXRoot` are made at runtime.

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

### duration

```haxe
var duration:Float
```

The duration of the FX, in seconds.

### startDelay

```haxe
var startDelay:Float
```

The delay before the FX starts, in seconds.

### scriptCode

```haxe
var scriptCode:String
```

The script of the FX.

### cullingRadius

```haxe
var cullingRadius:Float
```

The radius of the culling sphere.

### cullingDistance

```haxe
var cullingDistance:Float
```

The distance to the camera from which the FX is culled (`0` for `FXAnimation.defaultCullingDistance`).

### markers

```haxe
var markers:Array<{ t:Float }>
```

The time markers, in seconds.

### parameters

```haxe
var parameters:Array<Parameter>
```

The parameters, used to blend curves.

## Methods

### postMakeInstance

```haxe
override function postMakeInstance():Void
```

### setTarget

```haxe
function setTarget(target:h3d.scene.Object):Void
```

Sets the target of the shader targets of the FX.

### onEditorTreeChanged _(editor (js) only)_

```haxe
override function onEditorTreeChanged(child:hrt.prefab.Prefab):hrt.prefab.TreeChangedResult
```

### refreshObjectAnims _(editor (js) only)_

```haxe
function refreshObjectAnims():Void
```

Rebuilds the object animations (editor only).

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
override function make(?sh:hrt.prefab.ContextMake):FX
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
