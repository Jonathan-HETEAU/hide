# hide.comp.DetachablePanel

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/DetachablePanel.hx`](../../../../../hide_js/hide/comp/DetachablePanel.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A panel that can be detached from the layout and floated over the view, then moved and resized.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?el:hide.Element):Void
```

Creates the panel.

## Variables

### defaultState

```haxe
var defaultState:{ width:String, top:String, right:String, left:String, bottom:String }
```

The CSS position of the detached panel by default.

### minWidth

```haxe
var minWidth:Int
```

The minimum width of the detached panel.

### minBottom

```haxe
var minBottom:Int
```

Not used by the panel.

## Methods

### resetLayout

```haxe
function resetLayout():Void
```

Restores the default position of the detached panel.

### setDetached

```haxe
function setDetached(val:Bool):Void
```

Detaches the panel, or puts it back in the layout.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
