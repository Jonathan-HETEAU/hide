# hrt.prefab.fx.ShaderDynAnimation

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

Extends: [`hrt.prefab.fx.ShaderAnimation`](ShaderAnimation.md) → [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md) → [`hrt.prefab.fx.Evaluator`](Evaluator.md)

Animates the parameters of a `hxsl.DynamicShader` with their curves.

## Constructor

### new

```haxe
function new(?randValues:Array<Float>, ?stride:Int):Void
```

## Methods

### setTime

```haxe
override function setTime(time:Float):Void
```

## Inherited members

- from [`hrt.prefab.fx.ShaderAnimation`](ShaderAnimation.md): `params`, `shader`, `setTime`
- from [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md): `finishSync`, `startedPlaying`, `setTime`
- from [`hrt.prefab.fx.Evaluator`](Evaluator.md): `parameters`, `setAllParameters`, `getFast`, `getFloat`, `getSum`, `getVector`, `getFastVec`, `getVector2`
