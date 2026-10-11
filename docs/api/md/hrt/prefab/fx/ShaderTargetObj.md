# hrt.prefab.fx.ShaderTargetObj

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.ShaderTarget` · source [`hrt/prefab/fx/ShaderTarget.hx`](../../../../../../hrt/prefab/fx/ShaderTarget.hx)

Extends: `h3d.scene.Object`

The object of a `ShaderTarget`, child of its target.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

## Variables

### tag

```haxe
var tag:String
```

The tag, or `null` to always apply.

### priority

```haxe
var priority:Int
```

The priority among the targets of the same tag.

### shadersRoot

```haxe
var shadersRoot:ShaderTarget
```

The prefab of the shader target.

## Methods

### apply

```haxe
function apply(fx:FX):Void
```

Moves the shaders of the prefab and registers in the FX.

### applyShaders

```haxe
function applyShaders():Void
```

Applies the shaders to the target.

### removeShaders

```haxe
function removeShaders():Void
```

Removes the shaders from the target.

### isApplied

```haxe
function isApplied():Bool
```

Tells if the shaders are applied.
