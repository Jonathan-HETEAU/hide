# hide.comp.MultiRange

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/MultiRange.hx`](../../../../../hide_js/hide/comp/MultiRange.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Several sliders editing a vector of values, which can be linked to keep them uniform.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?root:Null<hide.Element>, num:Int, labels:Array<String>):Void
```

Creates `num` sliders with labels.

## Variables

### value

```haxe
var value(get, set):Array<Float>
```

The values.

## Methods

### onChange

```haxe
dynamic function onChange(tempChange:Bool):Void
```

Called when the values change. `tempChange` is true during a drag.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
