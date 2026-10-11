# hrt.shader.VolumetricLightmap

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/VolumetricLightmap.hx`](../../../../../hrt/shader/VolumetricLightmap.hx)

Extends: `hxsl.Shader`

Applies the irradiance of a volumetric lightmap, interpolated between its probes.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### ORDER

```haxe
var ORDER(get, set):Int
```

### lightProbeTexture

```haxe
var lightProbeTexture(get, set):hxsl.Texture
```

### lightmapInvPos

```haxe
var lightmapInvPos(get, set):hxsl.Matrix
```

### lightmapSize

```haxe
var lightmapSize(get, set):hxsl.Vec
```

### voxelSize

```haxe
var voxelSize(get, set):hxsl.Vec
```

### strength

```haxe
var strength(get, set):Float
```

### cameraInverseViewProj

```haxe
var cameraInverseViewProj(get, set):hxsl.Matrix
```

### cameraPos

```haxe
var cameraPos(get, set):hxsl.Vec
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
