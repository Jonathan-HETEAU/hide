# hide.ui.View

**class** · package [`hide.ui`](README.md) · source [`hide_js/hide/ui/View.hx`](../../../../../hide_js/hide/ui/View.hx) · available on editor (js)

Type parameters: `<T>`

Extends: [`hide.comp.Component`](../comp/Component.md)

Subclasses: [`hide.view.About`](../view/About.md), [`hide.view.CdbCustomTypes`](../view/CdbCustomTypes.md), [`hide.view.CdbFavorites`](../view/CdbFavorites.md), [`hide.view.CdbTable`](../view/CdbTable.md), [`hide.view.DevTools`](../view/DevTools.md), [`hide.view.DomkitStudio`](../view/DomkitStudio.md), [`hide.view.FileBrowser`](../view/FileBrowser.md), [`hide.view.FileView`](../view/FileView.md), [`hide.view.Gym`](../view/Gym.md), [`hide.view.MemProfiler`](../view/MemProfiler.md), [`hide.view.RefViewer`](../view/RefViewer.md), [`hide.view.RemoteConsoleView`](../view/RemoteConsoleView.md), [`hide.view.Unknown`](../view/Unknown.md), [`hide.view.settings.ProjectSettings`](../view/settings/ProjectSettings.md), [`hide.view.settings.Settings`](../view/settings/Settings.md)

The base class of the IDE views (tabs): state, config, keys, undo, clipboard, file watches and layout container.
A view class is registered with `View.register`.

## Constructor

### new

```haxe
function new(state:hide.ui.View.T):Void
```

Creates a view with a state.

## Static variables

### viewClasses

```haxe
static var viewClasses:Map<String, { options:ViewOptions, name:String, cl:Class<View<Dynamic>> }>
```

The registered view classes, by name.

## Static methods

### register

```haxe
static function register(cl:Class<View<register.T>>, ?options:Null<ViewOptions>):Null<Dynamic>
```

Registers a view class. Returns null, to be used as a static initializer.

## Variables

### fullScreen

```haxe
var fullScreen(get, set):Bool
```

Shows the view in full screen.

### keys

```haxe
var keys(get, null):Keys
```

The keyboard shortcuts of the view.

### state

```haxe
var state(default, null):hide.ui.View.T
```

The saved state of the view.

### undo

```haxe
var undo(get, null):UndoHistory
```

The undo history of the view.

### config

```haxe
var config(get, null):hide.Config
```

The config of the view.

### viewClass

```haxe
var viewClass(get, null):String
```

The class name of the view.

### defaultOptions

```haxe
var defaultOptions(get, null):ViewOptions
```

The options the view class was registered with.

## Methods

### watch

```haxe
function watch(filePath:String, onChange:() -> Void, ?opts:{ ?keepOnRebuild:Null<Bool>, ?checkDelete:Null<Bool> }):{ path:String, keep:Null<Bool>, callb:() -> Void }
```

Calls `onChange` when a file changes. The watch is removed on rebuild unless `keepOnRebuild`.

### unwatch

```haxe
function unwatch(w:{ path:String, keep:Bool, callb:() -> Void }):Void
```

Removes a watch returned by `watch`.

### getTitle

```haxe
function getTitle():Null<String>
```

Returns the title of the tab.

### onBeforeClose

```haxe
function onBeforeClose():Bool
```

Called before the view closes. Returns false to cancel.

### pushUndoStack

```haxe
function pushUndoStack():Void
```

Push a new "UndoStack", that will collect all the new undo.change until
popUndoStack is called

### popUndoStack

```haxe
function popUndoStack():Void
```

Pop the last pushUndoStack operation, creating a unique undo operation that contains all the changes were
recorded in the undo buffer if any were created

### setClipboard

```haxe
function setClipboard(v:Dynamic, ?type:String, ?opts:{  }):Void
```

Copies a value to the clipboard, tagged with a type (the view class by default).

### hasClipboard

```haxe
function hasClipboard(?type:String):Bool
```

Tells if the clipboard holds a value of a type (the view class by default).

### getClipboard

```haxe
function getClipboard(?type:String, ?opts:{ ref:Dynamic }):Dynamic
```

Returns the clipboard value of a type (the view class by default), or null. `opts.ref` receives the copied options.

### processKeyEvent

```haxe
function processKeyEvent(e:js.jquery.Event):Bool
```

Handles a key event with the shortcuts of the focused elements, then of the view. Returns true if handled.

### setContainer

```haxe
function setContainer(cont:golden.Container):Void
```

Sets the layout container of the view.

### rebuild

```haxe
function rebuild():Void
```

Rebuilds the view (once it is shown).

### onResize

```haxe
function onResize():Void
```

Called when the view is resized.

### onDrag

```haxe
function onDrag(e:js.html.DragEvent):Bool
```

Called when files are dragged over the view. Returns true if handled.

### onDragEnd

```haxe
function onDragEnd(e:js.html.DragEvent):Bool
```

Called when a drag over the view ends.

### onDrop

```haxe
function onDrop(e:js.html.DragEvent):Bool
```

Called when files are dropped on the view. Returns true if handled.

### isActive

```haxe
function isActive():Bool
```

Tells if the view is shown.

### onActivate

```haxe
function onActivate():Void
```

Called when the view is shown.

### activate

```haxe
function activate():Void
```

Gives focus if part of a tab group

### close

```haxe
function close():Void
```

Closes the view.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
