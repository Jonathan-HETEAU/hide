# hide.comp.Dropdown

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Dropdown.hx`](../../../../../hide_js/hide/comp/Dropdown.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A dropdown list with a search filter.

## Constructor

### new

```haxe
function new(parent:hide.Element, options:Array<Choice>, currentValue:String, ?buildIcon:() -> hide.Element, ?detached:Bool = false):Void
```

Creates a dropdown of choices. `buildIcon` creates the icon of a choice. A `detached` dropdown is added to the view content and placed at `parent`.

## Variables

### ignoreIdInSearch

```haxe
var ignoreIdInSearch:Bool
```

Search won't filter based on id if this is true.

### filterInput

```haxe
var filterInput:hide.Element
```

The search input.

## Methods

### remove

```haxe
override function remove():Void
```

### onSelect

```haxe
dynamic function onSelect(val:String):Void
```

Called with the chosen value.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the dropdown closes.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
