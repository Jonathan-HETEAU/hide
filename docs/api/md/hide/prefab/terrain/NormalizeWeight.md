# hide.prefab.terrain.NormalizeWeight

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/NormalizeWeight.hx`](../../../../../../hide_js/hide/prefab/terrain/NormalizeWeight.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain painting shader: normalizes the surface weights.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### weightTextures

```haxe
var weightTextures(get, set):hxsl.TextureArray
```

### weightCount

```haxe
var weightCount(get, set):Int
```

### baseTexIndex

```haxe
var baseTexIndex(get, set):Int
```

### curTexIndex

```haxe
var curTexIndex(get, set):Int
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
