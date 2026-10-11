# hrt.prefab.rfx.VignettingShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Vignetting` · source [`hrt/prefab/rfx/Vignetting.hx`](../../../../../../hrt/prefab/rfx/Vignetting.hx)

Extends: `h3d.shader.ScreenShader`

Colors the screen borders.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### color

```haxe
var color(get, set):hxsl.Vec4
```

### radius

```haxe
var radius(get, set):Float
```

### softness

```haxe
var softness(get, set):Float
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
