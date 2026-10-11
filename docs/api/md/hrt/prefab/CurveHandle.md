# hrt.prefab.CurveHandle

**class** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Curve` · source [`hrt/prefab/Curve.hx`](../../../../../hrt/prefab/Curve.hx)

A bezier handle of a curve key, relative to the key.

## Constructor

### new

```haxe
function new(t:Float, v:Float):Void
```

Creates a handle.

## Variables

### dv

```haxe
var dv:Float
```

The value offset. Defaults to `-1` so that `0` values are serialized (retro-compatibility).

### dt

```haxe
var dt:Float
```

The time offset. Defaults to `-1` so that `0` values are serialized (retro-compatibility).
