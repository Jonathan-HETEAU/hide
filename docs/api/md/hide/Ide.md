# hide.Ide

**class** · package [`hide`](README.md) · source [`hide_js/hide/Ide.hx`](../../../../hide_js/hide/Ide.hx) · available on editor (js)

Extends: [`hide.tools.IdeData`](tools/IdeData.md)

The HIDE editor application: project, windows, views, layout, menus, dialogs and clipboard.
The running instance is `Ide.inst`.

## Static variables

### IMG_EXTS

```haxe
static var IMG_EXTS:Array<String>
```

The image file extensions.

### inst

```haxe
static var inst:Ide
```

The running IDE.

## Static methods

### onIdeError

```haxe
static dynamic function onIdeError(e:Dynamic):Void
```

Called with each error reported by the IDE.

### getGitCommitHashAndDate

```haxe
static function getGitCommitHashAndDate():String
```

Returns the last git commit as `hash(date)`, `dev` if there are local changes, or an empty string if git fails.

## Variables

### initializing

```haxe
var initializing(default, null):Bool
```

True while the IDE initializes.

### mouseX

```haxe
var mouseX:Int
```

The last mouse X position in the window.

### mouseY

```haxe
var mouseY:Int
```

The last mouse Y position in the window.

### isWindows

```haxe
var isWindows(get, null):Bool
```

Tells if the IDE runs on Windows.

### isFocused

```haxe
var isFocused(get, null):Bool
```

Tells if the IDE window has the focus.

### isCDB

```haxe
var isCDB:Bool
```

True when the IDE runs as CastleDB (env `HIDE_START_CDB=1` or app named `CDB`).

### isDebugger

```haxe
var isDebugger:Bool
```

True when debugging (env `HIDE_DEBUG=1`): view errors are not caught.

### gamePad

```haxe
var gamePad(default, null):hxd.Pad
```

The game pad.

### localStorage

```haxe
var localStorage(get, null):js.html.Storage
```

The browser local storage.

### thumbnailMode

```haxe
var thumbnailMode:Bool
```

True when the IDE runs to render thumbnails (`thumbnail` in the window URL).

### show3DIcons

```haxe
var show3DIcons:Bool
```

Tells if the 3D editor icons are shown.

### show3DIconsCategory

```haxe
var show3DIconsCategory:Map<hrt.impl.IconCategory, Bool>
```

Tells for each icon category if its 3D icons are shown.

### customFilepathRefFilters

```haxe
var customFilepathRefFilters:Array<(ctx:FilterPathContext) -> Void>
```

Extra filters called by `filterPaths` after the built-in ones.

## Methods

### getViews

```haxe
function getViews(cl:Class<getViews.T>):Array<getViews.T>
```

Returns the open views of a class.

### focus

```haxe
function focus():Void
```

Focuses the window.

### blur

```haxe
function blur():Void
```

Removes the focus from the window.

### getOrInitTarget

```haxe
function getOrInitTarget(position:hide.ui.DisplayPosition):golden.ContentItem
```

Returns the layout item at a display position, creating it if needed.

### setFullscreen

```haxe
function setFullscreen(b:Bool):Void
```

Enters or leaves the full screen mode.

### setClipboard

```haxe
function setClipboard(data:String, ?type:nw.ClipboardType = Text):Void
```

Sets the clipboard content.

### setClipboardMultiple

```haxe
function setClipboardMultiple(datas:Array<nw.ClipboardData>):Void
```

Sets the clipboard content with several types.

### getClipboard

```haxe
function getClipboard(?type:nw.ClipboardType = Text):String
```

Returns the clipboard content of a type.

### setData

```haxe
function setData(key:String, data:Dynamic):Void
```

Stores data under a key, to transfer it between views.

### getData

```haxe
function getData(key:String):Null<Dynamic>
```

Returns the data stored with `setData` (for example for drag and drop).

### popData

```haxe
function popData(key:String):Null<Dynamic>
```

Returns and removes the data stored with `setData`.

### registerUpdate

```haxe
function registerUpdate(updateFun:() -> Void):Void
```

Adds a function called each frame.

### unregisterUpdate

```haxe
function unregisterUpdate(updateFun:() -> Void):Bool
```

Removes a function added by `registerUpdate`.

### makeSignature

```haxe
function makeSignature(content:String):String
```

Returns the MD5 of a content, in base 64.

### cleanObject

```haxe
function cleanObject(v:Dynamic):Void
```

Removes the null fields of an object.

### getHideResPath

```haxe
function getHideResPath(basePath:String):Null<String>
```

Returns the full path of a file in the HIDE `res` directory.

### getTexture

```haxe
function getTexture(fullPath:String):Null<h3d.mat.Texture>
```

Loads a texture from a full path on disk. The result is cached.

### error

```haxe
override function error(e:Dynamic):Void
```

### quickError

```haxe
function quickError(msg:Dynamic, ?timeoutSeconds:Float = 5.0):Void
```

Logs an error and shows it as a temporary error message.

### injectCss

```haxe
function injectCss(data:String):Void
```

Adds a CSS style to the page.

### reload

```haxe
function reload():Void
```

Reloads the IDE.

### reloadCss

```haxe
function reloadCss(?path:String):Void
```

Reloads the stylesheets, or only those whose URL contains `path`.

### getCDBContent

```haxe
function getCDBContent(sheetName:String):Array<getCDBContent.T>
```

Returns a copy of the lines of a CDB sheet, with the indexes initialized.

### getUnCachedUrl

```haxe
function getUnCachedUrl(path:String):String
```

Returns a `file://` URL of a file, with its version to bypass the browser cache.

### chooseImage

```haxe
function chooseImage(onSelect:() -> Void, ?allowNull:Bool = false):Void
```

Opens a file chooser for images (`IMG_EXTS`).

### chooseFileOptions

```haxe
function chooseFileOptions(onSelect:() -> Void, ?options:{ ?workingDir:Null<String>, ?saveAs:Null<String>, ?onlyDirectory:Null<Bool>, ?multiple:Null<Bool>, ?isAbsolute:Null<Bool>, ?exts:Null<Array<String>>, ?allowNull:Null<Bool> }):Void
```

Opens a file chooser with options and calls `onSelect` with the chosen paths.

### addStatusIcon

```haxe
function addStatusIcon(e:Element):Void
```

Adds an element to the ide status bar

### chooseFiles

```haxe
function chooseFiles(exts:Array<String>, onSelect:() -> Void, ?allowNull:Bool = false):Void
```

Opens a file chooser for several files with the extensions `exts`.

### chooseFile

```haxe
function chooseFile(exts:Array<String>, onSelect:() -> Void, ?allowNull:Bool = false, ?workingdir:String):Void
```

Opens a file chooser for the extensions `exts` and calls `onSelect` with the chosen path.

### chooseFileSave

```haxe
function chooseFileSave(defaultPath:String, onSelect:() -> Void, ?allowNull:Bool = false):Void
```

Opens a save file chooser starting at `defaultPath`.

### chooseDirectory

```haxe
function chooseDirectory(onSelect:() -> Void, ?isAbsolute:Bool = false, ?allowNull:Bool = false):Void
```

Opens a directory chooser and calls `onSelect` with the chosen path (relative unless `isAbsolute`).

### search

```haxe
function search(text:String, ?filesToInclude:Array<String>, ?filesToExclude:Array<String>):Array<hide.view.Reference>
```

Searches a regular expression in the project files. `filesToInclude` and `filesToExclude` are extensions.

### filterPaths

```haxe
function filterPaths(callb:(ctx:FilterPathContext) -> Void):Void
```

Iterate throught all the strings in the project that could contain a path, replacing
the value by what `callb` returns. The callb must call `changed()` if it changed the path.

### refreshFont

```haxe
function refreshFont():Void
```

Applies the font setting (`useAlternateFont`).

### filterPrefabs

```haxe
function filterPrefabs(callb:(hrt.prefab.Prefab, path:String) -> Bool):Void
```

Calls `callb` on each prefab (and its children) of each prefab file of the project. The file is saved if `callb` returns true for one of them.

### filterProps

```haxe
function filterProps(callb:(data:Dynamic, path:String) -> Bool):Void
```

Calls `callb` on the data of each props, json and prefab file of the project. The file is saved if `callb` returns true.

### setProgress

```haxe
function setProgress(?text:String):Void
```

Sets the window title to a progress text, or back to the default title if null.

### runCommand

```haxe
function runCommand(cmd:{ split:() -> { join:() -> String } }, ?callb:() -> Void):Void
```

Runs a shell command (`%PROJECTDIR%` is replaced) and calls `callb` with the error message or null.

### addCustomMenu

```haxe
function addCustomMenu(item:nw.MenuItem):Void
```

Adds an item to the main menu.

### initMenu

```haxe
function initMenu():Void
```

Builds the main menu.

### showFileInResources

```haxe
function showFileInResources(path:String):Void
```

Reveals a file in the file browsers.

### openFile

```haxe
function openFile(file:String, ?onCreate:() -> Void, ?onOpen:() -> Void):Void
```

Opens a file in the view of its extension, or focuses the view if it is already open.

### openSubView

```haxe
function openSubView(component:Class<hide.ui.View<openSubView.T>>, state:openSubView.T, events:{  }):Void
```

Opens a view in a new window. `events` are the callbacks the sub view can call with `callParentView`.

### callParentView

```haxe
function callParentView(name:String, param:Dynamic):Void
```

From a sub view window: calls the event `name` of its parent view.

### closeInspector

```haxe
function closeInspector():Void
```

Closes the inspector panel.

### open

```haxe
function open(component:String, state:Dynamic, ?onCreate:() -> Void, ?onOpen:() -> Void, ?positionOverride:hide.ui.DisplayPosition):Void
```

Opens a view of a registered component with a state.

### reopenLastClosedTab

```haxe
function reopenLastClosedTab():Void
```

Opens the last closed tab again.

### globalMessage

```haxe
function globalMessage(message:String, kind:MessageKind, ?timeoutSeconds:Float = 5.0):Void
```

Shows a temporary message in the window for `timeoutSeconds`. Identical messages shown at the same time are merged.

### quickMessage

```haxe
function quickMessage(text:String, ?timeoutSeconds:Float = 5.0):Void
```

Logs a message and shows it as a temporary info message.

### message

```haxe
function message(text:String):Void
```

Shows an alert box.

### confirm

```haxe
function confirm(text:String):Bool
```

Shows a confirm box. Returns true if accepted.

### ask

```haxe
function ask(text:String, ?defaultValue:String = ""):String
```

Shows a prompt box. Returns the text, or null if cancelled.

### getSVNModifiedFiles

```haxe
function getSVNModifiedFiles(callback:(files:Array<String>) -> Void):Void
```

Calls `callback` with the files modified in the SVN working copy. Throws if SVN is not available.

### isSVNAvailable

```haxe
function isSVNAvailable():Bool
```

Tells if SVN and TortoiseSVN are installed and the project is an SVN working copy.

## Inherited members

- from [`hide.tools.IdeData`](tools/IdeData.md): `projectDir`, `resourceDir`, `appPath`, `userStatePath`, `database`, `fileWatcher`, `shaderLoader`, `readOnlyConfig`, `defaultIdeConfig`, `currentConfig`, `ideConfig`, `projectConfig`, `config`, `isProjectValid`, `listMatLibraries`, `error`, `makeRelative`, `getPath`, `getRelPath`, `getDirPath`, `saveDatabase`, `fileExists`, `fileStat`, `getFile`, `getFileText`, `parseJSON`, `toJSON`, `loadPrefab`, `savePrefab`, `applyDefaultValues`, `removeDefaultValues`
