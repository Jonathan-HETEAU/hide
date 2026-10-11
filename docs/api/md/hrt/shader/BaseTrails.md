# hrt.shader.BaseTrails

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/BaseTrails.hx`](../../../../../hrt/shader/BaseTrails.hx)

Extends: `hxsl.Shader`

Computes the texture coordinates of the trails (stretch and repeat).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### uvStretch

```haxe
var uvStretch(get, set):Float
```

### uvRepeat

```haxe
var uvRepeat(get, set):Int
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
