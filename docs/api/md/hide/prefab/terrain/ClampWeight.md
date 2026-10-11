# hide.prefab.terrain.ClampWeight

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/ClampWeight.hx`](../../../../../../hide_js/hide/prefab/terrain/ClampWeight.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain painting shader: where more than 3 surfaces are painted, removes the one with the smallest weight (except the base surface).

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
