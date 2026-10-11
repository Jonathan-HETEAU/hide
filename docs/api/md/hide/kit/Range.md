# hide.kit.Range

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Range.hx`](../../../../../hide/kit/Range.hx) · available on editor (js)

Type parameters: `<T>`

Extends: [`hide.kit.Slider`](Slider.md) → [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

A slider with a minimum and maximum.

## Constructor

### new

```haxe
function new(parent:Element, id:String, min:Float, max:Float):Void
```

Creates a slider between `min` and `max`.

## Inherited members

- from [`hide.kit.Slider`](Slider.md): `min`, `max`, `step`, `decimals`, `exp`, `poly`, `wrap`, `int`, `unit`
- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
