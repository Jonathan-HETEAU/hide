# hrt.prefab.fx.ShaderAnimation

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

Extends: [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md) → [`hrt.prefab.fx.Evaluator`](Evaluator.md)

Subclasses: [`hrt.prefab.fx.ShaderDynAnimation`](ShaderDynAnimation.md)

Animates the parameters of a shader with their curves.

## Constructor

### new

```haxe
function new(?randValues:Array<Float>, ?stride:Int):Void
```

## Variables

### params

```haxe
var params:ShaderParams
```

The animated parameters.

### shader

```haxe
var shader:hxsl.Shader
```

The animated shader.

## Methods

### setTime

```haxe
override function setTime(time:Float):Void
```

## Inherited members

- from [`hrt.prefab.fx.CustomAnimation`](CustomAnimation.md): `finishSync`, `startedPlaying`, `setTime`
- from [`hrt.prefab.fx.Evaluator`](Evaluator.md): `parameters`, `setAllParameters`, `getFast`, `getFloat`, `getSum`, `getVector`, `getFastVec`, `getVector2`
