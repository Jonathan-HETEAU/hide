# hrt.shgraph.nodes.Reroute

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Reroute.hx`](../../../../../../hrt/shgraph/nodes/Reroute.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

Subclasses: [`hrt.shgraph.nodes.RerouteBool`](RerouteBool.md), [`hrt.shgraph.nodes.RerouteFloat`](RerouteFloat.md), [`hrt.shgraph.nodes.RerouteInt`](RerouteInt.md), [`hrt.shgraph.nodes.RerouteSampler`](RerouteSampler.md)

Base class for the reroute nodes : forward its input to its output unchanged.
Purely cosmetic, used to tidy up the graph. When the input is not connected,
the output is left null so the nodes downstream behave as if they were not connected either.

## Constructor

### new

```haxe
function new():Void
```

Creates the node.

## Methods

### getInputs

```haxe
override function getInputs():Array<hrt.shgraph.InputInfo>
```

### getOutputs

```haxe
override function getOutputs():Array<hrt.shgraph.OutputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### canHavePreview

```haxe
override function canHavePreview():Bool
```

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
