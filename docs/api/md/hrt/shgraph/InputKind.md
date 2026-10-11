# hrt.shgraph.InputKind

**enum** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderInput` · source [`hrt/shgraph/ShaderInput.hx`](../../../../../hrt/shgraph/ShaderInput.hx)

The kind of a `ShaderInput`.

## Constructors

### IGlobal

```haxe
IGlobal(g:Global)
```

A global variable.

### ICustom

```haxe
ICustom(gen:(ctx:NodeGenContext) -> hxsl.TExpr, t:hxsl.Type)
```

A custom expression of type `t`.
