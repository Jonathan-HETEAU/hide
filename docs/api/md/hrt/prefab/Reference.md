# hrt.prefab.Reference

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Reference.hx`](../../../../../hrt/prefab/Reference.hx)

Extends: [`hrt.prefab.Object3D`](Object3D.md) → [`hrt.prefab.Prefab`](Prefab.md)

Subclasses: [`hrt.prefab.fx.SubFX`](fx/SubFX.md)

True if the loaded source, or a reference inside it, creates a reference cycle

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static variables

### _1 _(editor (js) only)_

```haxe
static var _1:Int
```

### _

```haxe
static var _:Bool
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### refInstance

```haxe
var refInstance(default, null):Prefab
```

The referenced prefab loaded by this reference

### editMode

```haxe
var editMode:EditMode
```

How the reference can be edited in the editor

### overrides

```haxe
var overrides:Dynamic
```

Holds the original override to apply when loading a reference from disk

### hasCycle _(editor (js) only)_

```haxe
var hasCycle(default, null):Bool
```

True if this reference, or a reference inside its refInstance, creates a reference cycle.
The reference closing the cycle has a null refInstance.

## Methods

### editorInit _(editor (js) only)_

```haxe
function editorInit(source:String):Void
```

Set the source of a newly created reference and load its refInstance.
Must only be used when creating a Reference, not to modify it after the fact : changes
to an existing reference source must go through the inspector so they can be undone.
Throws if the refInstance is already loaded.

### resolve

```haxe
function resolve():Prefab
```

Try to resolve refInstance if it's not loaded.
Loads the prefab referenced by `source`, apply overrides to it if applicable and store it in refInstance and returns it.
If the prefab load process fails, refInstance is null

### editorSyncSourceAction _(editor (js) only)_

```haxe
function editorSyncSourceAction(sourceInstance:Prefab):(isUndo:Bool) -> Void
```

Returns an undo action that replaces the refInstance with a copy of `sourceInstance`, the edited content of
the same source file (from another reference in Edit mode). In Override mode, the overrides of this reference are kept.
Must be recorded in an undo/redo step.

### editorRemoveObjects _(editor (js) only)_

```haxe
override function editorRemoveObjects():Void
```

### onEditorTreeChanged _(editor (js) only)_

```haxe
override function onEditorTreeChanged(prefab:Prefab):TreeChangedResult
```

### findRec

```haxe
override function findRec(?cl:Class<findRec.T>, ?filter:() -> Bool, ?followRefs:Bool = false, ?includeDisabled:Bool = true):Null<findRec.T>
```

### getOpt

```haxe
override function getOpt(?cl:Class<getOpt.T>, ?name:String, ?followRefs:Bool):Null<getOpt.T>
```

### flatten

```haxe
override function flatten(?cl:Class<flatten.T>, ?arr:Array<flatten.T>):Array<flatten.T>
```

### dispose

```haxe
override function dispose():Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### makeInteractive

```haxe
override function makeInteractive():Null<hxd.Interactive>
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:ContextMake):Reference
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

### set_source _(runtime (hl) only)_

```haxe
override function set_source(newSource:String):String
```

## Inherited members

- from [`hrt.prefab.Object3D`](Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
