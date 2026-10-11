# hrt.prefab.fx.gpuemitter.CameraWrap

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/CameraWrap.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/CameraWrap.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Wraps the particles in the cube around the camera (`Camera` mode).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### boundsPos

```haxe
var boundsPos(get, set):hxsl.Vec
```

### boundsSize

```haxe
var boundsSize(get, set):hxsl.Vec
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
