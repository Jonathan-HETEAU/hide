# hrt.shader.ComputeSH

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/ComputeSH.hx`](../../../../../hrt/shader/ComputeSH.hx)

Extends: `h3d.shader.ScreenShader`

Computes the spherical harmonics of an environment cube map.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### environment

```haxe
var environment(get, set):hxsl.Texture
```

### width

```haxe
var width(get, set):Int
```

### cubeDir

```haxe
var cubeDir(get, set):Array<hxsl.Matrix>
```

### ORDER

```haxe
var ORDER(get, set):Int
```

### PI

```haxe
var PI(get, set):Float
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
