# hide.comp.PropsField

**class** · package [`hide.comp`](README.md) · module `hide.comp.PropsEditor` · source [`hide_js/hide/comp/PropsEditor.hx`](../../../../../hide_js/hide/comp/PropsEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

An input of a properties editor bound to a field of an object.

## Constructor

### new

```haxe
function new(props:PropsEditor, el:hide.Element, context:Null<Dynamic>):Void
```

Binds an input to a field of an object.

## Variables

### fname

```haxe
var fname:String
```

The field name (can be a path `a.b`).

## Methods

### onBeforeUndo

```haxe
dynamic function onBeforeUndo():Void
```

Called before a change is recorded in the undo history.

### onChange

```haxe
dynamic function onChange(wasUndo:Bool):Void
```

Called when the field changes. `wasUndo` is true on undo or redo.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
