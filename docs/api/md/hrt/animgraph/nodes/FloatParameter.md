# hrt.animgraph.nodes.FloatParameter

**class** · package [`hrt.animgraph.nodes`](README.md) · source [`hrt/animgraph/nodes/FloatParameter.hx`](../../../../../../hrt/animgraph/nodes/FloatParameter.hx)

Extends: [`hrt.animgraph.Node`](../Node.md)

Outputs the value of a parameter of the graph.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### parameter

```haxe
var parameter:hrt.animgraph.Parameter
```

The parameter.

## Methods

### canCreateManually _(editor (js) only)_

```haxe
override function canCreateManually():Bool
```

### getOutputNameOverride _(editor (js) only)_

```haxe
override function getOutputNameOverride(name:String):String
```

### tick

```haxe
override function tick(dt:Float):Void
```

### getInputs

```haxe
override function getInputs():Array<hrt.animgraph.NodeInputInfo>
```

### getOutputs

```haxe
override function getOutputs():Array<hrt.animgraph.NodeOutputInfo>
```

### getDisplayName _(editor (js) only)_

```haxe
override function getDisplayName():String
```

## Inherited members

- from [`hrt.animgraph.Node`](../Node.md): `x`, `y`, `id`, `inputEdges`, `tick`, `resetSmoothedValues`, `serializeToDynamic`, `getInputs`, `getOutputs`, `editor`, `getAnimEditor`, `getSize`, `getDisplayName`, `canCreateManually`, `getInfo`, `getOutputNameOverride`, `getPropertiesHTML`, `getPos`, `setPos`
