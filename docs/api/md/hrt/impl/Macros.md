# hrt.impl.Macros

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/Macros.hx`](../../../../../hrt/impl/Macros.hx)

Macros and helpers for the serialization of enums.

## Static methods

### enumOrNullByName

```haxe
static function enumOrNullByName(e:Enum<enumOrNullByName.T>, constr:String, ?params:Array<Dynamic>):enumOrNullByName.T
```

Returns the enum value of a name, or the first value of the enum if invalid.

### serializeValue _(runtime (hl) only)_

```haxe
static function serializeValue(val:Dynamic):Dynamic
```

Returns the serializable value of a field containing enums.

### fixupEnumUnserialise _(runtime (hl) only)_

```haxe
static function fixupEnumUnserialise(original:Dynamic, val:Dynamic):Dynamic
```

Restores the enums of an unserialized field.

### deleteField _(runtime (hl) only)_

```haxe
static function deleteField(value:Dynamic):Dynamic
```

Deletes a field of an object: `deleteField(obj.field)`.
