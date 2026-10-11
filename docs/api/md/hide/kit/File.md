# hide.kit.File

**class** · package [`hide.kit`](README.md) · source [`hide/kit/File.hx`](../../../../../hide/kit/File.hx) · available on editor (js)

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

A file selector.

## Constructor

### new

```haxe
function new(parent:Element, id:String):Void
```

## Variables

### type

```haxe
var type:String
```

The kind of file, a key of `types`.

### exts

```haxe
var exts:Array<String>
```

Override type with a custom list of extensions (without the ".")

## Methods

### onView

```haxe
dynamic function onView():Void
```

Called to open the file.

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
