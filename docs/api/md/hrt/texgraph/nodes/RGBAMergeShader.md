# hrt.texgraph.nodes.RGBAMergeShader

**class** · package [`hrt.texgraph.nodes`](README.md) · module `hrt.texgraph.nodes.RGBAMerge` · source [`hrt/texgraph/nodes/RGBAMerge.hx`](../../../../../../hrt/texgraph/nodes/RGBAMerge.hx)

Extends: `h3d.shader.ScreenShader`

Merges four grayscale textures in the channels of a texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### r

```haxe
var r(get, set):hxsl.Texture
```

### g

```haxe
var g(get, set):hxsl.Texture
```

### b

```haxe
var b(get, set):hxsl.Texture
```

### a

```haxe
var a(get, set):hxsl.Texture
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
