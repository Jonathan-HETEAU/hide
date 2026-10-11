# hrt.shgraph.ShaderNodeDef

**typedef** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

The HXSL definition of a node.

## Fields

### outVars

```haxe
var outVars:Array<ShaderNodeDefOutVar>
```

The outputs.

### inits

```haxe
var inits:Array<{ variable:hxsl.TVar, value:Dynamic }>
```

The default values of variables.

### inVars

```haxe
var inVars:Array<ShaderNodeDefInVar>
```

The inputs.

### functions

```haxe
var ?functions:Null<Array<hxsl.TFunction>>
```

The functions used by the expression.

### externVars

```haxe
var externVars:Array<hxsl.TVar>
```

The other external variables, like globals.

### expr

```haxe
var expr:hxsl.TExpr
```

The expression of the node.

### __inits__

```haxe
var ?__inits__:Null<Array<{ name:String, e:hxsl.TExpr }>>
```

The initialization expressions.
