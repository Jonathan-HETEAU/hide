# hide.comp.FancyArray

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FancyArray.hx`](../../../../../hide_js/hide/comp/FancyArray.hx) · available on editor (js)

Type parameters: `<T>`

Extends: [`hide.comp.Component`](Component.md)

A list component of collapsible items that can be added, removed, renamed and reordered by drag and drop.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?e:Null<hide.Element>, name:String, displayKey:String):Void
```

Creates a list. `displayKey` saves the expanded states.

## Variables

### reorderItem

```haxe
var reorderItem:(oldIndex:Int, newIndex:Int) -> Void
```

Moves an item. If left null, the items can't be reordered.

### insertItem

```haxe
var insertItem:(index:Int) -> Void
```

If left null, no item cannot be added to the list

### removeItem

```haxe
var removeItem:(index:Int) -> Void
```

If left null, the items cannot be removed from the list

### setItemName

```haxe
var setItemName:(item:hide.comp.FancyArray.T, name:String) -> Void
```

If left null, the item name is read only

### getItemContent

```haxe
var getItemContent:(item:hide.comp.FancyArray.T) -> hide.Element
```

If left null, or if the function returns null, the item cannot be open

### customizeHeader

```haxe
var customizeHeader:(item:hide.comp.FancyArray.T, header:hide.Element) -> Void
```

If set, the function will be called after the header element is created so the user could customize it's appearence
like adding icons or type information

## Methods

### getDragKeyName

```haxe
function getDragKeyName():String
```

Returns the drag data key of the list items.

### getDragIndex

```haxe
function getDragIndex(e:js.html.DragEvent):Null<Int>
```

Check if the given drag event comes from this FancyArray,
and if that's the case, returns the relevant Item index that
was dragged from this array

### toggleItem

```haxe
function toggleItem(index:Int, ?forceState:Bool):Void
```

Expands or collapses an item.

### refresh

```haxe
function refresh():Void
```

Rebuilds the list.

### getDropdownMenu

```haxe
function getDropdownMenu(index:Int):Array<hrt.ui.MenuItem>
```

Returns the menu of an item.

### reveal

```haxe
function reveal(index:Int):Void
```

Expands an item and collapses the others.

### editTitle

```haxe
function editTitle(index:Int):Void
```

Starts editing the name of an item.

### getItems

```haxe
dynamic function getItems():Array<hide.comp.FancyArray.T>
```

Returns the items. Default is none.

### getItemName

```haxe
dynamic function getItemName(item:hide.comp.FancyArray.T):String
```

Returns the name of an item.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
