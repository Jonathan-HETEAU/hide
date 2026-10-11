# hrt.texgraph.nodes.RGBASplitShader

**class** · package [`hrt.texgraph.nodes`](README.md) · module `hrt.texgraph.nodes.RGBASplit` · source [`hrt/texgraph/nodes/RGBASplit.hx`](../../../../../../hrt/texgraph/nodes/RGBASplit.hx)

Extends: `h3d.shader.ScreenShader`

Extracts a channel of a texture as a grayscale texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### tex

```haxe
var tex(get, set):hxsl.Texture
```

### channels

```haxe
var channels(get, set):Int
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
