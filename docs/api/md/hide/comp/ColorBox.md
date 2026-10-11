# hide.comp.ColorBox

**class** · package [`hide.comp`](README.md) · module `hide.comp.ColorPicker` · source [`hide_js/hide/comp/ColorPicker.hx`](../../../../../hide_js/hide/comp/ColorPicker.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Displays a color with its alpha component. Can open a color picker on click.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?root:Null<hide.Element>, inIsPickerEnabled:Bool, ?canEditAlpha:Bool = false, ?fieldName:String):Void
```

Creates a color box. `root` gives the attributes of the element.

## Variables

### picker

```haxe
var picker:ColorPicker
```

The open color picker, or null.

### isPickerEnabled

```haxe
var isPickerEnabled:Bool
```

Opens a color picker on click.

### value

```haxe
var value(get, set):Int
```

The color, as RGB or ARGB if the alpha can be edited.

## Methods

### isPickerOpen

```haxe
function isPickerOpen():Bool
```

Tells if the color picker is open.

### onChange

```haxe
dynamic function onChange(isDragging:Bool):Void
```

Called when the color changes. `isDragging` is true during a drag.

### onPickerOpen

```haxe
dynamic function onPickerOpen():Void
```

Called when the color picker opens.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
