# hrt.shgraph.Variables

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/Variables.hx`](../../../../../hrt/shgraph/Variables.hx)

The global variables of the shader graphs.

## Static variables

### previewSelectName

```haxe
static var previewSelectName:String
```

The name of the parameter selecting the node preview.

### Globals

```haxe
static var Globals:Array<GlobalInfo>
```

The definitions of the globals, by `Global`.

## Static methods

### getFullPath

```haxe
static function getFullPath(g:GlobalInfo):String
```

Returns the full path of a global, as `parent.name`.

### getGlobalNameMap

```haxe
static function getGlobalNameMap():Map<String, Global>
```

Returns the globals by full path.
