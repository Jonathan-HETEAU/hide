# hrt.prefab.fx.Swarm

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/Swarm.hx`](../../../../../../hrt/prefab/fx/Swarm.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A swarm of objects (its first visible child, or small boxes) moving toward targets rotating on a sphere around it.

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

### relativeToRoot

```haxe
var relativeToRoot:Bool
```

Simulates in the space of the FX instead of world space.

### numObjects

```haxe
var numObjects:Int
```

The number of objects.

### seed

```haxe
var seed:Int
```

The random seed.

### randScale

```haxe
var randScale:Float
```

The random variation of the scale of the objects (exponential).

### acceleration

```haxe
var acceleration:Float
```

The acceleration toward the targets, by distance.

### accelerationRandom

```haxe
var accelerationRandom:Float
```

The random variation of the acceleration per object (exponential).

### accelerationNoise

```haxe
var accelerationNoise:Float
```

The variation of the acceleration over time (exponential).

### maxSpeed

```haxe
var maxSpeed:Float
```

The maximum speed.

### maxSpeedRandom

```haxe
var maxSpeedRandom:Float
```

The random variation of the maximum speed per object (exponential).

### maxSpeedNoise

```haxe
var maxSpeedNoise:Float
```

The variation of the maximum speed over time (exponential).

### braking

```haxe
var braking:Float
```

The braking, proportional to the speed.

### baseTargetRotationSpeed

```haxe
var baseTargetRotationSpeed:Float
```

The rotation speed of the targets around the swarm.

### baseTargetRotationSpeedSpread

```haxe
var baseTargetRotationSpeedSpread:Float
```

Not used.

### objectSelfSin

```haxe
var objectSelfSin:Float
```

The amplitude of the sideway oscillation of the objects.

### objectSelfSinFreq

```haxe
var objectSelfSinFreq:Float
```

The frequency of the sideway oscillation of the objects.

### autoTrackRotation

```haxe
var autoTrackRotation:Bool
```

Rotates the targets toward the movement of the swarm.

### trackRotationSpeed

```haxe
var trackRotationSpeed:Float
```

The speed of the rotation toward the movement (`autoTrackRotation`).

### noiseSpeed

```haxe
var noiseSpeed:Float
```

The speed of the noise variations over time.

### sphereAngleRange

```haxe
var sphereAngleRange:Float
```

The vertical spread of the targets on the sphere (`0` for a horizontal circle, `1` for the whole sphere).

### sphereDistanceScale

```haxe
var sphereDistanceScale:Float
```

The random variation of the distance of the targets (exponential).

### debugTargets

```haxe
var debugTargets:Bool
```

Displays the targets (editor).

## Methods

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
override function make(?sh:hrt.prefab.ContextMake):Swarm
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
