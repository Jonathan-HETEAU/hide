# hrt.prefab.l3d.SignedDistanceField3D

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Text3D` · source [`hrt/prefab/l3d/Text3D.hx`](../../../../../../hrt/prefab/l3d/Text3D.hx)

Extends: `hxsl.Shader`

Renders a multi-channel signed distance field font.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### alphaCutoff

```haxe
var alphaCutoff(get, set):Float
```

### smoothing

```haxe
var smoothing(get, set):Float
```

### color

```haxe
var color(get, set):hxsl.Vec4
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
