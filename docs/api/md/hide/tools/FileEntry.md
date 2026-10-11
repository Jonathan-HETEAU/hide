# hide.tools.FileEntry

**class** · package [`hide.tools`](README.md) · module `hide.tools.FileManager` · source [`hide_js/hide/tools/FileManager.hx`](../../../../../hide_js/hide/tools/FileManager.hx) · available on editor (js)

A file or directory of the project resources, kept up to date by the `FileManager`.

## Constructor

### new

```haxe
function new(name:String, parent:FileEntry, kind:FileKind):Void
```

Creates an entry.

## Static methods

### compareFile

```haxe
static function compareFile(a:FileEntry, b:FileEntry):Int
```

Sorts directories before files, then by name.

## Variables

### name

```haxe
var name:String
```

The file name.

### path

```haxe
var path:String
```

The full path.

### relPath

```haxe
var relPath:String
```

The path relative to the resource directory.

### children

```haxe
var children:Array<FileEntry>
```

The entries of a directory.

### kind

```haxe
var kind:FileKind
```

The kind of entry.

### parent

```haxe
var parent:FileEntry
```

The parent directory, or null for the root.

### iconPath

```haxe
var iconPath:String
```

The path of the thumbnail, `loading` while it renders, or null if not loaded: call `getIcon` to load it.

### disposed

```haxe
var disposed:Bool
```

True once the entry is disposed.

### vcsStatus

```haxe
var vcsStatus:VCSStatus
```

The version control status.

### ignored

```haxe
var ignored:Bool
```

True if the path matches an ignore pattern of the file manager.

## Methods

### toString

```haxe
function toString():String
```

Returns the name.

### dispose

```haxe
function dispose():Void
```

Disposes the entry and its children, removing their file watchers.

### getIcon

```haxe
function getIcon(onReady:MiniatureReadyCallback):Void
```

Calls `onReady` with the thumbnail path, rendering it if needed.

### getRelPath

```haxe
inline function getRelPath():String
```

Returns the path relative to the resource directory.

### getPath

```haxe
inline function getPath():String
```

Returns the full path.
