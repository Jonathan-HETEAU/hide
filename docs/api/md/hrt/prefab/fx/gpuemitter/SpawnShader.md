# hrt.prefab.fx.gpuemitter.SpawnShader

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/SpawnShader.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/SpawnShader.hx)

Extends: [`hrt.prefab.Shader`](../../Shader.md) → [`hrt.prefab.Prefab`](../../Prefab.md)

Subclasses: [`hrt.prefab.fx.gpuemitter.CubeSpawn`](CubeSpawn.md), [`hrt.prefab.fx.gpuemitter.DiskSpawn`](DiskSpawn.md), [`hrt.prefab.fx.gpuemitter.MeshSpawn`](MeshSpawn.md), [`hrt.prefab.fx.gpuemitter.RandomColorSpawn`](RandomColorSpawn.md), [`hrt.prefab.fx.gpuemitter.SphereSpawn`](SphereSpawn.md)

A shader prefab added to the spawn of its parent `GPUEmitter`.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### editorAllowParent

```haxe
override function editorAllowParent(cl:Class<hrt.prefab.Prefab>):Bool
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):SpawnShader
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Shader`](../../Shader.md): `shader`, `makeShader`, `getShaderDefinition`, `dispose`, `apply3d`, `edit2`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
