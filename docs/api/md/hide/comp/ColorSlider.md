# hide.comp.ColorSlider

**class** · package [`hide.comp`](README.md) · module `hide.comp.ColorPicker` · source [`hide_js/hide/comp/ColorPicker.hx`](../../../../../hide_js/hide/comp/ColorPicker.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A 1D or 2D color slider drawn on a canvas.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, width:Int, inHeight:Int, getColorAtPixelDisplay:(x:Int, y:Int, outVector:h3d.Vector4) -> Void, ?getColorAtPixel:(x:Int, y:Int, outVector:h3d.Vector4) -> Void, getCursorPos:() -> { y:Int, x:Int }):Void
```

Creates a slider. `getColorAtPixelDisplay` gives the displayed color of a pixel, and `getColorAtPixel` the picked one (by default the displayed one).

## Variables

### value

```haxe
var value(get, set):h3d.Vector4
```

The value of the slider, in its color mode.

### colorMode

```haxe
var colorMode:hrt.impl.ColorMode
```

The color mode of the slider.

### getCursorPos

```haxe
var getCursorPos:() -> { y:Int, x:Int }
```

Returns the cursor position for the current value.

## Methods

### onChange

```haxe
dynamic function onChange(isDragging:Bool):Void
```

Called when the value changes. `isDragging` is true during a drag.

### onRepaint

```haxe
dynamic function onRepaint():Void
```

Called after the slider is redrawn.

### repaint

```haxe
function repaint():Void
```

Redraws the slider.

### pickColorAtPixel

```haxe
function pickColorAtPixel(x:Int, y:Int):Void
```

Picks the value at a pixel.

### change

```haxe
function change(isDragging:Bool):Void
```

Calls `onChange`.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
