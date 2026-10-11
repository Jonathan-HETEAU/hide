# hrt.prefab.PrefabFieldType

**enum** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Macros` · source [`hrt/prefab/Macros.hx`](../../../../../hrt/prefab/Macros.hx)

The type of a serialized prefab field.

## Constructors

### PInt

```haxe
PInt
```

An integer.

### PFloat

```haxe
PFloat
```

A float.

### PBool

```haxe
PBool
```

A boolean.

### PString

```haxe
PString
```

A string.

### PEnum

```haxe
PEnum(name:String)
```

An enum.

### PArray

```haxe
PArray(k:PrefabFieldType)
```

An array.

### PUnknown

```haxe
PUnknown
```

Another type.

### PDynamic

```haxe
PDynamic
```

A dynamic value.
