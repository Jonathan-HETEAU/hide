# hrt.shgraph.nodes.SubGraph

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/SubGraph.hx`](../../../../../../hrt/shgraph/nodes/SubGraph.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "SubGraph": include a subgraph.

## Variables

### pathShaderGraph

```haxe
var pathShaderGraph:String
```

The path of the included shader graph.

## Methods

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### getInputs

```haxe
override function getInputs():Array<hrt.shgraph.InputInfo>
```

### getOutputs

```haxe
override function getOutputs():Array<hrt.shgraph.OutputInfo>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
