# hrt.shgraph.Graph

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

The graph of a domain of a `ShaderGraph`: its nodes and their connections.

## Constructor

### new

```haxe
function new(parent:ShaderGraph, domain:Domain):Void
```

Creates an empty graph.

## Static methods

### areTypesCompatible

```haxe
static function areTypesCompatible(input:SgType, output:SgType):Bool
```

Tells if an output of type `output` can be connected to an input of type `input`.

## Variables

### parent

```haxe
var parent:ShaderGraph
```

The shader graph.

### domain

```haxe
var domain:Domain
```

The domain.

## Methods

### load

```haxe
function load(json:Dynamic):Void
```

Loads the serialized nodes and edges.

### generate

```haxe
function generate(nodes:Array<Dynamic>, edges:Array<Edge>):Void
```

Creates the nodes and edges.

### canAddEdge

```haxe
function canAddEdge(edge:Edge):Bool
```

Tells if the edge can be added: the input and output exist, have compatible types, and the edge creates no cycle.

### findLocalVarWrite

```haxe
function findLocalVarWrite(read:hrt.shgraph.nodes.VarRead):Null<hrt.shgraph.nodes.VarWrite>
```

Returns the node writing the variable read by `read`, or `null`.

### addEdge

```haxe
function addEdge(edge:Edge, ?checkCycles:Bool = true):Bool
```

Connects an output to an input. Returns `false` if it is not possible.

### addNode

```haxe
function addNode(shNode:ShaderNode):Void
```

Adds a node.

### removeEdge

```haxe
function removeEdge(idNode:Int, inputId:Int, ?update:Bool = true):Void
```

Disconnects an input.

### setPosition

```haxe
function setPosition(idNode:Int, x:Float, y:Float):Void
```

Moves a node.

### getNodes

```haxe
function getNodes():Map<Int, ShaderNode>
```

Returns the nodes, by id.

### getNode

```haxe
function getNode(id:Int):Null<ShaderNode>
```

Returns the node of an id.

### getParameter

```haxe
function getParameter(id:Int):Null<Parameter>
```

Returns the parameter of an id, or `null`.

### resolveTypes _(editor (js) only)_

```haxe
function resolveTypes():Void
```

Resolve the type of the dynamic (SgGeneric) inputs/outputs of every node from their connections,
using the same rules as NodeGenContext.initForNode, and store them in
ShaderNode.resolvedInputTypes/resolvedOutputTypes. When nothing is connected to a generic,
it falls back to the most generic type of its constraint if one of its inputs has an inline value,
else its ios are left null (unresolved).

### hasCycle

```haxe
function hasCycle():Bool
```

Tells if the graph has a cycle.

### removeNode

```haxe
function removeNode(idNode:Int):Void
```

Removes a node.

### saveToDynamic

```haxe
function saveToDynamic():Dynamic
```

Returns the serialized nodes and edges.

### mapShaderVar

```haxe
function mapShaderVar(cb:(v:hrt.shgraph.nodes.ShaderVar) -> Bool):Bool
```

Iterate on all the shaderVars in the graph, breaking if the cb return false
