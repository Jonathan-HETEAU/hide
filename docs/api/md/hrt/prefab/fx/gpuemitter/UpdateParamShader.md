# hrt.prefab.fx.gpuemitter.UpdateParamShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/UpdateParamShader.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/UpdateParamShader.hx)

Extends: `hxsl.Shader`

Updates an animated shader parameter of the particles from the baked animation texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### batchBuffer

```haxe
var batchBuffer(get, set):hxsl.Buffer
```

### particleBuffer

```haxe
var particleBuffer(get, set):hxsl.Buffer
```

### paramTexture

```haxe
var paramTexture(get, set):hxsl.Texture
```

### stride

```haxe
var stride(get, set):Int
```

### pos

```haxe
var pos(get, set):Int
```

### row

```haxe
var row(get, set):Float
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
