# hide.ScreenOutline

**class** · package [`hide`](README.md) · module `hide.Renderer` · source [`hide/Renderer.hx`](../../../../hide/Renderer.hx)

Extends: `h3d.shader.ScreenShader`

Draws the outline of the highlighted objects.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### texture

```haxe
var texture(get, set):hxsl.Texture
```

### color

```haxe
var color(get, set):hxsl.Vec
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
