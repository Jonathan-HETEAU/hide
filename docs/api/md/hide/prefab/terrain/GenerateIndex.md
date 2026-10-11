# hide.prefab.terrain.GenerateIndex

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/GenerateIndex.hx`](../../../../../../hide_js/hide/prefab/terrain/GenerateIndex.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain painting shader: computes the surface index map from the weight maps.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

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
