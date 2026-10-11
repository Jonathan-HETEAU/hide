# hrt.animgraph.AnimGraphInstance

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/AnimGraphInstance.hx`](../../../../../hrt/animgraph/AnimGraphInstance.hx)

Extends: `h3d.anim.Animation`

A playing animation graph: a `h3d.anim.Animation` computing the bone transforms from the nodes.

## Constructor

### new

```haxe
function new(rootNode:hrt.animgraph.nodes.AnimNode, ?modelCache:h3d.prim.ModelCache, ?resolver:Null<AnimResolver>, name:String, framesCount:Int, sampling:Float):Void
```

Creates an instance playing `rootNode`.

## Methods

### setParam

```haxe
function setParam(name:String, value:Float):Void
```

Sets the value of a parameter.

### getParam

```haxe
function getParam(name:String):Null<Float>
```

Returns the value of a parameter, or `null` if missing.

### resetParam

```haxe
function resetParam(name:String):Void
```

Resets a parameter to its default value.

### resetParams

```haxe
function resetParams():Void
```

Resets the parameters to their default values.

### resetSmoothedValues

```haxe
function resetSmoothedValues():Void
```

Force nodes in the graph that smooth their input over time to match the
current value of their parameters

### getBones

```haxe
function getBones(ctx:hrt.animgraph.nodes.GetBoneContext):Map<String, Int>
```

Returns the bones animated by the graph, by name, and sets up the nodes.

### bind

```haxe
override function bind(base:h3d.scene.Object):Void
```

### sync

```haxe
override function sync(?decompose:Bool = false):Void
```

### update

```haxe
override function update(dt:Float):Float
```
