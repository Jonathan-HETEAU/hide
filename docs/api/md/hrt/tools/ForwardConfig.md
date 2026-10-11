# hrt.tools.ForwardConfig

**typedef** · package [`hrt.tools`](README.md) · module `hrt.tools.Macros` · source [`hrt/tools/Macros.hx`](../../../../../hrt/tools/Macros.hx)

The options of `@:forwardDecls`.

## Fields

### whitelistMeta

```haxe
var ?whitelistMeta:Null<Array<String>>
```

Only forward members having one of these metadata (e.g. ":s").

### renames

```haxe
var ?renames:Null<Map<String, String>>
```

Forwarded member name => name in the host class, ignoring `prefix`.

### prefix

```haxe
var ?prefix:Null<String>
```

Prepended to forwarded names, with the member name's first letter uppercased.

### functions

```haxe
var ?functions:Null<Bool>
```

Also forward public non-generic methods, as function vars (writable for dynamic methods).

### forwardDepth

```haxe
var ?forwardDepth:Null<Class<Dynamic>>
```

Forward members of superclasses up to this class (inclusive). If null, only the var's class is forwarded.

### copyMeta

```haxe
var ?copyMeta:Null<Array<String>>
```

Metadata copied from forwarded members (e.g. ":p").
