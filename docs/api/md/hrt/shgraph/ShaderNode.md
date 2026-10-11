# hrt.shgraph.ShaderNode

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderNode.hx`](../../../../../hrt/shgraph/ShaderNode.hx)

Implements: [`hide.view.IGraphNode`](../../hide/view/IGraphNode.md)

Subclasses: [`hrt.shgraph.ShaderConst`](ShaderConst.md), [`hrt.shgraph.ShaderCustomGlobal`](ShaderCustomGlobal.md), [`hrt.shgraph.ShaderGlobalInput`](ShaderGlobalInput.md), [`hrt.shgraph.ShaderInput`](ShaderInput.md), [`hrt.shgraph.ShaderNodeHxsl`](ShaderNodeHxsl.md), [`hrt.shgraph.ShaderOutput`](ShaderOutput.md), [`hrt.shgraph.ShaderParam`](ShaderParam.md), [`hrt.shgraph.ShaderParticleInputs`](ShaderParticleInputs.md), [`hrt.shgraph.nodes.Comment`](nodes/Comment.md), [`hrt.shgraph.nodes.Cond`](nodes/Cond.md), [`hrt.shgraph.nodes.IfCondition`](nodes/IfCondition.md), [`hrt.shgraph.nodes.Preview`](nodes/Preview.md), [`hrt.shgraph.nodes.Reroute`](nodes/Reroute.md), [`hrt.shgraph.nodes.ShaderVar`](nodes/ShaderVar.md), [`hrt.shgraph.nodes.SubGraph`](nodes/SubGraph.md), [`hrt.shgraph.nodes.Text`](nodes/Text.md)

A node of a shader graph. Subclasses are registered automatically, and declare their inputs and outputs (`getInputs`, `getOutputs`) and generate their expressions (`generate`). The fields with `@prop` metadata are saved.

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### registeredNodes _(editor (js) only)_

```haxe
static var registeredNodes:Map<String, Class<ShaderNode>>
```

The node classes, by name (editor only).

## Static methods

### createFromDynamic

```haxe
static function createFromDynamic(data:Dynamic, graph:Graph):ShaderNode
```

Creates a node from its serialized data.

### register _(editor (js) only)_

```haxe
static function register(key:String, cl:Class<ShaderNode>):Bool
```

Registers a node class (editor only).

## Variables

### id

```haxe
var id:Int
```

The id in the graph.

### x

```haxe
var x:Float
```

The X position in the editor.

### y

```haxe
var y:Float
```

The Y position in the editor.

### showPreview

```haxe
var showPreview:Bool
```

Shows the preview of the node in the editor.

### graph

```haxe
var graph:Graph
```

The graph.

### nameOverride

```haxe
var nameOverride:String
```

The displayed name, or `null` for the name of the class.

### resolvedInputTypes _(editor (js) only)_

```haxe
var resolvedInputTypes:Array<Null<SgType>>
```

Types of the inputs/outputs with their dynamic types resolved, set by Graph.resolveTypes() (null entries are unresolved)

### resolvedOutputTypes _(editor (js) only)_

```haxe
var resolvedOutputTypes:Array<Null<SgType>>
```

The types of the outputs, with their dynamic types resolved by `Graph.resolveTypes` (`null` entries are unresolved; editor only).

### editor _(editor (js) only)_

```haxe
var editor:hide.view.GraphEditor
```

The graph editor (editor only).

### defaults

```haxe
var defaults:Dynamic
```

The default values of the inputs, by name.

### connections

```haxe
var connections:Array<Connection>
```

The connections of the inputs, by input id.

## Methods

### getResolvedInputType _(editor (js) only)_

```haxe
function getResolvedInputType(id:Int):Null<SgType>
```

Returns the resolved type of an input (editor only).

### getResolvedOutputType _(editor (js) only)_

```haxe
function getResolvedOutputType(id:Int):Null<SgType>
```

Returns the resolved type of an output (editor only).

### getInfo _(editor (js) only)_

```haxe
function getInfo():hide.view.GraphNodeInfo
```

Returns the display information of the node (editor only).

### getId _(editor (js) only)_

```haxe
function getId():Int
```

Returns the id.

### getPos _(editor (js) only)_

```haxe
function getPos(p:h2d.col.Point):Void
```

Sets `p` to the position.

### setPos _(editor (js) only)_

```haxe
function setPos(p:h2d.col.Point):Void
```

Sets the position.

### getPropertiesHTML _(editor (js) only)_

```haxe
function getPropertiesHTML(width:Float):Array<hide.Element>
```

Returns the elements editing the properties of the node (editor only).

### setDefaultParam _(editor (js) only)_

```haxe
function setDefaultParam(name:String, value:String):Void
```

Sets the default value of an input and recompiles (editor only).

### requestRecompile _(editor (js) only)_

```haxe
function requestRecompile():Void
```

Asks the shader editor to recompile (editor only).

### serializeToDynamic

```haxe
function serializeToDynamic():Dynamic
```

Returns the serialized node.

### getInputs

```haxe
function getInputs():Array<InputInfo>
```

Declare all the inputs this node uses

### getOutputs

```haxe
function getOutputs():Array<OutputInfo>
```

Declare all the outputs this node uses

### generate

```haxe
function generate(ctx:NodeGenContext):Void
```

Generate the hxsl expressions and outputs of the node

### getAliases

```haxe
function getAliases(name:String, group:String, description:String):Array<AliasInfo>
```

Returns the other entries of the node in the node menu, from its `@alias` metadata.

### setId

```haxe
function setId(id:Int):Void
```

Sets the id.

### loadProperties

```haxe
function loadProperties(props:Dynamic):Void
```

Loads the saved properties.

### shouldShowPreview

```haxe
function shouldShowPreview():Bool
```

Tells if the preview is shown.

### canHavePreview

```haxe
function canHavePreview():Bool
```

Tells if the node can have a preview. Returns `true` by default.

### saveProperties

```haxe
function saveProperties():Dynamic
```

Returns the properties to save: the `@prop` fields and the default values.

### getHTML _(editor (js) only)_

```haxe
function getHTML(width:Float, config:hide.Config):Array<hide.Element>
```

Returns the elements editing the properties of the node (editor only).
