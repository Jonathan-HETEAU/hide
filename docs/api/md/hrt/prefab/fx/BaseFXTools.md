# hrt.prefab.fx.BaseFXTools

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.BaseFX` · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

Helpers to build the animations of an FX.

## Static variables

### useAutoPerInstance

```haxe
static var useAutoPerInstance:Bool
```

Makes the animated shader parameters of the particles per instance in their `h3d.scene.MeshBatch`.

## Static methods

### makeShaderParams

```haxe
static function makeShaderParams(basePrefab:hrt.prefab.Prefab, shaderDef:hxsl.SharedShader):Null<ShaderParams>
```

Returns the parameters of the shader prefab animated by curves (named after the parameters), or `null`.

### makeRendererFXParams

```haxe
static function makeRendererFXParams(rfxElt:hrt.prefab.rfx.RendererFX):Array<{ value:hrt.prefab.fx._Value.Value, field:hrt.prefab.PrefabField }>
```

Returns the float properties of the renderer effect animated by curves (named after the properties), or `null`.

### getCustomAnimations

```haxe
static function getCustomAnimations(elt:hrt.prefab._Prefab.PrefabElement, anims:Array<CustomAnimation>, ?batch:h3d.scene.MeshBatch):Void
```

Adds the shader and renderer effect animations of the prefab and its children (except under emitters) to `anims`. The shaders are applied to `batch` if set.

### getFXRoot

```haxe
static function getFXRoot(elt:hrt.prefab._Prefab.PrefabElement):hrt.prefab._Prefab.PrefabElement
```

Returns the first prefab named `FXRoot` in the tree, or `null`.

## Methods

### refreshObjectAnims _(editor (js) only)_

```haxe
function refreshObjectAnims():Void
```

Does nothing (editor only).
