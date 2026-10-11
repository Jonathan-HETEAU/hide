# hrt.prefab.fx.Event

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/Event.hx`](../../../../../../hrt/prefab/fx/Event.hx)

Extends: [`hrt.prefab.Prefab`](../Prefab.md)

Implements: [`hrt.prefab.fx.IEvent`](IEvent.md)

Subclasses: [`hrt.prefab.fx.AnimEvent`](AnimEvent.md)

An event of an FX timeline, played between `time` and `time + duration`. Events named `loop` and `end` set the loop of the FX.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### updateEvents

```haxe
static function updateEvents(evts:Array<EventInstance>, time:Float, prevTime:Float, duration:Float):Void
```

Plays and stops the events for the time going from `prevTime` to `time`, and sets their time. A time going back loops with `duration`.

### stopAllEvents

```haxe
static function stopAllEvents(evts:Array<EventInstance>):Void
```

Stops the playing events.

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

### duration

```haxe
var duration:Float
```

The duration, in seconds (`0` for none).

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

Returns `duration`.

### prepare

```haxe
function prepare():EventInstance
```

Returns the event instance.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getEventPrefab

```haxe
function getEventPrefab():Event
```

Returns this prefab.

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### getDisplayInfo _(editor (js) only)_

```haxe
function getDisplayInfo(ctx:hide.prefab.EditContext):{ loop:Bool, label:String }
```

Returns the label of the event in the editor timeline.

### canEditDuration _(editor (js) only)_

```haxe
function canEditDuration():Bool
```

Returns `true`.

### setDuration _(editor (js) only)_

```haxe
function setDuration(duration:Float):Void
```

Sets the duration (editor only).

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Event
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
