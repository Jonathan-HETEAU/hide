# hrt.prefab.Shader

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Shader.hx`](../../../../../hrt/prefab/Shader.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

Subclasses: [`hrt.prefab.DynamicShader`](DynamicShader.md), [`hrt.prefab.fx.gpuemitter.SimulationShader`](fx/gpuemitter/SimulationShader.md), [`hrt.prefab.fx.gpuemitter.SpawnShader`](fx/gpuemitter/SpawnShader.md), [`hrt.shader.Refraction`](../shader/Refraction.md), [`hrt.shader.WireframeOverlay`](../shader/WireframeOverlay.md)

Applies a shader to the materials of the parent object. The base class of the shader prefabs.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### shader

```haxe
var shader:hxsl.Shader
```

The shader, created by `makeShader`.

## Methods

### makeShader

```haxe
function makeShader():hxsl.Shader
```

Creates the shader. Returns `null` by default.

### getShaderDefinition

```haxe
function getShaderDefinition():hxsl.SharedShader
```

Returns the definition of the shader.

### dispose

```haxe
override function dispose():Void
```

### apply3d

```haxe
function apply3d(?filterObj:(obj:h3d.scene.Object) -> Bool):Void
```

Applies the shader to the materials of the current 3D object (see `ContextShared.current3d`), filtered by `filterObj`.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:ContextMake):Shader
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
