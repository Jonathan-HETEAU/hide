# hide.comp.SliderGroup

**class** · package [`hide.comp`](README.md) · module `hide.comp.ColorPicker` · source [`hide_js/hide/comp/ColorPicker.hx`](../../../../../hide_js/hide/comp/ColorPicker.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A group of color sliders sharing a value.

## Constructor

### new

```haxe
function new(parent:hide.Element, canEditAlpha:Bool, colorMode:hrt.impl.ColorMode):Void
```

Creates a group in a color mode.

## Variables

### sliders

```haxe
var sliders:Array<ColorSlider>
```

The sliders.

### canEditAlpha

```haxe
var canEditAlpha:Bool
```

The value has an alpha.

### value

```haxe
var value(get, set):Int
```

The color, as RGB or ARGB if the alpha can be edited.

### workValue

```haxe
var workValue:h3d.Vector4
```

The value in the color mode of the group.

## Methods

### setColorMode

```haxe
function setColorMode(colorMode:hrt.impl.ColorMode, value:Int):Void
```

Changes the color mode, keeping the color.

### onChange

```haxe
dynamic function onChange(isDragging:Bool):Void
```

Called when the value changes. `isDragging` is true during a drag.

### addSlider

```haxe
function addSlider(slider:ColorSlider):ColorSlider
```

Adds a slider to the group.

### repaint

```haxe
function repaint():Void
```

Updates the sliders with the value.

### change

```haxe
function change(isDragging:Bool):Void
```

Redraws the sliders and calls `onChange`.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
