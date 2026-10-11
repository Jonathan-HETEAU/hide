# hide.prefab.terrain.SetHeight

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/SetHeight.hx`](../../../../../../hide_js/hide/prefab/terrain/SetHeight.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain sculpting shader: moves the height towards a target height with the stroke strength.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### prevHeight

```haxe
var prevHeight(get, set):hxsl.Texture
```

### strengthTex

```haxe
var strengthTex(get, set):hxsl.Texture
```

### targetHeight

```haxe
var targetHeight(get, set):Float
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
