# hrt.shgraph.ShaderDefInput

**enum** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.SgHxslVar` · source [`hrt/shgraph/SgHxslVar.hx`](../../../../../hrt/shgraph/SgHxslVar.hx)

The default value of a node input.

## Constructors

### NoDefault

```haxe
NoDefault
```

No default value: the input must be connected.

### Var

```haxe
Var(name:String)
```

A global variable.

### Const

```haxe
Const(intialValue:Float)
```

A float constant.

### ConstBool

```haxe
ConstBool(initialValue:Bool)
```

A boolean constant.
