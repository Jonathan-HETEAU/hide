# hide.comp.TextureChoice2

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/TextureChoice2.hx`](../../../../../hide_js/hide/comp/TextureChoice2.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Edits a texture value: a texture file or a gradient (with `TextureSelect2`).

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?root:hide.Element):Void
```

Creates the choice.

## Variables

### value

```haxe
var value(get, set):Any
```

The value: a texture path, or a gradient (`{type, data}`).

## Methods

### onValueChange

```haxe
dynamic function onValueChange():Void
```

Called when the value is set.

### rebuildUi

```haxe
function rebuildUi():Void
```

Rebuilds the inputs for the kind of value.

### set_value

```haxe
function set_value(value:Any):Any
```

### get_value

```haxe
function get_value():Any
```

### onChange

```haxe
dynamic function onChange(shouldUndo:Bool):Void
```

Called when the user changes the value. `shouldUndo` is false during a drag.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
