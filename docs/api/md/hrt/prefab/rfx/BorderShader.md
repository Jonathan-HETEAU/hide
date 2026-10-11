# hrt.prefab.rfx.BorderShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Border` · source [`hrt/prefab/rfx/Border.hx`](../../../../../../hrt/prefab/rfx/Border.hx)

Extends: `h3d.shader.ScreenShader`

Draws a colored border around the screen.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### size

```haxe
var size(get, set):Float
```

### color

```haxe
var color(get, set):hxsl.Vec
```

### alpha

```haxe
var alpha(get, set):Float
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
