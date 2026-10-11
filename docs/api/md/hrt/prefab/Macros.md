# hrt.prefab.Macros

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Macros.hx`](../../../../../hrt/prefab/Macros.hx)

The macros of the prefabs: they generate the serialization (`@:s` fields), copy and clone code of the prefab classes (`buildPrefab`, `buildSerializable`).

## Static methods

### enumOrNullByName

```haxe
static function enumOrNullByName(e:Enum<enumOrNullByName.T>, constr:String, ?params:Array<Dynamic>, ?defValue:enumOrNullByName.T):enumOrNullByName.T
```

Returns the enum value of the constructor name, or `defValue` if invalid.

### getSerializableProps _(runtime (hl) only)_

```haxe
static function getSerializableProps():Dynamic
```

Returns the serializable fields of the current class.

### Cast _(runtime (hl) only)_

```haxe
static function Cast(e:Dynamic, typeToCast:Dynamic):Dynamic
```

Casts the value to the type (`Std.downcast`).

### deepCopyFromDynamic _(runtime (hl) only)_

```haxe
static function deepCopyFromDynamic(target:Dynamic, sourceExpr:Dynamic, defaultValue:Dynamic):Dynamic
```

Sets `target` to a deep copy of the dynamic value (or `defaultValue` if `null`), with code generated for its type.

### deepCopyFromOther _(runtime (hl) only)_

```haxe
static function deepCopyFromOther(target:Dynamic, sourceExpr:Dynamic, defaultValue:Dynamic):Dynamic
```

Sets `target` to a deep copy of a value of the same type (or `defaultValue` if `null`).

### deepCopyToDynamic _(runtime (hl) only)_

```haxe
static function deepCopyToDynamic(target:Dynamic, sourceExpr:Dynamic, defaultValue:Dynamic):Dynamic
```

Sets `target` to a dynamic deep copy of the value, for the serialization.
