# hide.comp.ScriptCache

**class** · package [`hide.comp`](README.md) · module `hide.comp.ScriptEditor` · source [`hide_js/hide/comp/ScriptEditor.hx`](../../../../../hide_js/hide/comp/ScriptEditor.hx) · available on editor (js)

The cache of the script check results and of the API types, stored in the local storage.

## Constructor

### new

```haxe
function new():Void
```

Creates an empty cache.

## Static methods

### getCachedResult

```haxe
static function getCachedResult(config:hide.Config, documentName:String, constants:Map<String, Dynamic>, code:String):Bool
```

Tells if a script has an error, checking it only if not in the cache.

### loadApiFiles

```haxe
static function loadApiFiles(config:hide.Config):Null<ScriptCache>
```

Loads the types of the `script.api.files` config files.

## Variables

### files

```haxe
var files:Array<String>
```

The API files.

### apiHash

```haxe
var apiHash:String
```

The hash of the API files.

### types

```haxe
var types:hscript.CheckerTypes
```

The types of the API files.

## Methods

### loadConfig

```haxe
function loadConfig(sign:String):Void
```

Loads the cached results if they were made with the same config signature.

### loadFiles

```haxe
function loadFiles(files:Array<String>):Void
```

Loads the types of API files, unless they did not change.

### getResult

```haxe
function getResult(hash:String):Null<Bool>
```

Returns the cached result of a script hash (true if it has an error), or null.

### setResult

```haxe
function setResult(hash:String, b:Bool):Void
```

Stores the result of a script hash.
