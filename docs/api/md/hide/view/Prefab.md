# hide.view.Prefab

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/Prefab.hx`](../../../../../hide_js/hide/view/Prefab.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The prefab view (`.prefab`, `.l3d`, `.matlib` and `.rp` files): scene, prefab tree and properties.

## Static methods

### cleanupPrefabCdb

```haxe
static function cleanupPrefabCdb(prefab:hrt.prefab.Prefab, optionalBackup:hide.comp.cdb.OptionalBackup):Void
```

Removes the empty optional CDB values of a prefab and its children, keeping them in `optionalBackup`.

### getRemoteView

```haxe
static function getRemoteView(remoteId:String):Prefab
```

Returns the prefab view editing a prefab of a connected game, or null.

## Variables

### sceneEditor

```haxe
var sceneEditor:PrefabSceneEditor
```

The scene editor.

### properties

```haxe
var properties(get, null):hide.comp.PropsEditor
```

The properties panel.

## Methods

### delaySceneEditor

```haxe
function delaySceneEditor(callback:() -> Void):Void
```

Call a function when the sceneEditor is properly initialized

### onBeforeClose

```haxe
override function onBeforeClose():Bool
```

### onActivate

```haxe
override function onActivate():Void
```

### hideColumns

```haxe
function hideColumns(?_:js.jquery.Event):Void
```

Hides the tree and properties columns.

### showColumns

```haxe
function showColumns(?_:js.jquery.Event):Void
```

Shows the tree and properties columns.

### onSceneReady

```haxe
function onSceneReady():Void
```

Loads the prefab once the scene is ready.

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### canSave

```haxe
override function canSave():Bool
```

### save

```haxe
override function save():Void
```

### getTitle

```haxe
override function getTitle():String
```

### setRenderPropsEditionVisibility

```haxe
function setRenderPropsEditionVisibility(visible:Bool):Void
```

Shows or hides the render props edition.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
