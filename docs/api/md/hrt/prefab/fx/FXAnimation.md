# hrt.prefab.fx.FXAnimation

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.FX` · source [`hrt/prefab/fx/FX.hx`](../../../../../../hrt/prefab/fx/FX.hx)

Extends: `h3d.scene.Object`

The 3D object of an `FX`: plays its animations, emitters, events and sub FX.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates the object, with a random seed (`0` in the editor).

## Static variables

### defaultCullingDistance

```haxe
static var defaultCullingDistance:Float
```

The culling distance of the FX without one (`0` for none).

### debugFX

```haxe
static var debugFX(default, null):Bool
```

Tells if the FX debug display is enabled.

## Static methods

### setDebugFX

```haxe
static function setDebugFX(?enabled:Bool, renderer:h3d.scene.Renderer):Void
```

Enables (or toggles if `enabled` is `null`) the FX debug display: the scene is desaturated and the FX drawn in color. The renderer needs a `debug` pass.

## Variables

### onEnd

```haxe
var onEnd:() -> Void
```

Called when the FX finishes.

### paused

```haxe
var paused:Bool
```

Pauses the FX.

### playSpeed

```haxe
var playSpeed:Float
```

The speed of the FX (`1` once made, except in the editor). For a sub FX, relative to its parent.

### localTime

```haxe
var localTime:Float
```

The current time of the FX, in seconds.

### startDelay

```haxe
var startDelay:Float
```

The delay before the FX starts, in the time of its parent.

### loop

```haxe
var loop(default, set):Bool
```

Loops between `loopStart` and `loopEnd`.

### loopStart

```haxe
var loopStart:Float
```

The start of the loop: the time of the `loop` event, or `0`.

### loopEnd

```haxe
var loopEnd:Float
```

The end of the loop: the end of the `loop` event, the time of the `end` event, or the duration.

### hasLoopPoints

```haxe
var hasLoopPoints(default, null):Bool
```

Tells if the FX has a `loop` or `end` event.

### duration

```haxe
var duration:Float
```

The duration of the FX, in seconds.

### prefab

```haxe
var prefab:FX
```

The prefab of the FX.

### debugShader

```haxe
var debugShader:DebugFXShader
```

The shader of the debug display, while enabled.

### autoCull

```haxe
var autoCull(default, set):Bool
```

Enable automatic culling based on `cullingRadius` and `cullingDistance`. Will override `culled` on every sync.

### cullingRadius

```haxe
var cullingRadius:Float
```

The radius of the culling sphere.

### cullingDistance

```haxe
var cullingDistance:Float
```

The distance to the camera from which the FX is culled (`0` for none).

### objAnims

```haxe
var objAnims:Array<ObjectAnimation>
```

The animated objects.

### events

```haxe
var events:Array<EventInstance>
```

The events.

### emitters

```haxe
var emitters:Array<EmitterObject>
```

The particle emitters.

### trails

```haxe
var trails:Array<hrt.prefab.l3d.TrailObj>
```

The trails.

### customAnims

```haxe
var customAnims:Array<CustomAnimation>
```

The shader and renderer effect animations.

### constraints

```haxe
var constraints:Array<hrt.prefab.l3d.Constraint>
```

The constraints, resolved by `resolveConstraints`.

### effects

```haxe
var effects:Array<hrt.prefab.rfx.RendererFX>
```

The renderer effects, added to the renderer at the first sync.

### shaderTargets

```haxe
var shaderTargets:Array<ShaderTargetObj>
```

The shader targets.

### subFXs

```haxe
var subFXs:Array<FXAnimation>
```

The sub FX.

### playState

```haxe
var playState(default, set):FXPlayState
```

The part of the FX playing.

## Methods

### onPlayStateChange

```haxe
dynamic function onPlayStateChange(newPlayState:FXPlayState):Void
```

Called when `playState` changes.

### initSubFXs

```haxe
function initSubFXs(root:hrt.prefab._Prefab.PrefabElement):Void
```

Finds the sub FX of the prefab.

### initLoop

```haxe
function initLoop():Void
```

Sets the loop points from the `loop` and `end` events.

### hasEnd

```haxe
function hasEnd():Bool
```

Tells if the FX has a part after the loop.

### reset

```haxe
function reset():Void
```

Restarts the FX and its children FX.

### updateCustomAnims

```haxe
function updateCustomAnims(root:hrt.prefab.Prefab):Void
```

Adds the custom animations of the prefab and its children.

### setParameter

```haxe
function setParameter(name:String, value:Dynamic):Void
```

Sets the value of an FX parameter.

### getParameter

```haxe
function getParameter(name:String):Null<Float>
```

Returns the value of an FX parameter.

### getParameters

```haxe
function getParameters():Iterator<String>
```

Returns the names of the FX parameters.

### setParameters

```haxe
function setParameters(params:Array<Parameter>):Void
```

Sets the parameters to the default values of `params`.

### setRandSeed

```haxe
function setRandSeed(seed:Int):Void
```

Sets the random seed of the FX and its emitters.

### updateCulling

```haxe
function updateCulling(camera:h3d.Camera):Void
```

Culls the FX if its culling sphere is out of the camera frustum, or if it is farther than `cullingDistance`.

### seek

```haxe
function seek(newTime:Float, ?fullsync:Bool = true):Void
```

Jump or rewind in time instantly in the current fx

### update

```haxe
function update(dt:Float, ?fullsync:Bool = true):Void
```

Increase the current playtime of the animation by a small ammount

### setTime

```haxe
function setTime(newTime:Float, ?fullsync:Bool = true):Void
```

Prefer using seek or update depending on the context

### setTimeInternal

```haxe
function setTimeInternal(newTimeParent:Float, dt:Float, isSeek:Bool, ?fullSync:Bool = true):Void
```

newTime is the new time to set, relative to the "parent" timeline
dt is the relative delta of time since the last "parent" update
Depending on how the parent loops, `newTime != lastTime + dt`, that's why the two arguments exists

### stop

```haxe
function stop(?instant:Bool = false, ?onEnd:() -> Void):Void
```

Stops the FX: plays the part after the loop, or jumps to the end if `instant` or without one. `onEnd` replaces `onEnd`.

### resolveConstraints

```haxe
function resolveConstraints(caster:h3d.scene.Object):Void
```

Makes the objects of the constraints follow their targets, found in `caster`.
