# hrt.prefab.l2d.NoiseShader

**class** · package [`hrt.prefab.l2d`](README.md) · module `hrt.prefab.l2d.NoiseGenerator` · source [`hrt/prefab/l2d/NoiseGenerator.hx`](../../../../../../hrt/prefab/l2d/NoiseGenerator.hx)

Extends: `h3d.shader.ScreenShader`

Renders the noise of a `NoiseGenerator`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### channels

```haxe
var channels(get, set):Int
```

### octaves

```haxe
var octaves(get, set):Int
```

### mode

```haxe
var mode(get, set):Int
```

### normals

```haxe
var normals(get, set):Bool
```

### repeat

```haxe
var repeat(get, set):Int
```

### seed

```haxe
var seed(get, set):Int
```

### scale

```haxe
var scale(get, set):Float
```

### persist

```haxe
var persist(get, set):Float
```

### lacunarity

```haxe
var lacunarity(get, set):Float
```

### gain

```haxe
var gain(get, set):Float
```

### offset

```haxe
var offset(get, set):Float
```

### inverse

```haxe
var inverse(get, set):Float
```

### contrast

```haxe
var contrast(get, set):Float
```

### brightness

```haxe
var brightness(get, set):Float
```

### turbulence

```haxe
var turbulence(get, set):Float
```

### turbulenceScale

```haxe
var turbulenceScale(get, set):Float
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
