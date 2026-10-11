# hrt.shgraph.nodes.VarRead

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/VarRead.hx`](../../../../../../hrt/shgraph/nodes/VarRead.hx)

Extends: [`hrt.shgraph.nodes.ShaderVar`](ShaderVar.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Var Read" (Variables): read a value from a local variable.

## Constructor

### new

```haxe
function new():Void
```

Creates the node.

## Methods

### getOutputs

```haxe
override function getOutputs():Array<hrt.shgraph.OutputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

## Inherited members

- from [`hrt.shgraph.nodes.ShaderVar`](ShaderVar.md): `varId`, `getInfo`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
