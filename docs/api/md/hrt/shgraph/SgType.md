# hrt.shgraph.SgType

**enum** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

The type of an input or output of a shader graph node.

## Constructors

### SgFloat

```haxe
SgFloat(dimension:Int)
```

A float (`dimension` 1) or a vector of `dimension` floats.

### SgSampler

```haxe
SgSampler
```

A texture.

### SgInt

```haxe
SgInt
```

An integer.

### SgBool

```haxe
SgBool
```

A boolean.

### SgGeneric

```haxe
SgGeneric(id:Int, constraint:(newType:hxsl.Type, previousType:hxsl.Type) -> Null<hxsl.Type>)
```

All the generics in the same shader node with the same id unify to the
same type.

Constraint :
    newType : the type we are trying to constraint. If null the function should return previousType
    previousType : the type previously constraint to this generic.
    if both newType and previousType are null, the function should return the most generic type for the constraint
    return : null if the newType can't be constrained, or a type that can fit both new and previous types
