# hrt.prefab.rfx.ChromaticAberrationShader

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.ChromaticAberration` · source [`hrt/prefab/rfx/ChromaticAberration.hx`](../../../../../../hrt/prefab/rfx/ChromaticAberration.hx)

Extends: `h3d.shader.ScreenShader`

Shifts the red and blue channels toward the screen borders.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### DEBUG

```haxe
var DEBUG(get, set):Bool
```

### opacity

```haxe
var opacity(get, set):Float
```

### radius

```haxe
var radius(get, set):Float
```

### softness

```haxe
var softness(get, set):Float
```

### intensity

```haxe
var intensity(get, set):Float
```

### ldrCopy

```haxe
var ldrCopy(get, set):hxsl.Texture
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
