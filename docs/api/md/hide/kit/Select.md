# hide.kit.Select

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Select.hx`](../../../../../hide/kit/Select.hx) · available on editor (js)

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

A dropdown select.

## Constructor

### new

```haxe
function new(parent:Element, id:String, ?entries:EntriesOrStrings):Void
```

Creates the select.

## Variables

### entries

```haxe
var entries(default, null):Array<SelectEntry>
```

List of entries to be displayed in the select list. If field is set and the field is an enum or an abstract enum,
and if entries is left to null, then the entries will be automatically generated from the given enum (see `hide.kit.Macros.tryAutoSelect()`)

## Methods

### setEntries

```haxe
function setEntries(entries:EntriesOrStrings):Void
```

Sets the entries and clears the value.

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
