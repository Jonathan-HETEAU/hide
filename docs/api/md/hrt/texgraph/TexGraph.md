# hrt.texgraph.TexGraph

**class** · package [`hrt.texgraph`](README.md) · source [`hrt/texgraph/TexGraph.hx`](../../../../../hrt/texgraph/TexGraph.hx)

Extends: [`hrt.prefab.Prefab`](../prefab/Prefab.md)

A texture made with nodes in the editor (`.texgraph` file): generates textures on the GPU.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static variables

### CURRENT_NODE_ID

```haxe
static var CURRENT_NODE_ID:Int
```

The next node id.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### cachedOutputs

```haxe
var cachedOutputs:Map<Int, Array<h3d.mat.Texture>>
```

The output textures of the nodes, by node id, from the last generation.

### nodes

```haxe
var nodes:Map<Int, TexNode>
```

The nodes, by id.

### outputHeight

```haxe
var outputHeight:Int
```

The default height of the textures.

### outputWidth

```haxe
var outputWidth:Int
```

The default width of the textures.

### outputFormat

```haxe
var outputFormat:hxd.PixelFormat
```

The default format of the textures.

## Methods

### saveToDynamic

```haxe
function saveToDynamic():Dynamic
```

Returns the serialized nodes and edges.

### saveToText

```haxe
function saveToText():String
```

Returns the serialized graph, as JSON.

### addEdge

```haxe
function addEdge(edge:Edge):Bool
```

Connects an output to an input, matching them by name if their ids changed. Returns `true`.

### removeEdge

```haxe
function removeEdge(idNode:Int, inputId:Int, ?update:Bool = true):Void
```

Disconnects an input.

### hasCycle

```haxe
function hasCycle():Bool
```

Tells if the graph has a cycle.

### canAddEdge

```haxe
function canAddEdge(edge:Edge):Bool
```

Tells if the edge can be added without creating a cycle.

### addNode

```haxe
function addNode(texNode:TexNode):Void
```

Adds a node.

### removeNode

```haxe
function removeNode(idNode:Int):Void
```

Removes a node.

### getOutputNodes

```haxe
function getOutputNodes():Array<hrt.texgraph.nodes.TexOutput>
```

Returns the output nodes.

### generate

```haxe
function generate():Map<String, h3d.mat.Texture>
```

Generates the textures, and returns the output textures by label.

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):TexGraph
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../prefab/Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
