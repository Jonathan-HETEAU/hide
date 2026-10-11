# hrt.shgraph.GlobalInfo

**typedef** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.Variables` · source [`hrt/shgraph/Variables.hx`](../../../../../hrt/shgraph/Variables.hx)

The definition of a global variable.

## Fields

### varkind

```haxe
var varkind:VariableKind
```

The kind of variable.

### type

```haxe
var type:hxsl.Type
```

The HXSL type.

### name

```haxe
var name:String
```

The HXSL name.

### _fullNameCache

```haxe
var ?_fullNameCache:Null<String>
```

The cached full path.

### __init__

```haxe
var ?__init__:Null<hxsl.TExpr>
```

The initial value, or `null`.
