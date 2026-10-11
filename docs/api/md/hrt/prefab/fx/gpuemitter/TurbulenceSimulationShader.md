# hrt.prefab.fx.gpuemitter.TurbulenceSimulationShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.TurbulenceSimulation` · source [`hrt/prefab/fx/gpuemitter/TurbulenceSimulation.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/TurbulenceSimulation.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Applies a noise turbulence to the speed of the particles.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### intensity

```haxe
var intensity(get, set):Float
```

### octaves

```haxe
var octaves(get, set):Int
```

### noiseTex

```haxe
var noiseTex(get, set):hxsl.Texture
```

### noiseScale

```haxe
var noiseScale(get, set):Float
```

### scrollSpeed

```haxe
var scrollSpeed(get, set):hxsl.Vec
```

### innerTurmoil

```haxe
var innerTurmoil(get, set):Float
```

### lacunarity

```haxe
var lacunarity(get, set):Float
```

### persistence

```haxe
var persistence(get, set):Float
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

## Inherited members

- from [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md): `onDispatch`, `onRemove`, `updateConstants`, `getParamValue`, `getParamFloatValue`, `setParamIndexValue`, `setParamIndexFloatValue`, `writeParam`
