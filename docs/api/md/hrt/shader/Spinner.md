# hrt.shader.Spinner

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/Spinner.hx`](../../../../../hrt/shader/Spinner.hx)

Extends: `hxsl.Shader`

Draws animated trails along a shape (signed distance field).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### shapeSDF

```haxe
var shapeSDF(get, set):hxsl.Texture
```

### trailTexture

```haxe
var trailTexture(get, set):hxsl.Texture
```

### scaleX

```haxe
var scaleX(get, set):Float
```

### scaleY

```haxe
var scaleY(get, set):Float
```

### scaleTime

```haxe
var scaleTime(get, set):Float
```

### timeOffset

```haxe
var timeOffset(get, set):Float
```

### correctTextureNormals

```haxe
var correctTextureNormals(get, set):Bool
```

### numTrails

```haxe
var numTrails(get, set):Float
```

### useTimeTexture

```haxe
var useTimeTexture(get, set):Bool
```

### timeTexture

```haxe
var timeTexture(get, set):hxsl.Texture
```

### debugShowShape

```haxe
var debugShowShape(get, set):Bool
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
