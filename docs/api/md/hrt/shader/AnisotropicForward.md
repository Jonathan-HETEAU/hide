# hrt.shader.AnisotropicForward

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/AnisotropicForward.hx`](../../../../../hrt/shader/AnisotropicForward.hx)

Extends: `h3d.shader.pbr.DefaultForward`

The PBR forward lighting with anisotropic specular reflections.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### localDirection

```haxe
var localDirection(get, set):Bool
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

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```
