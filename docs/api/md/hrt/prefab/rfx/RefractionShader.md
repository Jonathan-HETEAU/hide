# hrt.prefab.rfx.RefractionShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Refraction` · source [`hrt/prefab/rfx/Refraction.hx`](../../../../../../hrt/prefab/rfx/Refraction.hx)

Extends: `hxsl.Shader`

Renders the refracting surfaces, sampling the screen displaced by their normal.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
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
