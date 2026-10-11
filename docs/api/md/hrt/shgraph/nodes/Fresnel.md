# hrt.shgraph.nodes.Fresnel

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Fresnel.hx`](../../../../../../hrt/shgraph/nodes/Fresnel.hx)

Extends: [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Fresnel" (Math): fresnel input.
Inputs: `rgba`, `worldPosition`, `normals`, `color`, `bias` (default `0.2`), `scale` (default `1.0`), `power` (default `1.0`), `totalAlpha` (default `1.0`), `fresnalAlpha` (default `1.0`), `cameraPosition` (default `"camera.position"`).
Outputs: `output`.

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### _variablesInfos

```haxe
static var _variablesInfos:Map<Int, hrt.shgraph.SgHxslVar>
```

## Methods

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md): `getInputs`, `getOutputs`, `generate`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
