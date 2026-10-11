# hrt.prefab.terrain.TerrainCopy

**class** · package [`hrt.prefab.terrain`](README.md) · module `hrt.prefab.terrain.TerrainResize` · source [`hrt/prefab/terrain/TerrainResize.hx`](../../../../../../hrt/prefab/terrain/TerrainResize.hx)

Extends: `h3d.shader.ScreenShader`

Copies a texture into a part of another, to resize the tiles.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### source

```haxe
var source(get, set):hxsl.Texture
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
