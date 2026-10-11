# hrt.prefab.fx.gpuemitter.PreviousModelViewSimulation

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/PreviousModelViewSimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/PreviousModelViewSimulation.hx)

Extends: `hxsl.Shader`

Stores the previous transform of the particles, for the motion vectors.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### batchBuffer

```haxe
var batchBuffer(get, set):hxsl.Buffer
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
