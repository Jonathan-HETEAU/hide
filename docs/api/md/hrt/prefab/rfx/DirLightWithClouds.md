# hrt.prefab.rfx.DirLightWithClouds

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.CloudShadow` · source [`hrt/prefab/rfx/CloudShadow.hx`](../../../../../../hrt/prefab/rfx/CloudShadow.hx)

Extends: `h3d.shader.pbr.Light`

A directional light attenuated by a scrolling cloud texture.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### clouds

```haxe
var clouds(get, set):hxsl.Texture
```

### scale

```haxe
var scale(get, set):Float
```

### speed

```haxe
var speed(get, set):hxsl.Vec
```

### opacity

```haxe
var opacity(get, set):Float
```

### rotation

```haxe
var rotation(get, set):hxsl.Matrix
```

### hasDistort

```haxe
var hasDistort(get, set):Bool
```

### distort

```haxe
var distort(get, set):hxsl.Texture
```

### distortSpeed

```haxe
var distortSpeed(get, set):hxsl.Vec
```

### distortScale

```haxe
var distortScale(get, set):Float
```

### distortAmount

```haxe
var distortAmount(get, set):Float
```

### time

```haxe
var time(get, set):Float
```

### cameraPosition

```haxe
var cameraPosition(get, set):hxsl.Vec
```

### lightDir

```haxe
var lightDir(get, set):hxsl.Vec
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
