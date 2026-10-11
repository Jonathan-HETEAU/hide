# hrt.prefab.MaterialSelector

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/MaterialSelector.hx`](../../../../../hrt/prefab/MaterialSelector.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

Selects material passes of the parent object (by pass name or blend mode), for the prefabs applying changes to the materials.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static variables

### CONFIG_KEY

```haxe
static var CONFIG_KEY:String
```

The key of the project configuration of the selector.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### blendModeEnabled

```haxe
var blendModeEnabled:Bool
```

Selects the main passes by blend mode instead of by name.

### blendModesSelected

```haxe
var blendModesSelected:Array<String>
```

The blend modes selected (names of `h2d.BlendMode` constructors).

### selections

```haxe
var selections:Array<PassQuery>
```

The queries of passes by name, applied in order.

## Methods

### getPasses

```haxe
function getPasses(?local3d:h3d.scene.Object, ?filterObj:(obj:h3d.scene.Object) -> Bool):Array<SelectedPass>
```

Returns the selected passes of the materials of the object (the root object of the parent by default). `filterObj` filters the objects searched.

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:ContextMake):MaterialSelector
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
