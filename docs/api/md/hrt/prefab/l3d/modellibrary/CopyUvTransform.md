# hrt.prefab.l3d.modellibrary.CopyUvTransform

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · module `hrt.prefab.l3d.modellibrary.GPUBatcherShaders` · source [`hrt/prefab/l3d/modellibrary/GPUBatcherShaders.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/GPUBatcherShaders.hx)

Extends: `hxsl.Shader`

Copies the atlas texture coordinates of the instances into a mesh batch.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### uvTransform

```haxe
var uvTransform(get, set):hxsl.Vec4
```

### uvTransformOut

```haxe
var uvTransformOut(get, set):hxsl.Buffer
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
