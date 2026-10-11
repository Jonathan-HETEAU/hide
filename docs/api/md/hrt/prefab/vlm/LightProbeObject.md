# hrt.prefab.vlm.LightProbeObject

**class** · package [`hrt.prefab.vlm`](README.md) · module `hrt.prefab.vlm.LightProbe` · source [`hrt/prefab/vlm/LightProbe.hx`](../../../../../../hrt/prefab/vlm/LightProbe.hx)

Extends: `h3d.scene.Mesh`

The mesh of a `LightProbe`: applies its indirect lighting to the pixels inside it.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates the mesh.

## Variables

### env

```haxe
var env:h3d.scene.pbr.Environment
```

The environment.

### indirectShader

```haxe
var indirectShader:h3d.shader.pbr.Indirect
```

The indirect lighting shader.

### boundClippingShader

```haxe
var boundClippingShader:BoundsClipping
```

The bounds clipping shader.

### boundFadeShader

```haxe
var boundFadeShader:BoundsFade
```

The bounds fade shader.

### fadeDist

```haxe
var fadeDist:Float
```

The fade distance.

### fadeMode

```haxe
var fadeMode:ProbeFadeMode
```

The fade mode.

### shape

```haxe
var shape:Shape
```

The shape.

## Methods

### clear

```haxe
function clear():Void
```

Clears the environment textures.
