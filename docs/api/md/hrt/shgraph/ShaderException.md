# hrt.shgraph.ShaderException

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderException.hx`](../../../../../hrt/shgraph/ShaderException.hx)

An error of a node of a shader graph.

## Constructor

### new

```haxe
function new(msg:String, idBox:Int):Void
```

Creates the error.

## Static methods

### t

```haxe
static function t(msg:String, idBox:Int):Dynamic
```

Throws a `ShaderException`.

## Variables

### msg

```haxe
var msg:String
```

The message.

### idBox

```haxe
var idBox:Int
```

The id of the node.

## Methods

### toString

```haxe
function toString():String
```

Returns the message and the node id.
