# hrt.prefab.fx.EventInstance

**typedef** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Event` · source [`hrt/prefab/fx/Event.hx`](../../../../../../hrt/prefab/fx/Event.hx)

A playing event.

## Fields

### stop

```haxe
var ?stop:Null<() -> Void>
```

Called when the event ends, or `null`.

### setTime

```haxe
var ?setTime:Null<() -> Void>
```

Called at each update with the time since the start of the event, or `null`.

### playing

```haxe
var ?playing:Null<Bool>
```

Tells if the event is playing.

### play

```haxe
var ?play:Null<() -> Void>
```

Called when the event starts, or `null`.

### evt

```haxe
var evt:IEvent
```

The event.
