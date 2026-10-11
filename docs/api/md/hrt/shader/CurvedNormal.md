# hrt.shader.CurvedNormal

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/CurvedNormal.hx`](../../../../../hrt/shader/CurvedNormal.hx)

Extends: `hxsl.Shader`

Curves the normals of a flat mesh, as if it was a sphere cap.

## Constructor

### new

```haxe
function new(?curvature:Float = 1.0):Void
```

Creates the shader with a curvature (`0` flat, `1` hemisphere).

## Variables

### VERTEX

```haxe
var VERTEX(get, set):Bool
```

### curvature

```haxe
var curvature(get, set):Float
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
