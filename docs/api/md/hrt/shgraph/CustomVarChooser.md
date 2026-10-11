# hrt.shgraph.CustomVarChooser

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/CustomVarChooser.hx`](../../../../../hrt/shgraph/CustomVarChooser.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../../hide/comp/Component.md)

A component choosing the name and type of a custom variable (editor only).

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?initialName:String, ?initialType:hxsl.Type, onChange:() -> Void):Void
```

Creates the component. `onChange` is called with the new variable.

## Variables

### variable

```haxe
var variable:hxsl.TVar
```

The variable.

## Methods

### show

```haxe
function show():Void
```

Shows the component.

### hide

```haxe
function hide():Void
```

Hides the component.

## Inherited members

- from [`hide.comp.Component`](../../hide/comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
