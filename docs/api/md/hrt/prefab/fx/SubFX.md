# hrt.prefab.fx.SubFX

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/SubFX.hx`](../../../../../../hrt/prefab/fx/SubFX.hx)

Extends: [`hrt.prefab.Reference`](../Reference.md) → [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Implements: [`hrt.prefab.fx.IEvent`](IEvent.md)

Plays a referenced FX as an event of an FX.

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

### time

```haxe
var time(default, set):Float
```

The start time, in seconds.

### loop

```haxe
var loop(default, set):Bool
```

Loops the sub FX.

### speed

```haxe
var speed(default, set):Float
```

The speed of the sub FX.

### duration

```haxe
var duration:Float
```

Not used: the duration is the one of the FX, divided by `speed`.

### hidden

```haxe
var hidden:Bool
```

Hidden in the editor timeline.

### lock

```haxe
var lock:Bool
```

Locked in the editor timeline.

### selected

```haxe
var selected:Bool
```

Selected in the editor timeline.

## Methods

### getDuration

```haxe
function getDuration():Float
```

Returns the duration of the FX divided by `speed`.

### setDuration _(editor (js) only)_

```haxe
function setDuration(v:Float):Void
```

Sets `speed` so that the FX lasts `v` seconds (editor only).

### getEventPrefab

```haxe
function getEventPrefab():SubFX
```

Returns this prefab.

### prepare

```haxe
function prepare():EventInstance
```

Returns the event instance.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getDisplayInfo _(editor (js) only)_

```haxe
function getDisplayInfo(ctx:hide.prefab.EditContext):{ loop:Bool, length:Float, label:String }
```

Returns the label, length and loop of the event in the editor timeline.

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):SubFX
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Reference`](../Reference.md): `refInstance`, `editMode`, `overrides`, `hasCycle`, `editorInit`, `resolve`, `editorSyncSourceAction`, `editorRemoveObjects`, `onEditorTreeChanged`, `findRec`, `getOpt`, `flatten`, `dispose`, `edit2`, `makeInteractive`, `getHideProps`, `make`
- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
