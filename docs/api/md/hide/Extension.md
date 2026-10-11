# hide.Extension

**class** · package [`hide`](README.md) · source [`hide_js/hide/Extension.hx`](../../../../hide_js/hide/Extension.hx) · available on editor (js)

The registry of the views opening each file extension.

## Static variables

### EXTENSIONS

```haxe
static var EXTENSIONS:Map<String, ExtensionDesc>
```

The registered extensions.

## Static methods

### registerExtension

```haxe
static function registerExtension(c:Class<hide.ui.View<registerExtension.T>>, extensions:Array<String>, ?options:Null<ExtensionOptions>):Null<Dynamic>
```

Registers a view opening files with extensions (replacing the view of an extension already registered, and merging the options). Returns null, to be used as a static initializer.

### getExtension

```haxe
static function getExtension(file:String):Null<ExtensionDesc>
```

Returns the registered extension of a file (`json.<type>` for JSON files with a `type` field), or null.
