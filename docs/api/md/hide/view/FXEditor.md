# hide.view.FXEditor

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/FXEditor.hx`](../../../../../hide_js/hide/view/FXEditor.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

Subclasses: [`hide.view.FX2DEditor`](FX2DEditor.md)

The FX editor view (`.fx` files): scene, prefab tree, properties and timeline with curves and events.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Static methods

### floatToStringPrecision

```haxe
static function floatToStringPrecision(n:Float, ?prec:Int = 2, ?showZeros:Bool = true):String
```

Formats a number with `prec` decimals (with trailing zeros if `showZeros`).

## Variables

### selectOnLoad

```haxe
var selectOnLoad:Array<hrt.prefab.Prefab>
```

The prefabs to select once loaded.

## Methods

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

### delaySceneEditor

```haxe
function delaySceneEditor(callback:() -> Void):Void
```

Call a function when the sceneEditor is properly initialized

### onActivate

```haxe
override function onActivate():Void
```

### onSceneReady

```haxe
function onSceneReady():Void
```

Loads the FX once the scene is ready.

### getNewTrackMenu

```haxe
function getNewTrackMenu(elt:hrt.prefab._Prefab.PrefabElement):Array<hrt.ui.MenuItem>
```

Returns the menu adding curve tracks to a prefab.

### setRenderPropsEditionVisibility

```haxe
function setRenderPropsEditionVisibility(visible:Bool):Void
```

Shows or hides the render props edition.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
