# hide.comp.ResizablePanel

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ResizablePanel.hx`](../../../../../hide_js/hide/comp/ResizablePanel.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A panel resized with a splitter. Its size is saved in the display state.

## Constructor

### new

```haxe
function new(direction:LayoutDirection, element:hide.Element, ?splitterPosition:SplitterPosition = Before):Void
```

Makes an element a resizable panel.

## Variables

### layoutDirection

```haxe
var layoutDirection(default, set):LayoutDirection
```

The direction the panel is resized in.

## Methods

### setSize

```haxe
function setSize(?newSize:Int):Void
```

Sets the size (by default the saved one), clamped to the CSS min and max sizes.

### onBeforeResize

```haxe
dynamic function onBeforeResize():Void
```

Called before a resize.

### onResize

```haxe
dynamic function onResize():Void
```

Called after a resize.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
