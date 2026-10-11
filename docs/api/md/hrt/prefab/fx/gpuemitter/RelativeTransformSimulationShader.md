# hrt.prefab.fx.gpuemitter.RelativeTransformSimulationShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation` · source [`hrt/prefab/fx/gpuemitter/RelativeTransformSimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/RelativeTransformSimulation.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Applies a transform to the particles.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### CURVE_MASK

```haxe
var CURVE_MASK(get, set):Int
```

### x

```haxe
var x(get, set):Float
```

### y

```haxe
var y(get, set):Float
```

### z

```haxe
var z(get, set):Float
```

### scaleX

```haxe
var scaleX(get, set):Float
```

### scaleY

```haxe
var scaleY(get, set):Float
```

### scaleZ

```haxe
var scaleZ(get, set):Float
```

### rotX

```haxe
var rotX(get, set):Float
```

### rotY

```haxe
var rotY(get, set):Float
```

### rotZ

```haxe
var rotZ(get, set):Float
```

### speedX

```haxe
var speedX(get, set):Float
```

### speedY

```haxe
var speedY(get, set):Float
```

### speedZ

```haxe
var speedZ(get, set):Float
```

### curveTexture

```haxe
var curveTexture(get, set):hxsl.Texture
```

## Methods

### onRemove

```haxe
override function onRemove(emitter:GPUEmitterObject):Void
```

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

## Inherited members

- from [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md): `onDispatch`, `onRemove`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`
