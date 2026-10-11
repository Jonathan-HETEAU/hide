# hrt.shgraph.CacheEntry

**typedef** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderNodeHxsl` · source [`hrt/shgraph/ShaderNodeHxsl.hx`](../../../../../hrt/shgraph/ShaderNodeHxsl.hx)

The parsed HXSL code of a `ShaderNodeHxsl` node class.

## Fields

### outputs

```haxe
var outputs:Array<OutputInfo>
```

The outputs.

### inputs

```haxe
var inputs:Array<InputInfo>
```

The inputs.

### idOutputOrder

```haxe
var idOutputOrder:Map<Int, Int>
```

The output index of each output variable id.

### idInputOrder

```haxe
var idInputOrder:Map<Int, Int>
```

The input index of each input variable id.

### funs

```haxe
var funs:Array<FunctionCache>
```

The functions of the node.

### expr

```haxe
var expr:hxsl.TExpr
```

The expression of the node.
