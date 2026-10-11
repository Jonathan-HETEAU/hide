# hide.comp.TreeItemData

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.FancyTree` · source [`hide_js/hide/comp/FancyTree.hx`](../../../../../hide_js/hide/comp/FancyTree.hx) · available on editor (js)

Type parameters: `<TreeItem>`

The internal data of a tree item.

## Fields

### uniqueName

```haxe
var uniqueName:String
```

The unique name of the item, used to save the open state.

### searchRanges

```haxe
var ?searchRanges:Null<SearchRanges>
```

The ranges of the name matching the search.

### parent

```haxe
var parent:TreeItemData<hide.comp.TreeItemData.TreeItem>
```

The parent item, or null for a root.

### nameCache

```haxe
var nameCache:String
```

The last displayed name.

### name

```haxe
var name:String
```

The item name.

### item

```haxe
var item:hide.comp.TreeItemData.TreeItem
```

The item.

### identifier

```haxe
var identifier:String
```

The identifier of the item, see `FancyTree.getIdentifier`.

### iconCache

```haxe
var ?iconCache:Null<String>
```

The last displayed icon.

### filterState

```haxe
var filterState:FilterFlags
```

The search state.

### element

```haxe
var element:js.html.Element
```

The element of the item.

### depth

```haxe
var depth:Int
```

The depth in the tree.

### children

```haxe
var children:Array<TreeItemData<hide.comp.TreeItemData.TreeItem>>
```

The child items, or null if not loaded.

### buttons

```haxe
var ?buttons:Null<Array<{ iconCache:String, element:js.html.Element, button:TreeButton<hide.comp.TreeItemData.TreeItem> }>>
```

The buttons of the item.
