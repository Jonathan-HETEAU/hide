# hrt.prefab.fx.Evaluator

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/Evaluator.hx`](../../../../../../hrt/prefab/fx/Evaluator.hx)

Subclasses: [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md)

Evaluates `Value`s, with random values per particle and the FX parameters.

## Constructor

### new

```haxe
function new(?randValues:Array<Float>, ?stride:Int = 0):Void
```

Creates an evaluator. `randValues` are the random values, `stride` random values per particle.

## Static methods

### vVal

```haxe
static function vVal(f:Float):Value
```

Returns `VZero` for `0`, a `VConst` otherwise.

### vMult

```haxe
static function vMult(a:Value, b:Value):Value
```

Returns the product of two values, simplified when possible.

### vAdd

```haxe
static function vAdd(a:Value, b:Value):Value
```

Returns the sum of two values, simplified when possible.

## Variables

### parameters

```haxe
var parameters:Map<String, Float>
```

The values of the FX parameters, by name.

## Methods

### setAllParameters

```haxe
function setAllParameters(params:Array<Parameter>):Void
```

Sets the parameters to the default values of `params`.

### getFast

```haxe
function getFast(pidx:Int, val:Value, time:Float):Float
```

Returns the value of particle `pidx` at `time`. Throws for `VAdd`, `VMult`, `VVector` and `VHsl`.

### getFloat

```haxe
function getFloat(?pidx:Int = 0, val:Value, time:Float):Float
```

Returns the value of particle `pidx` at `time`.

### getSum

```haxe
function getSum(val:Value, time:Float):Float
```

Returns the integral of the value from `0` to `time`.

### getVector

```haxe
function getVector(?pidx:Int = 0, v:Value, time:Float, vec:h3d.Vector4):h3d.Vector4
```

Sets `vec` to the vector value of particle `pidx` at `time` (a float value is repeated), and returns it.

### getFastVec

```haxe
inline function getFastVec(pidx:Int, v:Value, time:Float, vec:h3d.Vector4):h3d.Vector4
```

Like `getVector`, with `getFast` for the components.

### getVector2

```haxe
function getVector2(?pidx:Int = 0, v:Value, time:Float, vec:h2d.col.Point):h2d.col.Point
```

Sets `vec` to the 2D vector value of particle `pidx` at `time` (a float value is repeated), and returns it.
