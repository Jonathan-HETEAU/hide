# hrt.shgraph.Parameter

**typedef** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

A parameter of a shader graph: a shader parameter editable in the materials.

## Fields

### variable

```haxe
var ?variable:Null<hxsl.TVar>
```

The shader variable.

### type

```haxe
var type:hxsl.Type
```

The type.

### name

```haxe
var name:String
```

The name.

### min

```haxe
var ?min:Null<Float>
```

The minimum value in the editor.

### max

```haxe
var ?max:Null<Float>
```

The maximum value in the editor.

### internal

```haxe
var ?internal:Null<Bool>
```

Tells if the parameter is hidden in the material properties.

### index

```haxe
var index:Int
```

The display order.

### id

```haxe
var ?id:Null<Int>
```

The id.

### defaultValue

```haxe
var defaultValue:Dynamic
```

The default value.
