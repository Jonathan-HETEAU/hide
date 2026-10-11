# hide.comp.ColorPicker

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ColorPicker.hx`](../../../../../hide_js/hide/comp/ColorPicker.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

A color picker popup, with a saturation and value area, a hue slider, component sliders in several color modes and a hex code.

## Constructor

### new

```haxe
function new(?canEditAlpha:Bool = false, ?parent:Null<hide.Element>):Void
```

Creates a color picker popup.

## Variables

### value

```haxe
var value(get, set):Int
```

The color, as RGB or ARGB if the alpha can be edited.

### valueToARGB

```haxe
var valueToARGB:(value:h3d.Vector4, outColor:hrt.impl.Color) -> hrt.impl.Color
```

Converts a value to a color (HSV by default). Not used by the picker.

### ARGBToValue

```haxe
var ARGBToValue:(color:hrt.impl.Color, outVector:h3d.Vector4) -> h3d.Vector4
```

Converts a color to a value (HSV by default). Not used by the picker.

## Methods

### repaint

```haxe
function repaint():Void
```

Redraws the sliders and the color code.

### change

```haxe
function change(isDragging:Bool):Void
```

Redraws the picker and calls `onChange`.

### test

```haxe
function test():Void
```

Checks that the HSV and RGB conversions give back the same colors.

### onChange

```haxe
dynamic function onChange(isDragging:Bool):Void
```

Called when the color changes. `isDragging` is true during a drag.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
