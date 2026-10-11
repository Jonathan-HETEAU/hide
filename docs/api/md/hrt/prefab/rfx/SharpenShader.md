# hrt.prefab.rfx.SharpenShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Sharpen` · source [`hrt/prefab/rfx/Sharpen.hx`](../../../../../../hrt/prefab/rfx/Sharpen.hx)

Extends: `h3d.shader.ScreenShader`

Sharpens the screen.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### source

```haxe
var source(get, set):hxsl.Texture
```

### intensity

```haxe
var intensity(get, set):Float
```

### resolution

```haxe
var resolution(get, set):hxsl.Vec
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
