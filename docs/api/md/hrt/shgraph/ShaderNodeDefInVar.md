# hrt.shgraph.ShaderNodeDefInVar

**typedef** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

An input of a node definition.

## Fields

### v

```haxe
var v:hxsl.TVar
```

The variable.

### isDynamic

```haxe
var isDynamic:Bool
```

Tells if the type is resolved from the connected types.

### internal

```haxe
var internal:Bool
```

Tells if the input is hidden in the editor.

### defVal

```haxe
var ?defVal:Null<ShaderDefInput>
```

The default value when not connected.
