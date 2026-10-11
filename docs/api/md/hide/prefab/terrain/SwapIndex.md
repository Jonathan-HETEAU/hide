# hide.prefab.terrain.SwapIndex

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/SwapIndex.hx`](../../../../../../hide_js/hide/prefab/terrain/SwapIndex.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain shader: replaces surface indexes in the surface index map.

## Constructor

### new

```haxe
function new():Void
```

Creates the shader.

## Variables

### USE_ARRAY

```haxe
var USE_ARRAY(get, set):Bool
```

### INDEX_COUNT

```haxe
var INDEX_COUNT(get, set):Int
```

### surfaceIndexMap

```haxe
var surfaceIndexMap(get, set):hxsl.Texture
```

### oldIndex

```haxe
var oldIndex(get, set):Int
```

### newIndex

```haxe
var newIndex(get, set):Int
```

### oldIndexes

```haxe
var oldIndexes(get, set):Array<hxsl.Vec4>
```

### newIndexes

```haxe
var newIndexes(get, set):Array<hxsl.Vec4>
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
