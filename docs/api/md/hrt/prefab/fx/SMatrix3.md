# hrt.prefab.fx.SMatrix3

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter` · source [`hrt/prefab/fx/Emitter.hx`](../../../../../../hrt/prefab/fx/Emitter.hx)

A 3x3 matrix of single precision floats.

## Constructor

### new

```haxe
function new():Void
```

Creates a zero vector.

## Variables

### _11

```haxe
var _11:Single
```

### _12

```haxe
var _12:Single
```

### _13

```haxe
var _13:Single
```

### _21

```haxe
var _21:Single
```

### _22

```haxe
var _22:Single
```

### _23

```haxe
var _23:Single
```

### _31

```haxe
var _31:Single
```

### _32

```haxe
var _32:Single
```

### _33

```haxe
var _33:Single
```

## Methods

### toMatrix

```haxe
inline function toMatrix():h3d.Matrix
```

Returns the matrix.

### load

```haxe
inline function load(m:h3d.Matrix):Void
```

Sets the components from the rotation part of a matrix.
