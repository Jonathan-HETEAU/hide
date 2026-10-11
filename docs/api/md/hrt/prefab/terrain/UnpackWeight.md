# hrt.prefab.terrain.UnpackWeight

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/UnpackWeight.hx`](../../../../../../hrt/prefab/terrain/UnpackWeight.hx)

Extends: `h3d.shader.ScreenShader`

Extracts the weight texture of a surface from the index map and the packed weight texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### indexMap

```haxe
var indexMap(get, set):hxsl.Texture
```

### packedWeightTexture

```haxe
var packedWeightTexture(get, set):hxsl.Texture
```

### index

```haxe
var index(get, set):Int
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
