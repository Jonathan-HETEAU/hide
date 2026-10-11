# hrt.shader.RefractionPropsShader

**class** · package [`hrt.shader`](README.md) · module `hrt.shader.Refraction` · source [`hrt/shader/Refraction.hx`](../../../../../hrt/shader/Refraction.hx)

Extends: `hxsl.Shader`

Sets the refraction parameters of a surface.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### intensityInput

```haxe
var intensityInput(get, set):Float
```

### albedoMultInput

```haxe
var albedoMultInput(get, set):Float
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
