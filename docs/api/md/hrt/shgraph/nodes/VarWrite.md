# hrt.shgraph.nodes.VarWrite

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/VarWrite.hx`](../../../../../../hrt/shgraph/nodes/VarWrite.hx)

Extends: [`hrt.shgraph.nodes.ShaderVar`](ShaderVar.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Var Write" (Variables): write a value to a local variable.

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

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

## Inherited members

- from [`hrt.shgraph.nodes.ShaderVar`](ShaderVar.md): `varId`, `getInfo`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
