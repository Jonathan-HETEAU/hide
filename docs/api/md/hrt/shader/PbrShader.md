# hrt.shader.PbrShader

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/PbrShader.hx`](../../../../../hrt/shader/PbrShader.hx)

Extends: `h3d.shader.ScreenShader`

Subclasses: [`hrt.prefab.rfx.DistanceBlurShader`](../prefab/rfx/DistanceBlurShader.md), [`hrt.prefab.rfx.GenFogBlendShader`](../prefab/rfx/GenFogBlendShader.md), [`hrt.prefab.rfx.GenFogFunc`](../prefab/rfx/GenFogFunc.md), [`hrt.prefab.rfx.GenFogShader`](../prefab/rfx/GenFogShader.md), [`hrt.prefab.rfx.KuwaharaShader`](../prefab/rfx/KuwaharaShader.md)

The base of the PBR screen shaders: reads the depth, occlusion and HDR maps.

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
