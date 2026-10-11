# hrt.shader.ParticleRandomMesh

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/ParticleRandomMesh.hx`](../../../../../hrt/shader/ParticleRandomMesh.hx)

Extends: `hxsl.Shader`

Shows a random cell of a mesh made of several variations along an axis, per particle.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### axis

```haxe
var axis(get, set):ParticleRandomMeshAxis
```

### cellCount

```haxe
var cellCount(get, set):Int
```

### cellSize

```haxe
var cellSize(get, set):Float
```

### recenter

```haxe
var recenter(get, set):Bool
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
