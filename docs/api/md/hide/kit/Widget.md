# hide.kit.Widget

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Widget.hx`](../../../../../hide/kit/Widget.hx) · available on editor (js)

Type parameters: `<ValueType>`

Extends: [`hide.kit.Element`](Element.md)

Subclasses: [`hide.kit.Bitflag`](Bitflag.md), [`hide.kit.Category`](Category.md), [`hide.kit.Checkbox`](Checkbox.md), [`hide.kit.Color`](Color.md), [`hide.kit.File`](File.md), [`hide.kit.Gradient`](Gradient.md), [`hide.kit.Input`](Input.md), [`hide.kit.List`](List.md), [`hide.kit.Matlib`](Matlib.md), [`hide.kit.Object3dRef`](Object3dRef.md), [`hide.kit.Select`](Select.md), [`hide.kit.Slider`](Slider.md), [`hide.kit.Texture`](Texture.md)

Base class for all hide elements that manipulate a Value, like sliders, inputs etc...

## Variables

### label

```haxe
var label(default, set):String
```

The label.

### value

```haxe
var value(get, set):hide.kit.Widget.ValueType
```

The edited value.

### defaultValue

```haxe
var defaultValue:hide.kit.Widget.ValueType
```

Value that will be set if the user use the "reset to default value" feature

### labelColor

```haxe
var labelColor(default, set):KitColor
```

The color of the label.

### noUndo

```haxe
var noUndo:Bool
```

If set, modifying the value don't save an undo step (use ctx.recordUndo to handle that yourself))

## Methods

### onValueChange

```haxe
dynamic function onValueChange(temporaryEdit:Bool):Void
```

Called when value has been changed by the user. Not called when undo/redoing

### refreshFields

```haxe
override function refreshFields():Void
```

## Inherited members

- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
