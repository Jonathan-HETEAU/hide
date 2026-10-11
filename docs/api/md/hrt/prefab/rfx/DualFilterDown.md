# hrt.prefab.rfx.DualFilterDown

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.TemporalBloom` · source [`hrt/prefab/rfx/TemporalBloom.hx`](../../../../../../hrt/prefab/rfx/TemporalBloom.hx)

Extends: `h3d.shader.ScreenShader`

Downscales the bloom (dual filtering).

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

### halfPixel

```haxe
var halfPixel(get, set):hxsl.Vec
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
