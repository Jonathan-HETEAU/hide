# hide.comp.ContextMenu

**class** · package [`hide.comp`](README.md) · source [`hide/comp/ContextMenu.hx`](../../../../../hide/comp/ContextMenu.hx) · available on editor (js)

A context menu, or a dropdown, made of `MenuItem`s, with an optional search.

## Constructor

### new

```haxe
function new(items:Array<hrt.ui.MenuItem>, ?parentElement:js.html.Element, ?parentMenu:ContextMenu, ?absPos:{ y:Float, x:Float }, ?options:Null<MenuOptions>):Void
```

The constructor is public for backward compatibility reasons. Prefer using the static "createXXX" functions to create a
context menu

## Static methods

### createFromEvent

```haxe
static function createFromEvent(e:js.html.MouseEvent, items:Array<hrt.ui.MenuItem>, ?options:Null<MenuOptions>):ContextMenu
```

Create a context menu from a js event. If you have a jQuery event, just `cast` it

### createFromPoint

```haxe
static function createFromPoint(x:Float, y:Float, items:Array<hrt.ui.MenuItem>, ?options:Null<MenuOptions>):ContextMenu
```

Create a context menu at the given x, y position in browser coordinates

### createDropdown

```haxe
static function createDropdown(element:js.html.Element, items:Array<hrt.ui.MenuItem>, ?options:Null<MenuOptions>):ContextMenu
```

Create a context menu under the given element. Will make the dropdown menu have the width of the element if option.autoWidth is set

## Methods

### onClose

```haxe
dynamic function onClose():Void
```

Called when the menu is closed.

### close

```haxe
function close():Void
```

Closes the menu.
