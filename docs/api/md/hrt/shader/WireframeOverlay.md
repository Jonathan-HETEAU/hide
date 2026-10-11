# hrt.shader.WireframeOverlay

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/WireframeOverlay.hx`](../../../../../hrt/shader/WireframeOverlay.hx)

Extends: [`hrt.prefab.Shader`](../prefab/Shader.md) → [`hrt.prefab.Prefab`](../prefab/Prefab.md)

Draws an overlay of the mesh in a flat color.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### color

```haxe
var color:Int
```

The color, as RGB.

### alpha

```haxe
var alpha:Float
```

The opacity.

### thickness

```haxe
var thickness:Float
```

The inflation along the normals.

## Methods

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):WireframeOverlay
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Shader`](../prefab/Shader.md): `shader`, `makeShader`, `getShaderDefinition`, `dispose`, `apply3d`, `edit2`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../prefab/Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
