# hrt.prefab.vlm.BoundsFade

**class** · package [`hrt.prefab.vlm`](README.md) · module `hrt.prefab.vlm.LightProbe` · source [`hrt/prefab/vlm/LightProbe.hx`](../../../../../../hrt/prefab/vlm/LightProbe.hx)

Extends: `hxsl.Shader`

Fades the probe lighting near its bounds.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### SMOOTHSTEP

```haxe
var SMOOTHSTEP(get, set):Bool
```

### POWER2

```haxe
var POWER2(get, set):Bool
```

### CYLINDRICAL

```haxe
var CYLINDRICAL(get, set):Bool
```

### scale

```haxe
var scale(get, set):hxsl.Vec
```

### fadeDist

```haxe
var fadeDist(get, set):Float
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
