# hrt.tools.PathPart

**enum** · package [`hrt.tools`](README.md) · module `hrt.tools.CdbUtils` · source [`hrt/tools/CdbUtils.hx`](../../../../../hrt/tools/CdbUtils.hx)

A part of the path to a CastleDB cell.

## Constructors

### Id

```haxe
Id(idCol:String, name:String, ?targetCol:String)
```

A line by its id, in the column `targetCol`.

### Prop

```haxe
Prop(name:String)
```

A property.

### Line

```haxe
Line(lineNo:Int, ?targetCol:String)
```

A line by its index, in the column `targetCol`.

### Script

```haxe
Script(lineNo:Int)
```

A line of a script.
