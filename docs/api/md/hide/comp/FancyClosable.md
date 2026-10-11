# hide.comp.FancyClosable

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FancyClosable.hx`](../../../../../hide_js/hide/comp/FancyClosable.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A container that is hidden by default and that can appear scrolling down from the top,
like for a search bar

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?target:Null<hide.Element>):Void
```

Creates the container, in `target` if set.

## Methods

### onOpen

```haxe
dynamic function onOpen():Void
```

Called when the container opens.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the container closes.

### toggleOpen

```haxe
function toggleOpen(?force:Bool):Void
```

Opens or closes the container (toggles if `force` is null).

### isOpen

```haxe
function isOpen():Bool
```

Tells if the container is shown.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
