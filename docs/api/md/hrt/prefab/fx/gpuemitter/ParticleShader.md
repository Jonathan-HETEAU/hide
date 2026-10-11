# hrt.prefab.fx.gpuemitter.ParticleShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.GPUEmitterObject` · source [`hrt/prefab/fx/gpuemitter/GPUEmitterObject.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/GPUEmitterObject.hx)

Extends: `hxsl.Shader`

Reads the particle data (life, random value, color) in the rendering of a GPU particle.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### absPos

```haxe
var absPos(get, set):hxsl.Matrix
```

### particleBuffer

```haxe
var particleBuffer(get, set):hxsl.Buffer
```

### meshTransform

```haxe
var meshTransform(get, set):hxsl.Matrix
```

### meshTransformInverse

```haxe
var meshTransformInverse(get, set):hxsl.Matrix
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
