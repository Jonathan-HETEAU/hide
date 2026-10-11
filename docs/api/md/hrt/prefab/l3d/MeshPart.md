# hrt.prefab.l3d.MeshPart

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.MeshGenerator` · source [`hrt/prefab/l3d/MeshGenerator.hx`](../../../../../../hrt/prefab/l3d/MeshGenerator.hx)

A part of a `MeshGenerator`: a model attached to a socket of its parent part.

## Constructor

### new

```haxe
function new():Void
```

Creates a part.

## Variables

### socket

```haxe
var socket:Socket
```

The socket of the parent part.

### meshPath

```haxe
var meshPath:String
```

The path of the model, or `null`.

### offset

```haxe
var offset:h3d.Vector
```

The position offset.

### enable

```haxe
var enable:Bool
```

Enables the part.

### childParts

```haxe
var childParts:Array<MeshPart>
```

The parts attached to this part.

### previewPos _(editor (js) only)_

```haxe
var previewPos:Bool
```

Shows the socket position (editor only).

## Methods

### clone

```haxe
function clone():MeshPart
```

Returns a copy of the part (the children list is copied, reversed).

### loadFrom

```haxe
function loadFrom(mp:MeshPart):Void
```

Copies another part.

### save

```haxe
function save():Dynamic
```

Returns the serialized part.

### load

```haxe
function load(o:Dynamic):Void
```

Loads a serialized part.

### isRoot

```haxe
function isRoot():Bool
```

Tells if the part is the root (socket type `Root`).

### getSocketFullName

```haxe
function getSocketFullName():String
```

Returns the type and name of the socket.
