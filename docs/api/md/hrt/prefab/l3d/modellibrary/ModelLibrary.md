# hrt.prefab.l3d.modellibrary.ModelLibrary

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · source [`hrt/prefab/l3d/modellibrary/ModelLibrary.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/ModelLibrary.hx)

Extends: [`hrt.prefab.Prefab`](../../Prefab.md)

Bakes its children models into a single model and texture atlas, to render many instances with few draw calls (see `Batcher`).

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static variables

### CURRENT_VERSION

```haxe
static inline var CURRENT_VERSION:Int = 5
```

The version of the baked data.

## Static methods

### createLibrary

```haxe
static function createLibrary(dir:String, name:String, paths:Array<String>):Void
```

Creates and saves a library of the models.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### createBatcher

```haxe
function createBatcher(parent:h3d.scene.Object):Batcher
```

Creates a batcher for the meshes of the library.

### createGPUBatcher

```haxe
function createGPUBatcher(parent:h3d.scene.Object):GPUBatcher
```

Creates a GPU batcher for the meshes of the library.

### isUpToDate

```haxe
function isUpToDate(?paths:Array<String>):Bool
```

Tells if the baked data matches the version and the models (`paths`, or the children).

### bake

```haxe
function bake():Void
```

Bakes the models and textures.

### saveLibrary

```haxe
function saveLibrary(?filePath:String):Void
```

Saves the library to a prefab file (`shared.prefabSource` by default).

### getPrim

```haxe
function getPrim():h3d.prim.HMDModel
```

Returns the primitive of all the meshes.

### compression

```haxe
function compression():Void
```

Compresses the atlas textures to DDS (BC3).

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
override function make(?sh:hrt.prefab.ContextMake):ModelLibrary
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

### clone _(runtime (hl) only)_

```haxe
override function clone(?parent:hrt.prefab.Prefab, ?sh:hrt.prefab.ContextShared, ?withChildren:Bool = true):hrt.prefab.Prefab
```

## Inherited members

- from [`hrt.prefab.Prefab`](../../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
