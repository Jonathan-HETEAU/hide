# hrt.shgraph.ShaderGraphVariable

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

A local variable of a shader graph, read and written by the `VarRead` and `VarWrite` nodes.

## Constructor

### new

```haxe
function new(name:String, type:SgType, defValue:Dynamic, ?isColor:Null<Bool>, ?isGlobal:Null<Bool>):Void
```

- **param** `isGlobal` Tells if the variable is shared with the other shaders (a global).
- **param** `isColor` Tells if the value is edited as a color.
- **param** `defValue` The default value.
- **param** `type` The type.
- **param** `name` The name.

## Variables

### name

```haxe
var name:String
```

The name.

### type

```haxe
var type:SgType
```

The type.

### defValue

```haxe
var defValue:Dynamic
```

The default value.

### isColor

```haxe
var isColor:Bool
```

Tells if the value is edited as a color.

### isGlobal

```haxe
var isGlobal:Bool
```

Tells if the variable is shared with the other shaders (a global).
