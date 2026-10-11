# hrt.texgraph.nodes.WhiteNoiseShader

**class** · package [`hrt.texgraph.nodes`](README.md) · module `hrt.texgraph.nodes.WhiteNoise` · source [`hrt/texgraph/nodes/WhiteNoise.hx`](../../../../../../hrt/texgraph/nodes/WhiteNoise.hx)

Extends: `h3d.shader.ScreenShader`

Renders white noise.

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

### seed

```haxe
var seed(get, set):Float
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
