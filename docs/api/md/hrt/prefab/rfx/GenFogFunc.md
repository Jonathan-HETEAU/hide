# hrt.prefab.rfx.GenFogFunc

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.GenFog` · source [`hrt/prefab/rfx/GenFog.hx`](../../../../../../hrt/prefab/rfx/GenFog.hx)

Extends: [`hrt.shader.PbrShader`](../../shader/PbrShader.md) → `h3d.shader.ScreenShader`

The functions computing the fog of `GenFog`.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```

## Inherited members

- from [`hrt.shader.PbrShader`](../../shader/PbrShader.md): `updateConstants`, `getParamValue`, `getParamFloatValue`, `writeParam`, `clone`
