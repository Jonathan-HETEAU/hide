# hrt.prefab.fx.IEvent

**interface** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Event` · source [`hrt/prefab/fx/Event.hx`](../../../../../../hrt/prefab/fx/Event.hx)

Implemented by: [`hrt.prefab.fx.Event`](Event.md), [`hrt.prefab.fx.Event3D`](Event3D.md), [`hrt.prefab.fx.SubFX`](SubFX.md)

An event of an FX timeline.

## Variables

### name

```haxe
var name:String
```

The name.

### time

```haxe
var time(default, set):Float
```

The start time, in seconds.

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

### getEventPrefab

```haxe
function getEventPrefab():hrt.prefab.Prefab
```

Returns the prefab of the event.

### getDuration

```haxe
function getDuration():Float
```

Returns the duration, in seconds.

### prepare

```haxe
function prepare():EventInstance
```

Returns the event instance, or `null`.

### setDuration _(editor (js) only)_

```haxe
function setDuration(duration:Float):Void
```

Sets the duration (editor only).

### getDisplayInfo _(editor (js) only)_

```haxe
function getDisplayInfo(ctx:hide.prefab.EditContext):{ ?loop:Null<Bool>, label:String }
```

Returns the label of the event in the editor timeline (editor only).
