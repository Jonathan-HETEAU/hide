# hrt.shader.SpecularColorTexture

**class** · package [`hrt.shader`](README.md) · module `hrt.shader.SpecularColor` · source [`hrt/shader/SpecularColor.hx`](../../../../../hrt/shader/SpecularColor.hx)

Extends: `hxsl.Shader`

Sets the specular color from a texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### specularColorTexture

```haxe
var specularColorTexture(get, set):hxsl.Texture
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
