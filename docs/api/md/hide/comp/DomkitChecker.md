# hide.comp.DomkitChecker

**class** · package [`hide.comp`](README.md) · module `hide.comp.DomkitEditor` · source [`hide_js/hide/comp/DomkitEditor.hx`](../../../../../hide_js/hide/comp/DomkitEditor.hx) · available on editor (js)

Checks domkit markup and style sheets against the components of the project.

## Constructor

### new

```haxe
function new(config:hide.Config):Void
```

Creates a checker with the script API types of a config.

## Methods

### checkDML

```haxe
function checkDML(dmlCode:String, filePath:String, ?position:Int = 0):Void
```

Checks a markup. Throws a `domkit.Error`.

### formatDML

```haxe
function formatDML(code:String):String
```

Returns a markup reformatted.

### checkLess

```haxe
function checkLess(cssCode:String):Void
```

Checks a style sheet (with the `less.includes` config files). Throws a `domkit.Error`.

### resolveComp

```haxe
function resolveComp(name:String):Null<domkit.TypedComponent>
```

Returns a component by name, or null.
