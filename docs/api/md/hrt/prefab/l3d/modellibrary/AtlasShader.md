# hrt.prefab.l3d.modellibrary.AtlasShader

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · source [`hrt/prefab/l3d/modellibrary/AtlasShader.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/AtlasShader.hx)

Extends: `hxsl.Shader`

Renders the meshes of a `ModelLibrary` with its texture atlas.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### uvTransform

```haxe
var uvTransform(get, set):hxsl.Vec4
```

### libraryParams

```haxe
var libraryParams(get, set):hxsl.Vec4
```

### singleTexture

```haxe
var singleTexture(get, set):Bool
```

### hasNormal

```haxe
var hasNormal(get, set):Bool
```

### hasPbr

```haxe
var hasPbr(get, set):Bool
```

### AUTO_LOD

```haxe
var AUTO_LOD(get, set):Bool
```

### GLOSS

```haxe
var GLOSS(get, set):Bool
```

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### specular

```haxe
var specular(get, set):hxsl.Texture
```

### textures

```haxe
var textures(get, set):hxsl.TextureArray
```

### normalMaps

```haxe
var normalMaps(get, set):hxsl.TextureArray
```

### speculars

```haxe
var speculars(get, set):hxsl.TextureArray
```

### mipStart

```haxe
var mipStart(get, set):Float
```

### mipEnd

```haxe
var mipEnd(get, set):Float
```

### mipPower

```haxe
var mipPower(get, set):Float
```

### mipNumber

```haxe
var mipNumber(get, set):Float
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
