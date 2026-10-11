# hrt.prefab.DynamicShader

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/DynamicShader.hx`](../../../../../hrt/prefab/DynamicShader.hx)

Extends: [`hrt.prefab.Shader`](Shader.md) → [`hrt.prefab.Prefab`](Prefab.md)

Applies a shader given by its source path: a `.hx` shader class or a shader graph (`.shgraph`), with its parameters in `props`.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab.

## Static methods

### evalConst

```haxe
static function evalConst(e:hxsl.TExpr):Dynamic
```

Evaluates a constant expression of a shader (constants and vector constructors).

### getDefault

```haxe
static function getDefault(type:hxsl.Type):Dynamic
```

Returns the default value of a shader parameter type (`0`, `false`, or a zero vector).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### getShaderDefinition

```haxe
override function getShaderDefinition():hxsl.SharedShader
```

### makeShader

```haxe
override function makeShader():Null<hxsl.Shader>
```

### loadShaderDef

```haxe
function loadShaderDef():Void
```

Loads the definition of the shader from the source.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:ContextMake):DynamicShader
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Shader`](Shader.md): `shader`, `makeShader`, `getShaderDefinition`, `dispose`, `apply3d`, `edit2`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
