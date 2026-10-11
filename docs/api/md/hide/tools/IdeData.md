# hide.tools.IdeData

**class** · package [`hide.tools`](README.md) · source [`hide/tools/IdeData.hx`](../../../../../hide/tools/IdeData.hx) · available on editor (js)

Subclasses: [`hide.Ide`](../Ide.md)

The data of the editor shared by the JS and HL editors: project paths, configurations, database and files.

## Constructor

### new

```haxe
function new():Void
```

Creates the data.

## Static methods

### openExternalFile

```haxe
static function openExternalFile(filePath:String):Void
```

Opens a file with the default application of the system.

### showFileInExplorer

```haxe
static function showFileInExplorer(path:String):Void
```

Shows a file in the file explorer of the system.

## Variables

### projectDir

```haxe
var projectDir(get, null):String
```

The project folder.

### resourceDir

```haxe
var resourceDir(get, null):String
```

The resource folder of the project (`res`).

### appPath

```haxe
var appPath(get, null):String
```

The folder of the editor.

### userStatePath

```haxe
var userStatePath(get, null):String
```

The folder of the user settings.

### database

```haxe
var database:cdb.Database
```

The CastleDB database.

### fileWatcher

```haxe
var fileWatcher:FileWatcher
```

The file watcher.

### shaderLoader

```haxe
var shaderLoader:ShaderLoader
```

The shader loader.

### readOnlyConfig

```haxe
var readOnlyConfig:Bool
```

Indicates that this ide shouldn't try
to save configs (used by the thumbnail generator app)

### defaultIdeConfig

```haxe
var defaultIdeConfig:Map<String, Dynamic>
```

The default values of the global settings.

### currentConfig

```haxe
var currentConfig(get, null):hide.Config
```

The configuration of the user for the project.

### ideConfig

```haxe
var ideConfig(get, null):hide.HideGlobalConfig
```

The global settings.

### projectConfig

```haxe
var projectConfig(get, null):hide.HideProjectConfig
```

The project settings of the user.

### config

```haxe
var config:{ user:hide.Config, project:hide.Config, global:hide.Config, current:hide.Config }
```

The configurations: `global` (per user), `user` (per user and project), `project` (per project) and `current` (merged).

## Methods

### isProjectValid

```haxe
function isProjectValid():Bool
```

Tells if a project is open.

### listMatLibraries

```haxe
function listMatLibraries(path:String):Array<Dynamic>
```

Returns the material libraries available for a path.

### error

```haxe
function error(e:Dynamic):Void
```

Reports an error.

### makeRelative

```haxe
function makeRelative(path:String):String
```

Returns a path relative to the resource folder.

### getPath

```haxe
function getPath(relPath:String):Null<String>
```

Returns the absolute path of a resource path (`${HIDE}` is the editor folder).

### getRelPath

```haxe
function getRelPath(absPath:String):Null<String>
```

Returns an absolute path relative to the resource folder.

### getDirPath

```haxe
function getDirPath(path:String):String
```

Returns the folder of a path.

### saveDatabase

```haxe
function saveDatabase(?forcePrefabs:Bool):Void
```

Saves the database and its data files.

### fileExists

```haxe
function fileExists(path:String):Bool
```

Tells if a resource file exists.

### fileStat

```haxe
function fileStat(path:String):Null<sys.FileStat>
```

Returns the stats of a resource file, or `null`.

### getFile

```haxe
function getFile(path:String):Bytes
```

Returns the content of a resource file.

### getFileText

```haxe
function getFileText(path:String):String
```

Returns the text of a resource file.

### parseJSON

```haxe
function parseJSON(str:String):Dynamic
```

Parses JSON (or binary prefab data).

### toJSON

```haxe
function toJSON(v:Dynamic):String
```

Returns a value as formatted JSON.

### loadPrefab

```haxe
function loadPrefab(file:String, ?cl:Class<loadPrefab.T>, ?checkExists:Bool):loadPrefab.T
```

Loads a prefab file.

### savePrefab

```haxe
function savePrefab(file:String, f:hrt.prefab.Prefab):Void
```

Saves a prefab to a file.

### applyDefaultValues

```haxe
function applyDefaultValues():Void
```

Sets the default values of the missing global settings.

### removeDefaultValues

```haxe
function removeDefaultValues():Void
```

Removes the global settings equal to their default value, before saving.
