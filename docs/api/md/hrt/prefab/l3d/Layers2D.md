# hrt.prefab.l3d.Layers2D

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Layers2D.hx`](../../../../../../hrt/prefab/l3d/Layers2D.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Layers of values painted on the ground in the editor (zones, materials...), stored as images next to the prefab. Not tested.

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

### keepVisible

```haxe
var keepVisible:Bool
```

Keeps the layers displayed when the prefab is not selected (editor).

## Methods

### getLayer

```haxe
function getLayer(key:String):Null<hxd.Pixels>
```

Returns the pixels of a layer, or `null`.

### getLayerColor

```haxe
function getLayerColor(layer:hxd.Pixels, x:Float, y:Float):Int
```

Returns the pixel of the layer at a world position, or `-1` outside.

### getLayerValue

```haxe
function getLayerValue(key:String, x:Float, y:Float):Null<String>
```

Returns the name of the value of a layer at a world position, or `null`.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### drawCircle _(editor (js) only)_

```haxe
function drawCircle(originX:Float, originY:Float, originZ:Float, radius:Float, thickness:Float, color:Int):Void
```

Displays the brush circle.

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Layers2D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
