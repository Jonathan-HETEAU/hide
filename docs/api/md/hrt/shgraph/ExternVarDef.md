# hrt.shgraph.ExternVarDef

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.ShaderGraph` · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

An external variable of the generated shader.

## Constructor

### new

```haxe
function new(v:hxsl.TVar, defValue:Dynamic, __init__:hxsl.TExpr, ?paramIndex:Null<Int>):Void
```

- **param** `paramIndex` The index of the parameter, or `null`.
- **param** `defValue` The default value.
- **param** `v` The variable.

## Variables

### v

```haxe
var v:hxsl.TVar
```

The variable.

### defValue

```haxe
var defValue:Dynamic
```

The default value.

### __init__

```haxe
var __init__:hxsl.TExpr
```

### paramIndex

```haxe
var paramIndex:Null<Int>
```

The index of the parameter, or `null`.
