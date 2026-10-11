# hrt.prefab.terrain.NormalBake

**class** · package [`hrt.prefab.terrain`](README.md) · module `hrt.prefab.terrain.Tile` · source [`hrt/prefab/terrain/Tile.hx`](../../../../../../hrt/prefab/terrain/Tile.hx)

Extends: `h3d.shader.ScreenShader`

Computes a normal map from a height map.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### heightMap

```haxe
var heightMap(get, set):hxsl.Texture
```

### heightMapSize

```haxe
var heightMapSize(get, set):hxsl.Vec
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
