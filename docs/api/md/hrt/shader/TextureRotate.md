# hrt.shader.TextureRotate

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/TextureRotate.hx`](../../../../../hrt/shader/TextureRotate.hx)

Extends: `hxsl.Shader`

Rotates (and flips) the texture coordinates.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### rotate

```haxe
var rotate(get, set):Float
```

### rotateCenter

```haxe
var rotateCenter(get, set):hxsl.Vec
```

### flipX

```haxe
var flipX(get, set):Bool
```

### flipY

```haxe
var flipY(get, set):Bool
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
