# hide.prefab.terrain.SmoothHeight

**class** · package [`hide.prefab.terrain`](README.md) · source [`hide_js/hide/prefab/terrain/SmoothHeight.hx`](../../../../../../hide_js/hide/prefab/terrain/SmoothHeight.hx) · available on editor (js)

Extends: `h3d.shader.ScreenShader`

Terrain sculpting shader: moves the height towards the average of its neighbors with the stroke strength.

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

### prevHeightResolution

```haxe
var prevHeightResolution(get, set):hxsl.Vec
```

### strengthTex

```haxe
var strengthTex(get, set):hxsl.Texture
```

### range

```haxe
var range(get, set):Int
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
