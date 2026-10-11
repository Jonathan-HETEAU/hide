# hrt.prefab.CurveKey

**class** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Curve` · source [`hrt/prefab/Curve.hx`](../../../../../hrt/prefab/Curve.hx)

A key of a curve.

## Constructor

### new

```haxe
function new():Void
```

Creates a key.

## Variables

### time

```haxe
var time:Float
```

The time. Defaults to `-1` so that `0` values are serialized (retro-compatibility).

### value

```haxe
var value:Float
```

The value. Defaults to `-1` so that `0` values are serialized (retro-compatibility).

### mode

```haxe
var mode:CurveKeyMode
```

The interpolation mode.

### prevHandle

```haxe
var prevHandle:CurveHandle
```

The bezier handle before the key.

### nextHandle

```haxe
var nextHandle:CurveHandle
```

The bezier handle after the key.
