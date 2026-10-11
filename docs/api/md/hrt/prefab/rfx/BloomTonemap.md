# hrt.prefab.rfx.BloomTonemap

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Bloom` · source [`hrt/prefab/rfx/Bloom.hx`](../../../../../../hrt/prefab/rfx/Bloom.hx)

Extends: `hxsl.Shader`

Adds the bloom texture in the tonemapping.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### bloomTexture

```haxe
var bloomTexture(get, set):hxsl.Texture
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

### clone

```haxe
override function clone():hxsl.Shader
```
