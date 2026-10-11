# hrt.prefab.fx.SVector4

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter` · source [`hrt/prefab/fx/Emitter.hx`](../../../../../../hrt/prefab/fx/Emitter.hx)

A vector of 4 single precision floats.

## Constructor

### new

```haxe
function new():Void
```

Creates the matrix.

## Variables

### x

```haxe
var x:Single
```

X.

### y

```haxe
var y:Single
```

Y.

### z

```haxe
var z:Single
```

Z.

### w

```haxe
var w:Single
```

W.

## Methods

### toQuat

```haxe
inline function toQuat():h3d.Quat
```

Returns the components as a quaternion.

### load

```haxe
inline function load(v:h3d.Vector4):Void
```

Sets the components from a vector.

### loadQuat

```haxe
inline function loadQuat(q:h3d.Quat):Void
```

Sets the components from a quaternion.

### toVector

```haxe
inline function toVector():h3d.Vector4
```

Returns the vector.
