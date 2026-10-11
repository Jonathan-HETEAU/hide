# hrt.prefab.Prefab

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Prefab.hx`](../../../../../hrt/prefab/Prefab.hx)

Subclasses: [`hrt.animgraph.AnimGraph`](../animgraph/AnimGraph.md), [`hrt.animgraph.BlendSpace2D`](../animgraph/BlendSpace2D.md), [`hrt.prefab.Curve`](Curve.md), [`hrt.prefab.Material`](Material.md), [`hrt.prefab.MaterialLibrary`](MaterialLibrary.md), [`hrt.prefab.MaterialSelector`](MaterialSelector.md), [`hrt.prefab.Object2D`](Object2D.md), [`hrt.prefab.Object3D`](Object3D.md), [`hrt.prefab.Shader`](Shader.md), [`hrt.prefab.Unknown`](Unknown.md), [`hrt.prefab.fx.Event`](fx/Event.md), [`hrt.prefab.l2d.Blur`](l2d/Blur.md), [`hrt.prefab.l3d.AnimSpeedControl`](l3d/AnimSpeedControl.md), [`hrt.prefab.l3d.Constraint`](l3d/Constraint.md), [`hrt.prefab.l3d.modellibrary.ModelLibrary`](l3d/modellibrary/ModelLibrary.md), [`hrt.prefab.pbr.Anisotropy`](pbr/Anisotropy.md), [`hrt.prefab.pbr.SpecularColor`](pbr/SpecularColor.md), [`hrt.prefab.rfx.RendererFX`](rfx/RendererFX.md), [`hrt.shgraph.ShaderGraph`](../shgraph/ShaderGraph.md), [`hrt.texgraph.TexGraph`](../texgraph/TexGraph.md)

The base class of the prefabs: the serializable nodes of the data edited in Hide (`.prefab`, `.fx`, `.l3d`... files).
A prefab is a tree of prefabs: `make()` instanciates it (creating its 2D/3D objects, see `Object3D` and `Object2D`).

The `@:s` fields are serialized (see `hrt.prefab.Macros`). A prefab type is registered with
`public static var _ = Prefab.register("name", MyPrefab);`. Load prefab files with `hxd.Res` (see `Resource`).

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates a prefab, child of `parent`, or root with the given shared context (or a new one).

## Static variables

### emptyNameReplacement

```haxe
static var emptyNameReplacement:String
```

The name used in the paths for the prefabs without name.

### ignoreEditorOnly

```haxe
static var ignoreEditorOnly:Bool
```

Instanciates the `editorOnly` prefabs out of the editor too.

## Static methods

### makeCdbProps

```haxe
static function makeCdbProps(e:Prefab, prefabFilePath:String, type:cdb.Sheet):{  }
```

Returns the default props of a CastleDB sheet type for the prefab, with an id made from the file name and the prefab name.

### isOfType

```haxe
static function isOfType(original:Class<Prefab>, parent:Class<Prefab>):Bool
```

Check if `original` prefab class is or inherits for the class `parent`.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### type

```haxe
var type(get, null):String
```

The registered type name for this prefab, used to identify a prefab when serializing

### name

```haxe
var name:String
```

The name of the prefab in the tree view

### source

```haxe
var source(default, set):String
```

The associated source file (an image, a 3D model, etc.) if the prefab type needs it.

### children

```haxe
var children(get, null):ReadOnlyArray<Prefab>
```

The parent of the prefab in the tree view

### enabled

```haxe
var enabled:Bool
```

Tells if the prefab will create an instance when calling make() or be ignored. Also apply to this prefab children.

### editorOnly

```haxe
var editorOnly:Bool
```

Tells if the prefab will create an instance when used in an other prefab or in game. Also apply to this prefab children.

### inGameOnly

```haxe
var inGameOnly:Bool
```

Tells if the prefab will create an instance when used in editor. Also apply to this prefab children.

### locked

```haxe
var locked:Bool
```

Prevent the prefab from being selected in Hide. Also apply to this prefab children.

### props

```haxe
var props:Any
```

A storage for some extra properties

### parent

```haxe
var parent(get, null):Prefab
```

The parent of the prefab in the tree view

### shared

```haxe
var shared(default, null):ContextShared
```

Infos shared by all the prefabs in a given prefab hierarchy (but not by references)

## Methods

### set_source

```haxe
function set_source(newSource:String):String
```

### clone

```haxe
function clone(?parent:Prefab, ?sh:Null<ContextShared>, ?withChildren:Bool = true):Prefab
```

Create a copy of the data this prefab and all of its children (unless `withChildren` is `false`), without calling `make()` on them.
If `parent` is given, then `sh` will be set to `parent.shared`. If `parent` and `sh` is null, `sh` will be set to a new context shared will be created.
The `parent` and `sh` are then given to the clone constructor.

### reload

```haxe
function reload(p:Dynamic):Void
```

Updates in-place the whole prefab data and its children.

### dispose

```haxe
function dispose():Void
```

Cleanup prefab specific ressources, and call dispose on its children.

### addChild

```haxe
function addChild(child:Prefab):Void
```

Adds a child at the end.

### addChildAt

```haxe
function addChildAt(child:Prefab, index:Int):Void
```

Adds a child at the index (removing it from its previous parent).

### removeChild

```haxe
function removeChild(child:Prefab):Void
```

Removes a child.

### remove

```haxe
function remove():Void
```

Removes this prefab from its parent.

### findFirstLocal2d

```haxe
function findFirstLocal2d(?followRefs:Bool = false):h2d.Object
```

Find the first h2d.Object in this hierarchy, in either this or its parents

### findFirstLocal3d

```haxe
function findFirstLocal3d(?followRefs:Bool = false):h3d.scene.Object
```

Find the first h3d.scene.Object in this hierarchy, in either this or its parents

### get

```haxe
function get(?cl:Class<get.T>, ?name:String):get.T
```

Search the prefab tree for the prefab matching the given prefab class (and name, if specified).
Throw an exception if not found. Uses getOpt() to return null instead.

### getOpt

```haxe
function getOpt(?cl:Class<getOpt.T>, ?name:String, ?followRefs:Bool):Null<getOpt.T>
```

Simlar to get() but returns null if not found.

### getRoot

```haxe
function getRoot(?followRefs:Bool = false):Prefab
```

Returns the root prefab, i.e. the first prefab that doesn't have any parent.

### flatten

```haxe
function flatten(?cl:Class<flatten.T>, ?arr:Array<flatten.T>):Array<flatten.T>
```

Returns all prefabs in the tree matching the specified class.

### all

```haxe
function all(?arr:Array<Prefab>):Array<Prefab>
```

Returns all the prefab in the tree

### find

```haxe
function find(?cl:Class<find.T>, ?filter:() -> Bool, ?followRefs:Bool = false, ?includeDisabled:Bool = true):Null<find.T>
```

Find a the first prefab in the tree with the given class that matches the optional `filter`.
Returns null if no matching prefab was found

### findAll

```haxe
function findAll(?cl:Class<findAll.T>, ?filter:() -> Bool, ?followRefs:Bool = false, ?arr:Array<findAll.T>):Array<findAll.T>
```

Find all the prefabs of the given class `cl` in the tree, that matches `filter` if it is is defined.
The result is stored in the given array `arr` if it's defined, otherwise an array is created. The final array
is then returned.

### findParent

```haxe
function findParent(?cl:Class<findParent.T>, ?filter:(p:findParent.T) -> Bool, ?includeSelf:Bool = false, ?followRefs:Bool = false):Null<findParent.T>
```

Find the first prefab in this prefab parent chain that matches the given class `cl`, and optionally the given `filter`.
If `includeSelf` is true, then this prefab is checked as well.

### getTag

```haxe
inline function getTag():Null<String>
```

Returns the tag of the prefab (`props.tag`), or `null`.

### iterator

```haxe
inline function iterator():Iterator<Prefab>
```

Iterate over this children prefab

### getUniqueName

```haxe
function getUniqueName():String
```

Returns a name that will allow to disambiguate this
prefabs from siblings with the same name
Prefab with more than one sibling with the same name
will have their name formated as `name-<index>` unless their index is 0.

### getAbsPath

```haxe
function getAbsPath(?unique:Bool = false, ?followRef:Bool = false):String
```

Returns the absolute name path for this prefab

### getCdbType

```haxe
function getCdbType():String
```

If the prefab `props` represent CDB data, returns the sheet name of it, or null.

### toString

```haxe
function toString():String
```

Returns the type and name of the prefab.

### isLocked

```haxe
function isLocked():Bool
```

Tells if the prefab or one of its parents is locked.

### getDefaultEditorName

```haxe
function getDefaultEditorName():String
```

Returns the default display name for this prefab
Required outside of -D editor for the usage of hide as library

### edit2 _(editor (js) only)_

```haxe
function edit2(ctx:EditContext2):Void
```

New hideKit based edit function. Return false if the edit function was not yet ported to the new system

### makeInteractive

```haxe
function makeInteractive():hxd.Interactive
```

Create an interactive object to the scene objects of this prefab

### editorAllowParent

```haxe
function editorAllowParent(cl:Class<Prefab>):Bool
```

Return true if an instance of this class prefab can be created as a child of the cl class prefab

### editorAllowChild

```haxe
function editorAllowChild(cl:Class<Prefab>):Bool
```

Return true if an instance of cl can be created as a child of this prefab

### setSelected _(editor (js) only)_

```haxe
function setSelected(b:Bool):Bool
```

Allows to customize how the prefab instance changes when selected/unselected within Hide.
Selection of descendants is skipped if false is returned.

### onEditorTreeChanged _(editor (js) only)_

```haxe
function onEditorTreeChanged(child:Prefab):TreeChangedResult
```

Called by the editor when a child of this object gets added, rebuild or removed.

### getHideProps _(editor (js) only)_

```haxe
function getHideProps():Null<hide.prefab.HideProps>
```

Allows to customize how the prefab object is displayed / handled within Hide

### needUniqueName _(editor (js) only)_

```haxe
function needUniqueName():Bool
```

If true, the editor will give this prefab a unique name when it's created or duplicated

### edit _(editor (js) only)_

```haxe
function edit(editContext:hide.prefab.EditContext):Void
```

Called when the hide editor wants to edit this Prefab.
Used to create the various editor interfaces

### setEditor _(editor (js) only)_

```haxe
function setEditor(sceneEditor:hide.comp.SceneEditor, scene:hide.comp.Scene):Void
```

Sets the scene editor and scene of the shared context (editor only).

### getSerializableProps _(editor (js) only)_

```haxe
function getSerializableProps():Array<PrefabField>
```

Returns a list of all the serializable fieds of the prefab.

### locatePrefab

```haxe
function locatePrefab(path:String):Null<Prefab>
```

Finds a prefab by folowing a dot separated path like this one : `parent.child.grandchild`.
Returns null if the path is invalid or does not match any prefabs in the hierarchy
If the path contains many prefabs with the same name, they can be disambiguated in the path with `name-index`

### make

```haxe
function make(?sh:ContextMake):Prefab
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.
