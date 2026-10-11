# hrt.prefab.Material

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Material.hx`](../../../../../hrt/prefab/Material.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

Applies material properties to the materials of the parent object: the material of the same name (or `materialName`), or all of them. The properties can come from a material of a `MaterialLibrary` (`refMatLib`), with `overrides`.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab.

## Static methods

### findMaterialLibraryRefs _(editor (js) only)_

```haxe
static function findMaterialLibraryRefs(libPath:String, matName:String):Array<hide.view.Reference>
```

Returns the references to a material of a material library in the project (editor only).

### hasOverride

```haxe
static function hasOverride(p:Prefab):Bool
```

Tells if the prefab (or its parent `Object3D` group) has an enabled `Material` child.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### wrapRepeat

```haxe
var wrapRepeat:Bool
```

Sets the texture wrap mode to repeat.

### diffuseMap

```haxe
var diffuseMap:String
```

The path of the diffuse (albedo) texture, or `null`.

### normalMap

```haxe
var normalMap:String
```

The path of the normal map, or `null`.

### specularMap

```haxe
var specularMap:String
```

The path of the specular texture, or `null`.

### materialName

```haxe
var materialName:String
```

The name of the material of the model to change (the name of the prefab otherwise).

### color

```haxe
var color:Array<Float>
```

The color, as `[r, g, b, a]`.

### mainPassName

```haxe
var mainPassName:String
```

The name of the main pass of the material, or `null`.

### refMatLib

```haxe
var refMatLib:String
```

The material of a material library to use (`<library path>/<material name>`), or `null`.

### overrides

```haxe
var overrides:Array<OverrideProperty>
```

The properties overriding the ones of the referenced material library material.

## Methods

### filter

```haxe
dynamic function filter(m:h3d.mat.Material):Bool
```

Tells if the material should be changed. Returns `true` by default (currently not used by the prefab).

### getMaterials

```haxe
function getMaterials(?local3d:h3d.scene.Object, ?includePreviewMats:Bool = false, ?filterObj:(obj:h3d.scene.Object) -> Bool):Array<h3d.mat.Material>
```

Returns the material of the object (the root object of the parent by default) matching the prefab, or all its materials. `filterObj` filters the objects searched.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### makeInteractive

```haxe
override function makeInteractive():hxd.Interactive
```

### findFirstLocal3d _(editor (js) only)_

```haxe
override function findFirstLocal3d(?followRefs:Bool = false):h3d.scene.Object
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### onEditorTreeChanged _(editor (js) only)_

```haxe
override function onEditorTreeChanged(prefab:Prefab):TreeChangedResult
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### addOverrideProperty _(editor (js) only)_

```haxe
function addOverrideProperty(ctx:hide.prefab.EditContext, pname:String, isMatSetupProp:Bool):Void
```

Adds an override of the property and updates the editor (editor only).

### updateHighlightOverrides _(editor (js) only)_

```haxe
function updateHighlightOverrides(ctx:hide.prefab.EditContext):Void
```

Highlights the overridden properties in the editor (editor only).

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### needUniqueName _(editor (js) only)_

```haxe
override function needUniqueName():Bool
```

### editorAllowChild

```haxe
override function editorAllowChild(cl:Class<Prefab>):Bool
```

### addOverrideProperty2

```haxe
function addOverrideProperty2(pname:String, isMatSetupProp:Bool):Void
```

Adds an override of the property, with its current value.

### make

```haxe
override function make(?sh:ContextMake):Material
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
