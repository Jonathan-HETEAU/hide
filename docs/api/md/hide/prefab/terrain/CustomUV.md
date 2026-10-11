# hide.prefab.terrain.CustomUV

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/CustomUV.hx`](../../../../../../hide_js/hide/prefab/terrain/CustomUV.hx) · available on editor (js)

Extends: `hxsl.Shader`

Terrain editor shader: outputs the UV and tile index of the terrain, to pick the position under the mouse.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### tileIndex

```haxe
var tileIndex(get, set):Float
```

### heightMapSize

```haxe
var heightMapSize(get, set):hxsl.Vec
```

### heightMap

```haxe
var heightMap(get, set):hxsl.Texture
```

### primSize

```haxe
var primSize(get, set):hxsl.Vec
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
