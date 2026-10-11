# hide.kit.Category

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Category.hx`](../../../../../hide/kit/Category.hx) · available on editor (js)

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

A collapsible category, whose open state is saved.

## Constructor

### new

```haxe
function new(parent:Element, id:String, name:String):Void
```

Creates a category named `name`.

## Variables

### closed

```haxe
var closed:Bool
```

If this category should be closed by default

## Methods

### collapse

```haxe
override function collapse():Void
```

### toggleOpenState

```haxe
function toggleOpenState(?force:Bool):Void
```

Opens or closes the category (toggles if `force` is `null`).

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
