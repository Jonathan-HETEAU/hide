# hrt.shader.ParticleForward

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/ParticleForward.hx`](../../../../../hrt/shader/ParticleForward.hx)

Extends: `h3d.shader.pbr.DefaultForward`

The PBR forward lighting of the particles, with a cheap normal basis.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### NORMAL

```haxe
var NORMAL(get, set):Bool
```

### NORMAL_FLIP_Y

```haxe
var NORMAL_FLIP_Y(get, set):Bool
```

### NORMAL_FLIP_X

```haxe
var NORMAL_FLIP_X(get, set):Bool
```

### VERTEX

```haxe
var VERTEX(get, set):Bool
```

### directLightingIntensity

```haxe
var directLightingIntensity(get, set):Float
```

### indirectLightingIntensity

```haxe
var indirectLightingIntensity(get, set):Float
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### normalIntensity

```haxe
var normalIntensity(get, set):Float
```

### hl2_basis0

```haxe
var hl2_basis0(get, set):hxsl.Vec
```

### hl2_basis1

```haxe
var hl2_basis1(get, set):hxsl.Vec
```

### hl2_basis2

```haxe
var hl2_basis2(get, set):hxsl.Vec
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
