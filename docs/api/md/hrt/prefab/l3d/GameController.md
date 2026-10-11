# hrt.prefab.l3d.GameController

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/GameController.hx`](../../../../../../hrt/prefab/l3d/GameController.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Controls the object with a gamepad in the editor (Start to toggle), with a third person camera. Not tested.

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

### moveSpeed

```haxe
var moveSpeed:Float
```

The move speed.

### zOffset

```haxe
var zOffset:Float
```

The height of the camera target above the object.

### followGround

```haxe
var followGround:Bool
```

Keeps the object on the ground.

### cameraFollowGround

```haxe
var cameraFollowGround:Bool
```

Makes the camera target follow the height of the object.

### startFullScreen

```haxe
var startFullScreen:Bool
```

Switches the editor to full screen while controlling.

### animIdle

```haxe
var animIdle:String
```

The name of the idle animation of the models.

### animMove

```haxe
var animMove:String
```

The name of the move animation.

### animJump

```haxe
var animJump:String
```

The name of the jump animation.

### animFall

```haxe
var animFall:String
```

The name of the fall animation.

### animSmooth

```haxe
var animSmooth:Float
```

The blend time between the animations, in seconds.

### jumpPower

```haxe
var jumpPower:Float
```

The initial speed of a jump (`0` to disable jumping).

### jumpPowerHold

```haxe
var jumpPowerHold:Float
```

The speed added while the jump button is held.

### jumpPowerHoldTime

```haxe
var jumpPowerHoldTime:Float
```

The time during which holding the jump button adds speed, in seconds.

### gravity

```haxe
var gravity:Float
```

The gravity.

## Methods

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):GameController
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
