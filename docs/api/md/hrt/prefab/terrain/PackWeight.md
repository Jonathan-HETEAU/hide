# hrt.prefab.terrain.PackWeight

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/PackWeight.hx`](../../../../../../hrt/prefab/terrain/PackWeight.hx)

Extends: `h3d.shader.ScreenShader`

Packs the weight textures of the surfaces into an index map and a packed weight texture (the strongest surfaces of each pixel).

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### indexMap

```haxe
var indexMap(get, set):hxsl.Texture
```

### weightTextures

```haxe
var weightTextures(get, set):hxsl.TextureArray
```

### weightCount

```haxe
var weightCount(get, set):Int
```

### mask

```haxe
var mask(get, set):Array<hxsl.Vec4>
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
