# hide.comp.FancyTree

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FancyTree.hx`](../../../../../hide_js/hide/comp/FancyTree.hx) · available on editor (js)

Type parameters: `<TreeItem>`

Extends: [`hide.comp.Component`](Component.md)

A tree view component of items of any type, with lazy loading, search, multiple selection, renaming, buttons and drag and drop.
The items are given by the `getChildren`, `getName` and `getIcon` callbacks.

## Constructor

### new

```haxe
function new(parent:hide.Element, ?params:Null<Params>):Void
```

Creates a tree in `parent`.

## Static methods

### animateReveal

```haxe
static function animateReveal(element:js.html.Element, reveal:Bool, ?durationMs:Int = 75):Void
```

Animates the height of an element to show or hide it.

## Variables

### dragAndDropInterface

```haxe
var dragAndDropInterface:{ onDrop:(target:hide.comp.FancyTree.TreeItem, where:DropOperation, event:hide.tools.DragData) -> Void, onDragStart:(item:hide.comp.FancyTree.TreeItem, event:hide.tools.DragData) -> Bool, getItemDropFlags:(target:hide.comp.FancyTree.TreeItem, event:hide.tools.DragData) -> DropFlags }
```

Drag and drop interface.
Set this struct with all of it's function callback to handle drag and drop inside your tree.

### onNameChange

```haxe
var onNameChange:(item:hide.comp.FancyTree.TreeItem, newName:String) -> Void
```

Called when the user renamed the item via F2 / Context menu

## Methods

### getIcon

```haxe
dynamic function getIcon(item:hide.comp.FancyTree.TreeItem):String
```

To customise the icon of an element

### getName

```haxe
dynamic function getName(item:hide.comp.FancyTree.TreeItem):String
```

The display name of an item

### getUniqueName

```haxe
dynamic function getUniqueName(item:hide.comp.FancyTree.TreeItem):String
```

If items in the tree can have the same name, this function should return a unique name for each of them.
Used to save the state of the open folders in the tree

### onSelectionChanged

```haxe
dynamic function onSelectionChanged(enterKey:Bool):Void
```

Called when the selected items in the tree changed

### applyStyle

```haxe
dynamic function applyStyle(item:hide.comp.FancyTree.TreeItem, el:js.html.Element):Void
```

Used to change style of an element in the tree

### onDoubleClick

```haxe
dynamic function onDoubleClick(item:hide.comp.FancyTree.TreeItem):Void
```

Called when the user double click on an item

### getButtons

```haxe
dynamic function getButtons(item:hide.comp.FancyTree.TreeItem):Array<TreeButton<hide.comp.FancyTree.TreeItem>>
```

Returns the buttons of an item. Default is none.

### onSearch

```haxe
dynamic function onSearch():Void
```

Called when the search changes.

### onSearchEnd

```haxe
dynamic function onSearchEnd():Void
```

Called when the search is closed.

### onSelectionCleared

```haxe
dynamic function onSelectionCleared():Void
```

Called when the selection is cleared.

### onContextMenu

```haxe
dynamic function onContextMenu(item:hide.comp.FancyTree.TreeItem, event:js.html.MouseEvent):Void
```

Called when the user right click an item (or the background) of the tree.
`item` will be null if the background was clicked. Default is do nothing

### getChildren

```haxe
dynamic function getChildren(item:hide.comp.FancyTree.TreeItem):Array<hide.comp.FancyTree.TreeItem>
```

Called for each of your items in the tree. for the root elements, get called with null as a parameter

### getIdentifier

```haxe
dynamic function getIdentifier(item:hide.comp.FancyTree.TreeItem):String
```

Returns a string that allow an item in the tree to be uniquely identified.
Default to a path/of/the/item/name
Customize this if you have items that can share names

### hasChildren

```haxe
dynamic function hasChildren(item:hide.comp.FancyTree.TreeItem):Bool
```

Called to know if an item in the tree can be opened or has children. Default to calling getChildren and seeing if it returns false.
Set this function to optimise the initial loading of the tree if getChildren is expensive

### getSelectedItems

```haxe
function getSelectedItems():Array<hide.comp.FancyTree.TreeItem>
```

Returns the selected items.

### refreshItem

```haxe
function refreshItem(item:hide.comp.FancyTree.TreeItem):Void
```

Updates an item and its children.

### ensureVisible

```haxe
function ensureVisible(data:Dynamic):Void
```

Does nothing.

### rebuildTree

```haxe
function rebuildTree():Void
```

Reloads all the items.

### selectItem

```haxe
function selectItem(item:hide.comp.FancyTree.TreeItem, ?openSelf:Bool = false, ?clearPrevSelection:Bool = true):Void
```

Selects an item, opening its parents (and itself if `openSelf`).

### rename

```haxe
function rename(item:hide.comp.FancyTree.TreeItem):Void
```

Starts renaming an item. Does nothing if `onNameChange` is not set.

### moveCurrent

```haxe
function moveCurrent(delta:Int):Void
```

Moves the current item by `delta` shown items.

### invalidateChildren

```haxe
function invalidateChildren(item:hide.comp.FancyTree.TreeItem):Void
```

Reloads the children of an item.

### filterRec

```haxe
function filterRec(children:Array<TreeItemData<hide.comp.FancyTree.TreeItem>>, ?parentMatch:Bool = false):Bool
```

Applies the search to items. Returns true if one of them is visible.

### clearSelection

```haxe
function clearSelection():Void
```

Clears the selection.

### openItem

```haxe
function openItem(item:hide.comp.FancyTree.TreeItem, ?force:Bool):Void
```

Toggles an item open, or opens or closes it if `force` is set.

### collapseItem

```haxe
function collapseItem(item:hide.comp.FancyTree.TreeItem):Void
```

Closes an item and its children.

### queueRefresh

```haxe
function queueRefresh(?flag:RefreshFlag):Void
```

Refreshes the tree on the next frame, with a flag.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
