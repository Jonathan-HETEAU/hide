# hrt.prefab.CrashTest

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/CrashTest.hx`](../../../../../hrt/prefab/CrashTest.hx)

Extends: [`hrt.prefab.Object3D`](Object3D.md) → [`hrt.prefab.Prefab`](Prefab.md)

Editor debug only prefab that allow to test various crash situations in the editor
Should never be loaded in a game

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### crashOnLoad

```haxe
var crashOnLoad:Bool
```

Throws when the prefab is loaded.

### crashOnInspector

```haxe
var crashOnInspector:Bool
```

Throws when the inspector is opened.

### crashOnMake

```haxe
var crashOnMake:Bool
```

Throws when the prefab is made.

### crashOnSync

```haxe
var crashOnSync:Bool
```

Throws when its object is synchronized.

### crashOnUpdateInstance

```haxe
var crashOnUpdateInstance:Bool
```

Throws when the instance is updated.

## Methods

### load

```haxe
override function load(data:Dynamic):Void
```

### copy

```haxe
override function copy(p:Dynamic):Void
```

### makeObject

```haxe
override function makeObject(parent3d:h3d.scene.Object):h3d.scene.Object
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### make

```haxe
override function make(?sh:ContextMake):CrashTest
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
