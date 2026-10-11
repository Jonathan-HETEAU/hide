# hrt.shader.ParticleColorLife

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/ParticleColorLife.hx`](../../../../../hrt/shader/ParticleColorLife.hx)

Extends: `hxsl.Shader`

Multiplies the color of the particles by a gradient over their life.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### gradient

```haxe
var gradient(get, set):hxsl.Texture
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
