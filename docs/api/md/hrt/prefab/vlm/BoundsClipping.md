# hrt.prefab.vlm.BoundsClipping

**class** · package [`hrt.prefab.vlm`](README.md) · module `hrt.prefab.vlm.LightProbe` · source [`hrt/prefab/vlm/LightProbe.hx`](../../../../../../hrt/prefab/vlm/LightProbe.hx)

Extends: `hxsl.Shader`

Clips the probe lighting to its bounds.

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

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```
