# hrt.prefab.fx.FX2DAnimation

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.FX2D` · source [`hrt/prefab/fx/FX2D.hx`](../../../../../../hrt/prefab/fx/FX2D.hx)

Extends: `h2d.Object`

The 2D object of an `FX2D`: plays its animations, emitters and events.

## Constructor

### new

```haxe
function new(?parent:h2d.Object):Void
```

Creates the object.

## Variables

### prefab

```haxe
var prefab:hrt.prefab.Prefab
```

The prefab of the FX.

### onEnd

```haxe
var onEnd:() -> Void
```

Called when the FX finishes.

### playSpeed

```haxe
var playSpeed:Float
```

The speed of the FX.

### localTime

```haxe
var localTime:Float
```

The current time of the FX, in seconds.

### startLoop

```haxe
var startLoop:Float
```

The start of the loop, in seconds.

### duration

```haxe
var duration:Float
```

The duration of the FX, in seconds.

### loop

```haxe
var loop:Bool
```

Loops from `startLoop` to the end.

### objects

```haxe
var objects:Array<ObjectAnimation>
```

The animated objects.

### customAnims

```haxe
var customAnims:Array<CustomAnimation>
```

The shader and renderer effect animations.

### emitters

```haxe
var emitters:Array<Emitter2DObject>
```

The particle emitters.

### events

```haxe
var events:Array<EventInstance>
```

The events.

## Methods

### setRandSeed

```haxe
function setRandSeed(seed:Int):Void
```

Sets the random seed.

### setTime

```haxe
function setTime(time:Float):Void
```

Sets the time of the FX and applies the animations.
