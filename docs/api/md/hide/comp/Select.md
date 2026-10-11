# hide.comp.Select

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Select.hx`](../../../../../hide_js/hide/comp/Select.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A searchable choice among a list, with copy and paste.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?root:js.jquery.JQuery, choices:Array<Choice>, ?isClearable:Bool = true):Void
```

Creates the choice. `isClearable` allows choosing nothing.

## Variables

### value

```haxe
var value(default, set):String
```

The id of the chosen item in the choices list.

## Methods

### onContextmenu

```haxe
dynamic function onContextmenu(e:js.jquery.Event):Void
```

Opens the context menu (copy, paste, clear).

### onChange

```haxe
dynamic function onChange(newId:String):Void
```

Called with the chosen id.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
