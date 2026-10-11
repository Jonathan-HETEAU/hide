# hide.kit.List

**class** · package [`hide.kit`](README.md) · source [`hide/kit/List.hx`](../../../../../hide/kit/List.hx) · available on editor (js)

Type parameters: `<T>`

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

An editable list of items, with add, remove and reorder.

## Constructor

### new

```haxe
function new(parent:Element, id:String, makeLine:(header:Element, content:Element, item:hide.kit.List.T, index:Int) -> Void, createItem:() -> Dynamic):Void
```

Creates the list, building the items with `makeLine` and creating them with `createItem`.

## Variables

### noCollapse

```haxe
var noCollapse:Bool
```

Keeps the list open.

## Methods

### makeLine

```haxe
dynamic function makeLine(header:Element, content:Element, item:hide.kit.List.T, index:Int):Void
```

Builds the elements of an item.

### createItem

```haxe
dynamic function createItem():hide.kit.List.T
```

Returns a new item.

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
