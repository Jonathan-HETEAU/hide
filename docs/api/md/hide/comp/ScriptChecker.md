# hide.comp.ScriptChecker

**class** · package [`hide.comp`](README.md) · module `hide.comp.ScriptEditor` · source [`hide_js/hide/comp/ScriptEditor.hx`](../../../../../hide_js/hide/comp/ScriptEditor.hx) · available on editor (js)

Type checks hscript scripts against the API configured in `script.api` for their document name.

## Constructor

### new

```haxe
function new(config:hide.Config, documentName:String, ?constants:Map<String, Dynamic>):Void
```

Creates a checker for a document.

## Variables

### config

```haxe
var config:hide.Config
```

The config.

### documentName

```haxe
var documentName:String
```

The document name, matched against the `script.api` entries.

### constants

```haxe
var constants:Map<String, Dynamic>
```

The constant values available to the API (for example `cdb.objID`).

### evalTo

```haxe
var evalTo:String
```

The expected type of the script value, or null.

### checker

```haxe
var checker(default, null):hscript.Checker
```

The hscript type checker.

### cdbEnums

```haxe
var cdbEnums:Array<String>
```

The CDB sheets available as enums.

### defaultPublicFields

```haxe
var defaultPublicFields:Bool
```

The default of `publicFields` for the contexts.

## Methods

### onInitTypes

```haxe
dynamic function onInitTypes():Void
```

Called after the API types are initialized.

### addCDBEnum

```haxe
function addCDBEnum(name:String, ?cdbPack:String):hscript.TType
```

Makes a CDB sheet available as an enum of its ids.

### makeParser

```haxe
function makeParser():hscript.Parser
```

Returns a parser with the script options.

### getCompletion

```haxe
function getCompletion(script:String):Null<hscript.TType>
```

Returns the type completed at the end of a script, or null.

### check

```haxe
function check(script:String, ?checkTypes:Bool = true):Null<hscript.Error>
```

Parses a script and checks its types. Returns the error, or null.
