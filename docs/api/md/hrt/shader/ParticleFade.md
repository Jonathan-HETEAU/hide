# hrt.shader.ParticleFade

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/ParticleFade.hx`](../../../../../hrt/shader/ParticleFade.hx)

Extends: `hxsl.Shader`

Fades the particles in and out over their life.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### fadeInLife

```haxe
var fadeInLife(get, set):Float
```

### fadeOutLife

```haxe
var fadeOutLife(get, set):Float
```

### power

```haxe
var power(get, set):Float
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
