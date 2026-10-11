# hrt.prefab.pbr.SpecularColor

**class** · package [`hrt.prefab.pbr`](README.md) · source [`hrt/prefab/pbr/SpecularColor.hx`](../../../../../../hrt/prefab/pbr/SpecularColor.hx)

Extends: [`hrt.prefab.Prefab`](../Prefab.md)

Sets the specular color of the materials of its parent `Material`.

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

## Variables

### specular

```haxe
var specular:Float
```

The amount of dielectric specular reflection: the facing reflectivity, in the common 0 to 8% range.

### specularTint

```haxe
var specularTint:Float
```

Tints the facing specular reflection with the base color, while the glancing reflection stays white. Not physically correct: fakes materials with a complex surface structure.

### specularColorPath

```haxe
var specularColorPath:String
```

The path of the specular color texture (`Texture` mode).

### specularColorCustomValue

```haxe
var specularColorCustomValue:Int
```

The specular color, as RGB (`Flat` mode).

### mode

```haxe
var mode:SpecularColorMode
```

Where the specular color comes from.

## Methods

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

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
override function make(?sh:hrt.prefab.ContextMake):SpecularColor
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
