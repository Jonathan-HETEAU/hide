# hrt.prefab.l3d.HeightMapShader

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.HeightMap` · source [`hrt/prefab/l3d/HeightMap.hx`](../../../../../../hrt/prefab/l3d/HeightMap.hx)

Extends: `hxsl.Shader`

Displaces the grid by the height texture and blends the albedo textures.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### hasHeight

```haxe
var hasHeight(get, set):Bool
```

### hasNormal

```haxe
var hasNormal(get, set):Bool
```

### heightMap

```haxe
var heightMap(get, set):hxsl.Texture
```

### heightMapFrag

```haxe
var heightMapFrag(get, set):hxsl.Texture
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### heightScale

```haxe
var heightScale(get, set):Float
```

### heightOffset

```haxe
var heightOffset(get, set):hxsl.Vec
```

### normalScale

```haxe
var normalScale(get, set):Float
```

### cellSize

```haxe
var cellSize(get, set):hxsl.Vec
```

### heightFlipX

```haxe
var heightFlipX(get, set):Bool
```

### heightFlipY

```haxe
var heightFlipY(get, set):Bool
```

### SplatCount

```haxe
var SplatCount(get, set):Int
```

### AlbedoCount

```haxe
var AlbedoCount(get, set):Int
```

### SplatMode

```haxe
var SplatMode(get, set):Int
```

### albedoIsArray

```haxe
var albedoIsArray(get, set):Bool
```

### albedoTiling

```haxe
var albedoTiling(get, set):Float
```

### albedos

```haxe
var albedos(get, set):Array<hxsl.Texture>
```

### albedoArray

```haxe
var albedoArray(get, set):hxsl.TextureArray
```

### albedoIndexes

```haxe
var albedoIndexes(get, set):Array<hxsl.Vec4>
```

### splats

```haxe
var splats(get, set):Array<hxsl.Texture>
```

### USE_BAKED_ALBEDO

```haxe
var USE_BAKED_ALBEDO(get, set):Bool
```

### bakedAlbedo

```haxe
var bakedAlbedo(get, set):hxsl.Texture
```

### hasAlbedoProps

```haxe
var hasAlbedoProps(get, set):Bool
```

### albedoProps

```haxe
var albedoProps(get, set):Array<hxsl.Vec4>
```

### albedoGamma

```haxe
var albedoGamma(get, set):Float
```

### hasAlbedoNormals

```haxe
var hasAlbedoNormals(get, set):Bool
```

### albedoNormals

```haxe
var albedoNormals(get, set):hxsl.TextureArray
```

### albedoNormalsStrength

```haxe
var albedoNormalsStrength(get, set):Float
```

### albedoRoughness

```haxe
var albedoRoughness(get, set):Float
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
