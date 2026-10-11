# hide.tools.FileManager

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/FileManager.hx`](../../../../../hide_js/hide/tools/FileManager.hx) · available on editor (js)

Class that handle parsing and maintaining the state of the project files, and generate miniatures for them on demand

## Static variables

### thumbnailGeneratorPort

```haxe
static final thumbnailGeneratorPort:Int
```

The port of the thumbnail generator server.

### thumbnailGeneratorUrl

```haxe
static final thumbnailGeneratorUrl:String
```

The host of the thumbnail generator server.

### inst

```haxe
static var inst(get, default):FileManager
```

The file manager, created on first access.

## Static methods

### onBeforeReload

```haxe
static function onBeforeReload():Void
```

Stops the thumbnail generator and server before reloading the IDE.

### doRename

```haxe
static function doRename(operations:Array<{  }>):Void
```

Renames files (`to` is relative to the resource directory) and updates the references to them.

### onRenameRec

```haxe
static function onRenameRec(path:String, name:String):Bool
```

Renames a file or directory (with SVN if possible), its `.dat` directory, and the references to an FBX in `Materials.props`. `name` is a new name, or a path starting with `/`. Swaps the files if the target exists and the user confirms.

### replacePathInFiles

```haxe
static function replacePathInFiles(operations:Array<{  }>):Void
```

Replaces the renamed paths in the project files.

## Variables

### fileRoot

```haxe
var fileRoot:FileEntry
```

The root directory of the resources.

### onFileChangeHandlers

```haxe
var onFileChangeHandlers:Array<(entry:FileEntry) -> Void>
```

Called when a file changes.

### onVCSStatusUpdateHandlers

```haxe
var onVCSStatusUpdateHandlers:Array<() -> Void>
```

Called when the version control status of the files is updated.

## Methods

### deleteFiles

```haxe
function deleteFiles(files:Array<FileEntry>):Void
```

Deletes files and directories from the disk.

### getFileEntry

```haxe
function getFileEntry(path:String):Null<FileEntry>
```

Returns the entry of a path, or null.

### getRoots

```haxe
function getRoots(files:Array<FileEntry>):Array<FileEntry>
```

Removes from a list the entries contained in a directory of the list, to simplify bulk operations.

### createSVNFileList

```haxe
function createSVNFileList(files:Array<FileEntry>):String
```

Return the path to a temporary file with all the paths in the files array inside

### queueRefreshSVN

```haxe
function queueRefreshSVN():Void
```

Updates the SVN status of the files if SVN is enabled.

### cloneFile

```haxe
function cloneFile(entry:FileEntry):Bool
```

Asks a name and copies a file or directory next to it. Returns false if cancelled.

### invalidateMiniature

```haxe
function invalidateMiniature(file:FileEntry):Void
```

Deletes the thumbnail of a file (and of the files of a directory).

### checkWindowReady

```haxe
function checkWindowReady():Bool
```

Tells if the thumbnail generator is ready, opening its window if needed.

### clearRenderQueue

```haxe
function clearRenderQueue():Void
```

Clears the thumbnail render queue.

### setPriority

```haxe
function setPriority(path:String, newPriority:Int):Void
```

Changes the render priority of a queued thumbnail.
