# hrt.prefab.ContextSharedBase

**class** · package [`hrt.prefab`](README.md) · module `hrt.prefab.ContextShared` · source [`hrt/prefab/ContextShared.hx`](../../../../../hrt/prefab/ContextShared.hx) · available on editor (js)

Subclasses: [`hide.prefab.ContextShared`](../../hide/prefab/ContextShared.md)

The context shared by all the prefabs of a prefab hierarchy (but not by references): the root objects, the current parents during `make`, the source path, and the loading of the resources and baked data.
In the editor, `hide.prefab.ContextShared` extends it.

## Constructor

### new

```haxe
function new(?path:String, ?root2d:h2d.Object, ?root3d:h3d.scene.Object, ?isInstance:Bool = true):Void
```

Creates a context for the prefab file `path`, with its root objects.

## Variables

### root2d

```haxe
var root2d(default, null):h2d.Object
```

The root 2D object of the instance.

### root3d

```haxe
var root3d(default, null):h3d.scene.Object
```

The root 3D object of the instance.

### currentPath

```haxe
var currentPath:String
```

The path of the prefab file being made (the reference files change it).

### prefabSource

```haxe
var prefabSource:String
```

The path of the root prefab file.

### customMake

```haxe
var customMake:() -> Void
```

When make() is called on prefab, it will instead call customMake on
each child with current which can either intercept or call make() recursively.

### current3d

```haxe
var current3d:h3d.scene.Object
```

When make/instanciate is called, this contains the 3d object that should be used as a parent for the newly created object. Never modify this in the middle of a instanciate without restoring it after.

### current2d

```haxe
var current2d:h2d.Object
```

When make/instanciate is called, this contains the 2d object that should be used as a parent for the newly created object. Never modify this in the middle of a instanciate without restoring it after.

### parentPrefab

```haxe
var parentPrefab:Prefab
```

Parent prefab of the object if it was created as a reference.

### findCache

```haxe
var findCache:Map<{  }, Prefab>
```

Store result of non filtered Prefab.find during the make.

### isInstance

```haxe
var isInstance(default, null):Bool
```

Disable some checks at the prefab instanciation time. Used to initialize prefabs that
don't need locals2d/3d like shaders

## Methods

### isTempLoad

```haxe
inline function isTempLoad():Bool
```

Returns true when an editor loads prefabs for temporary purposes (like undo/redo), false when they are
loaded as part of the prefab file. Always false in game.

### isTempSave

```haxe
inline function isTempSave():Bool
```

Returns true when an editor saves prefabs for any other purpose than saving the prefab file to disc
(like undo/redo, copy/paste...). Always false in game.

### onError

```haxe
function onError(e:Dynamic):Void
```

Called when an error happens while making a prefab. Throws it by default.

### getFolderDatPath

```haxe
function getFolderDatPath():String
```

Returns the folder of the data files of the prefab (`<prefab>.dat/`).

### loadDir

```haxe
function loadDir(p:String, ?dir:String):Array<hxd.res.Any>
```

Returns the resources of a folder of the data files, or `null`.

### loadPrefabDat

```haxe
function loadPrefabDat(file:String, ext:String, prefab:String):hxd.res.Any
```

Returns a data file of a prefab (see `getPrefabDatPath`), or `null`.

### getPrefabDatPath

```haxe
function getPrefabDatPath(file:String, ext:String, prefab:String):String
```

Returns the path of a data file of a prefab: `<prefab file>.dat/<prefab>/<file>.<ext>`.

### savePrefabDat

```haxe
function savePrefabDat(file:String, ext:String, prefab:String, bytes:Bytes):Void
```

Saves a data file of a prefab (or deletes it if `bytes` is `null`). Not available on JS.

### loadShader

```haxe
function loadShader(path:String):ShaderDef
```

Returns the shader of the class path (`path/to/Shader`), or `null`. Cached.

### loadModel

```haxe
function loadModel(path:String, ?opt:Bool = false):h3d.scene.Object
```

Loads a model (cached).

### loadAnimation

```haxe
function loadAnimation(path:String):h3d.anim.Animation
```

Loads the animation of a model (cached).

### loadTexture

```haxe
function loadTexture(path:String, ?async:Bool = false):h3d.mat.Texture
```

Loads a texture (cached).

### loadBytes

```haxe
function loadBytes(file:String):Bytes
```

Returns the content of a resource file, or `null`.

### loadBakedBytes

```haxe
function loadBakedBytes(file:String):Null<Bytes>
```

Returns baked data of the prefab file (from its `.bake` file), or `null`.

### saveBakedBytes

```haxe
function saveBakedBytes(file:String, bytes:Bytes):Void
```

Sets baked data of the prefab file (or removes it if `bytes` is `null`), and saves the `.bake` file.

### saveTexture

```haxe
function saveTexture(file:String, bytes:Bytes, dir:String, ext:String):Void
```

Saves a texture. Not implemented at runtime: throws.

### getObjects

```haxe
function getObjects(p:Prefab, c:Class<getObjects.T>, ?filter:() -> Bool):Array<getObjects.T>
```

Returns the 3D objects of the class in the tree of the local 3D object of the prefab. An object rejected by `filter` is skipped with its children.
