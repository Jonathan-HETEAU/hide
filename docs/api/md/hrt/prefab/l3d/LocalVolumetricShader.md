# hrt.prefab.l3d.LocalVolumetricShader

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.LocalVolumetricLighting` · source [`hrt/prefab/l3d/LocalVolumetricLighting.hx`](../../../../../../hrt/prefab/l3d/LocalVolumetricLighting.hx)

Extends: `hxsl.Shader`

Renders a volume of fog by integrating it along the view ray.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### shape

```haxe
var shape(get, set):Int
```

### obH

```haxe
var obH(get, set):hxsl.Vec
```

### fogColor

```haxe
var fogColor(get, set):hxsl.Vec4
```

### fogDensity

```haxe
var fogDensity(get, set):Float
```

### cubeCornerRound

```haxe
var cubeCornerRound(get, set):Float
```

### coneTipRadius

```haxe
var coneTipRadius(get, set):Float
```

### capsuleZscale

```haxe
var capsuleZscale(get, set):Float
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
