# hide.kit.Slider

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Slider.hx`](../../../../../hide/kit/Slider.hx) · available on editor (js)

Type parameters: `<T>`

Extends: [`hide.kit.Widget`](Widget.md) → [`hide.kit.Element`](Element.md)

Subclasses: [`hide.kit.Range`](Range.md)

A number slider.

## Constructor

### new

```haxe
function new(parent:Element, id:String):Void
```

## Variables

### min

```haxe
var min(default, set):Null<hide.kit.Slider.T>
```

If set, the slider won't go bellow the given value

### max

```haxe
var max(default, set):Null<hide.kit.Slider.T>
```

If set, the slider won't go above the given value

### step

```haxe
var step:Null<hide.kit.Slider.T>
```

Override the default step for editing the curve. Note that if min and max are set the step will be calculated accordingly, but setting
this will override the automatically calculated value.
The step basically control how much each value is rounded each time the slider is moved. Note that at the moment,
values pasted from the clipboard or manually entered by the user using the keyboard are allowed to bypass the step value.

### decimals

```haxe
var decimals:Null<Int>
```

If set, value will be rounded at this number of decimals

### exp

```haxe
var exp:Bool
```

If set, the slider will use an exponential curve (e^x) for editing values.

### poly

```haxe
var poly:Dynamic
```

If set, the slider will use a polynomial curve (x^n) for editing values.
if true, n will be equal to 2, if set to a float, n will be equal to that float instead

### wrap

```haxe
var wrap:Bool
```

If true, when the user reaches the min or max value, the value will wrap to the max / min value respectively

### int

```haxe
var int:Bool
```

If set, the value of this slider will be rounded to the nearest int

### unit

```haxe
var unit:String
```

If set, a unit will be displayed along the value like this "10.0 m/s"

## Inherited members

- from [`hide.kit.Widget`](Widget.md): `label`, `value`, `defaultValue`, `labelColor`, `noUndo`, `onValueChange`, `refreshFields`
- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
