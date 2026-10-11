# hrt.shgraph.nodes.ShaderVar

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/ShaderVar.hx`](../../../../../../hrt/shgraph/nodes/ShaderVar.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

Subclasses: [`hrt.shgraph.nodes.VarRead`](VarRead.md), [`hrt.shgraph.nodes.VarWrite`](VarWrite.md)

The base of the nodes reading or writing a local variable of the graph.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### varId

```haxe
var varId:Int
```

The index of the variable in `ShaderGraph.variables`.

## Methods

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
