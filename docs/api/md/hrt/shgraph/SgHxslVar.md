# hrt.shgraph.SgHxslVar

**enum** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/SgHxslVar.hx`](../../../../../hrt/shgraph/SgHxslVar.hx)

The role of a variable in the HXSL code of a node (`ShaderNodeHxsl`), from its metadata.

## Constructors

### SgInput

```haxe
SgInput(isDynamic:Bool, defaultValue:ShaderDefInput)
```

`@sginput`: an input, with its default value.

### SgConst

```haxe
SgConst
```

`@sgconst`: a constant set on the node.

### SgOutput

```haxe
SgOutput(isDynamic:Bool)
```

`@sgoutput`: an output.

### SgInit

```haxe
SgInit
```

`@sginit`: a variable initialized in the `__init__` of the shader, in case it is not assigned by a previous shader.

### SgIsFragment

```haxe
SgIsFragment
```

`isFragment`: replaced by a constant, `true` if the node is generated in the fragment domain.

### SgIsVertex

```haxe
SgIsVertex
```

`isVertex`: replaced by a constant, `true` if the node is generated in the vertex domain.
