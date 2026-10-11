# hrt.shgraph.nodes.AlphaPreview

**class** · package [`hrt.shgraph.nodes`](README.md) · module `hrt.shgraph.nodes.Preview` · source [`hrt/shgraph/nodes/Preview.hx`](../../../../../../hrt/shgraph/nodes/Preview.hx)

Extends: `hxsl.Shader`

Displays the transparency of a node preview on a checkerboard.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```
