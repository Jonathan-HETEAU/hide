# hrt.texgraph.nodes.MultiplyShader

**class** · package [`hrt.texgraph.nodes`](README.md) · module `hrt.texgraph.nodes.Multiply` · source [`hrt/texgraph/nodes/Multiply.hx`](../../../../../../hrt/texgraph/nodes/Multiply.hx)

Extends: `h3d.shader.ScreenShader`

Multiplies two textures.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### tex1

```haxe
var tex1(get, set):hxsl.Texture
```

### tex2

```haxe
var tex2(get, set):hxsl.Texture
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
