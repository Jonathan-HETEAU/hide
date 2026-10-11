# hrt.shader.HeightGradient

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/HeightGradient.hx`](../../../../../hrt/shader/HeightGradient.hx)

Extends: `hxsl.Shader`

Colors the surface with a gradient along a direction (height).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### heightRange

```haxe
var heightRange(get, set):hxsl.Vec
```

### direction

```haxe
var direction(get, set):hxsl.Vec
```

### gradient

```haxe
var gradient(get, set):hxsl.Texture
```

### alphaMult

```haxe
var alphaMult(get, set):Float
```

### useWorldPosition

```haxe
var useWorldPosition(get, set):Bool
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
