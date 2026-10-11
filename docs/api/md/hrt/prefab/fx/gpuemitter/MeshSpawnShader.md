# hrt.prefab.fx.gpuemitter.MeshSpawnShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.MeshSpawn` · source [`hrt/prefab/fx/gpuemitter/MeshSpawn.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/MeshSpawn.hx)

Extends: [`hrt.prefab.fx.gpuemitter.ComputeUtils`](ComputeUtils.md) → `hxsl.Shader`

Spawns the particles on the vertices of a mesh.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### mesh

```haxe
var mesh(default, null):h3d.scene.Mesh
```

### JOINTS_BUFFER_SIZE

```haxe
var JOINTS_BUFFER_SIZE(get, set):Int
```

### vertexCount

```haxe
var vertexCount(get, set):Int
```

### vbuf

```haxe
var vbuf(get, set):hxsl.Buffer
```

### absPosInv

```haxe
var absPosInv(get, set):hxsl.Matrix
```

### bonesMatrixes

```haxe
var bonesMatrixes(get, set):hxsl.Buffer
```

## Methods

### attachTo

```haxe
function attachTo(m:h3d.scene.Mesh):Void
```

Sets the mesh, skinned or not.

### onDispatch

```haxe
override function onDispatch(emitter:GPUEmitterObject):Void
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
