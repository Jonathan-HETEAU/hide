# hide.Config

**class** · package [`hide`](README.md) · source [`hide/Config.hx`](../../../../hide/Config.hx) · available on editor (js)

A `props.json` configuration file, merged over its parent configuration. Fields ending with `+` append to the parent arrays.

## Constructor

### new

```haxe
function new(?parent:Config):Void
```

Creates a configuration over `parent`.

## Static methods

### loadConfig

```haxe
static function loadConfig(config:Config, path:String):Config
```

Loads a file into a configuration, alerting on error.

### loadForProject

```haxe
static function loadForProject(projectPath:String, resourcePath:String, appDataPath:String):{ user:Config, project:Config, global:Config, current:Config }
```

Loads the configurations of a project: defaults, user globals, project and user project.

### loadForFile

```haxe
static function loadForFile(ide:hide.tools.IdeData, path:String):Config
```

Returns the configuration of a file, merging the `props.json` files of its folders.

## Variables

### path

```haxe
var path(default, null):String
```

The path of the file, or `null`.

### source

```haxe
var source(default, null):ConfigDef
```

The content of the file.

### current

```haxe
var current:ConfigDef
```

The merged configuration.

## Methods

### isLocal

```haxe
function isLocal():Bool
```

Tells if the file is in the project.

### load

```haxe
function load(path:String):Void
```

Loads a file (empty if missing). Throws if it is invalid.

### save

```haxe
function save():Void
```

Saves the file.

### sync

```haxe
function sync():Void
```

Merges the parent configuration and the source again.

### get

```haxe
function get(key:String, ?defaultVal:Dynamic):Dynamic
```

Returns a value of the merged configuration, or `defaultVal`.

### getLocal

```haxe
function getLocal(key:String, ?defaultVal:Dynamic):Dynamic
```

Returns a value defined in the project files, or `defaultVal`.

### set

```haxe
function set(key:String, val:Dynamic):Void
```

Sets a value in the source (removed if `null`) and saves.
