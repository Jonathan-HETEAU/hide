# hide.FilterPathContext

**class** · package [`hide`](README.md) · module `hide.Ide` · source [`hide_js/hide/Ide.hx`](../../../../hide_js/hide/Ide.hx) · available on editor (js)

The context passed to the `Ide.filterPaths` callbacks, to change the file paths found in the project data.

## Constructor

### new

```haxe
function new(filterFn:() -> Void):Void
```

Creates a context with a filter callback.

## Variables

### valueCurrent

```haxe
var valueCurrent:String
```

The path being filtered.

### currentObject

```haxe
var currentObject:Dynamic
```

The object holding the path.

### filterFn

```haxe
var filterFn:() -> Void
```

The filter callback.

### getRef

```haxe
var getRef:() -> { str:String, ?goto:Null<() -> Void> }
```

Returns a description of the place of the current path, with an optional function to open it.

## Methods

### change

```haxe
function change(newValue:String):Void
```

Replaces the current path with `newValue`.

### filter

```haxe
function filter(valueCurrent:String, obj:Dynamic):String
```

Calls the filter on a path. Returns the new path, or `valueCurrent` if not changed.
