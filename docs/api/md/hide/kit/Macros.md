# hide.kit.Macros

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Macros.hx`](../../../../../hide/kit/Macros.hx)

Builds the kit elements from the markup of `ctx.build`.

## Static methods

### camelToSpaceCase

```haxe
static function camelToSpaceCase(str:String):String
```

Returns a camel case name as words: `fooBar` becomes `Foo Bar`.

### makeTypePath

```haxe
static function makeTypePath(t:BaseType):Array<String>
```

Returns the type path of a type.

### testError _(runtime (hl) only)_

```haxe
static function testError(dml:Dynamic, contextObj:Dynamic, wantedErrorExpr:String):Dynamic
```

Used for unit tests to ensure that dml errors are correctly handled

### testNoError _(runtime (hl) only)_

```haxe
static function testNoError(dml:Dynamic, contextObj:Dynamic):Dynamic
```

Tests that a markup compiles (unit tests).

### tryAutoSelect _(runtime (hl) only)_

```haxe
static function tryAutoSelect(enumExpr:Dynamic, targetSelect:Dynamic):Dynamic
```

Fills the entries of a select from the values of an enum.
