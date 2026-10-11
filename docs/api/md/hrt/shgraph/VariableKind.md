# hrt.shgraph.VariableKind

**enum** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.Variables` · source [`hrt/shgraph/Variables.hx`](../../../../../hrt/shgraph/Variables.hx)

The kind of a global variable.

## Constructors

### KVar

```haxe
KVar(kind:hxsl.VarKind, ?parent:Global, ?def:Dynamic)
```

A HXSL variable of kind `kind`, in the struct `parent` if set, with the default value `def`.

### KSwizzle

```haxe
KSwizzle(global:Global, swiz:Array<hxsl.Component>)
```

Components of another global.
