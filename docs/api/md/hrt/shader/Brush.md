# hrt.shader.Brush

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/Brush.hx`](../../../../../hrt/shader/Brush.hx)

Extends: `hxsl.Shader`

Displays the terrain brush.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### strength

```haxe
var strength(get, set):Float
```

### size

```haxe
var size(get, set):hxsl.Vec
```

### pos

```haxe
var pos(get, set):hxsl.Vec
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
