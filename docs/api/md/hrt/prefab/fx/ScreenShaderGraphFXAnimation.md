# hrt.prefab.fx.ScreenShaderGraphFXAnimation

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

Extends: [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md) → [`hrt.prefab.fx.Evaluator`](Evaluator.md)

Animates the parameters of a `ScreenShaderGraph` with their curves.

## Constructor

### new

```haxe
function new(?randValues:Array<Float>, ?stride:Int):Void
```

## Variables

### params

```haxe
var params:Array<{ value:hrt.prefab.fx._Value.Value, type:hxsl.Type, name:String }>
```

The animated parameters.

### rfx

```haxe
var rfx:hrt.prefab.rfx.ScreenShaderGraph
```

The animated effect.

## Methods

### setTime

```haxe
override function setTime(time:Float):Void
```

## Inherited members

- from [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md): `finishSync`, `startedPlaying`, `setTime`
- from [`hrt.prefab.fx.Evaluator`](Evaluator.md): `parameters`, `setAllParameters`, `getFast`, `getFloat`, `getSum`, `getVector`, `getFastVec`, `getVector2`
