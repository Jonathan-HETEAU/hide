# hrt.shgraph.ShaderCustomGlobal

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderCustomGlobal.hx`](../../../../../hrt/shgraph/ShaderCustomGlobal.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

The shader graph node "Custom Global" (Input): reads a shader global by name.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### name

```haxe
var name:String
```

The name of the global (`vec4(0, 0, 0, 1)` if empty).

### type

```haxe
var type:String
```

The type of the global: `vec4`, `vec3`, `vec2`, `float`, `int`, `bool` or `sampler`.

## Methods

### getOutputs

```haxe
override function getOutputs():Array<OutputInfo>
```

### generate

```haxe
override function generate(ctx:NodeGenContext):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
