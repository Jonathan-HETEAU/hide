# hrt.prefab.PropType

**enum** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Props` · source [`hrt/prefab/Props.hx`](../../../../../hrt/prefab/Props.hx)

The type of a property of a prefab (for the shader parameters and the generic properties editor).

## Constructors

### PInt

```haxe
PInt(?min:Int, ?max:Int)
```

An integer, in an optional range.

### PFloat

```haxe
PFloat(?min:Float, ?max:Float)
```

A float, in an optional range.

### PVec

```haxe
PVec(n:Int, ?min:Float, ?max:Float)
```

A vector of `n` components.

### PBool

```haxe
PBool
```

A boolean.

### PTexturePath

```haxe
PTexturePath
```

The path of a texture.

### PTexture

```haxe
PTexture
```

A texture.

### PGradient

```haxe
PGradient
```

A gradient.

### PColor

```haxe
PColor
```

A color.

### PChoice

```haxe
PChoice(choices:Array<String>)
```

One of the strings.

### PFile

```haxe
PFile(exts:Array<String>)
```

The path of a file with one of the extensions.

### PEnum

```haxe
PEnum(e:Enum<Dynamic>)
```

A value of the enum.

### PString

```haxe
PString(?maxLen:Int)
```

A string.

### PUnsupported

```haxe
PUnsupported(debug:String)
```

An unsupported type.
