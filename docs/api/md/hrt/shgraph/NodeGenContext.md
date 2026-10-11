# hrt.shgraph.NodeGenContext

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/NodeGenContext.hx`](../../../../../hrt/shgraph/NodeGenContext.hx)

Subclasses: [`hrt.shgraph.NodeGenContextSubGraph`](NodeGenContextSubGraph.md)

The context of the generation of the nodes of a graph: gives them their inputs and the global variables, and collects their expressions and outputs.

## Constructor

### new

```haxe
function new(graph:Graph, domain:Domain):Void
```

Creates the context.

## Static methods

### convertToType

```haxe
static function convertToType(targetType:hxsl.Type, sourceExpr:hxsl.TExpr):hxsl.TExpr
```

Returns `sourceExpr` converted to a float or float vector type: repeated, extended (alpha `1`) or truncated. Booleans become `0` or `1`.

## Variables

### domain

```haxe
var domain:Domain
```

The domain generated, for the nodes that differ between vertex and fragment.

### previewDomain

```haxe
var previewDomain:Domain
```

The domain of the node previews, or `null`.

### graph

```haxe
var graph:Graph
```

The graph.

### explicitVarNames

```haxe
var explicitVarNames:Bool
```

If true, generate human readable names for variables in the shader cache (exists to support backward shader generation when var names where not explicit)

## Methods

### getGlobalInput

```haxe
function getGlobalInput(id:Global):hxsl.TExpr
```

Returns the expression reading a global, allocated on first use.

### getGlobalTVar

```haxe
function getGlobalTVar(tvar:hxsl.TVar):hxsl.TExpr
```

Returns the expression reading an external variable, allocated on first use.

### setGlobalOutput

```haxe
function setGlobalOutput(id:Global, expr:hxsl.TExpr):Void
```

Assigns an expression to a global.

### getGlobalParam

```haxe
function getGlobalParam(name:String, type:hxsl.Type):hxsl.TExpr
```

Returns the expression reading a shader parameter, allocated on first use.

### setGlobalCustomOutput

```haxe
function setGlobalCustomOutput(name:String, expr:hxsl.TExpr):Void
```

Assigns an expression to a named variable, allocated on first use.

### getShaderVariable

```haxe
function getShaderVariable(id:Int, ?init:hxsl.TExpr):hxsl.TVar
```

Returns the variable of a local variable of the graph, assigned with `init` the first time.

### ensureVarInit

```haxe
function ensureVarInit(tvar:hxsl.TVar):Void
```

Add a default value init for the variable in case it doesn't exist

### addPreview

```haxe
function addPreview(expr:hxsl.TExpr):Void
```

Displays `expr` (converted to a color) in the preview of the current node.

### addFunction

```haxe
function addFunction(e:hxsl.TFunction):Void
```

Adds a function to the shader.

### addExpr

```haxe
function addExpr(e:hxsl.TExpr):Void
```

Adds an expression to the shader.

### setOutput

```haxe
function setOutput(id:Int, e:hxsl.TExpr):Void
```

Sets the expression of an output of the current node. Throws if its type is not the declared one.

### getType

```haxe
function getType(type:SgType):hxsl.Type
```

Returns the HXSL type of a node type, with the generics resolved.

### getGenericType

```haxe
inline function getGenericType(id:Int):hxsl.Type
```

Returns the resolved type of a generic.

### getInput

```haxe
function getInput(id:Int):Null<hxsl.TExpr>
```

Returns the expression connected to the input `id`, or its default value (InputInfo.def) if nothing is connected.
If the input is inlineEditable, the value set by the user on the node is used instead of the default.
Returns null if the input has no default value.
