# hrt.prefab.fx.gpuemitter.MeshSpawn

**class** · package [`hrt.prefab.fx.gpuemitter`](README.md) · source [`hrt/prefab/fx/gpuemitter/MeshSpawn.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/MeshSpawn.hx)

Extends: [`hrt.prefab.fx.gpuemitter.SpawnShader`](SpawnShader.md) → [`hrt.prefab.Shader`](../../Shader.md) → [`hrt.prefab.Prefab`](../../Prefab.md)

Spawns the particles of a GPU emitter on the vertices of its child skinned mesh (a sphere if none).

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

### makeShader

```haxe
override function makeShader():MeshSpawnShader
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):MeshSpawn
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.fx.gpuemitter.SpawnShader`](SpawnShader.md): `editorAllowParent`, `getHideProps`, `make`
- from [`hrt.prefab.Shader`](../../Shader.md): `shader`, `makeShader`, `getShaderDefinition`, `dispose`, `apply3d`, `edit2`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
