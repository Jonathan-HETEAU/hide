# hide.kit.Color

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Color.hx`](../../../../../hide/kit/Color.hx) · available on editor (js)

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

A color picker, editing an integer (or a vector or array with `vec` or `arr`).

## Constructor

### new

```haxe
function new(parent:Element, id:String):Void
```

## Variables

### alpha

```haxe
var alpha:Bool
```

Edits the alpha.

### vec

```haxe
var vec:Bool
```

If the input is an h3d.Vector

### arr

```haxe
var arr:Bool
```

If the input is an Array<Float>

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
