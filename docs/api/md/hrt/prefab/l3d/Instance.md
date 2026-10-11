# hrt.prefab.l3d.Instance

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Instance.hx`](../../../../../../hrt/prefab/l3d/Instance.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

An instance of a CastleDB line: displays the model (or prefab) referenced by the line in the editor.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getRefSheet _(editor (js) only)_

```haxe
static function getRefSheet(p:hrt.prefab.Prefab):Null<{ sheet:Null<cdb.Sheet>, idx:Null<cdb.SheetIndex> }>
```

Returns the referenced sheet and line of the prefab properties, or `null` (editor only).

### findRefColumns _(editor (js) only)_

```haxe
static function findRefColumns(sheet:cdb.Sheet):{ sheet:String, cols:Array<cdb.Column> }
```

Returns the first reference column of a sheet (possibly in a sub property), or `null` (editor only).

### findIDColumn _(editor (js) only)_

```haxe
static function findIDColumn(refSheet:cdb.Sheet):Null<cdb.Column>
```

Returns the id column of a sheet (editor only).

### findModelPath _(editor (js) only)_

```haxe
static function findModelPath(refSheet:cdb.Sheet, obj:Dynamic):Null<String>
```

Returns the first model or prefab file of a line, or `null` (editor only).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### makeInteractive

```haxe
override function makeInteractive():hxd.Interactive
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Instance
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
