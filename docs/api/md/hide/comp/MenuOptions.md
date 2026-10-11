# hide.comp.MenuOptions

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.ContextMenu` · source [`hide/comp/ContextMenu.hx`](../../../../../hide/comp/ContextMenu.hx) · available on editor (js)

The options of a context menu.

## Fields

### widthOverride

```haxe
var ?widthOverride:Null<Int>
```

Forces the width of the first menu.

### search

```haxe
var ?search:Null<SearchMode>
```

The search mode (`Hidden` by default for the top level menus).

### rememberSearchKey

```haxe
var ?rememberSearchKey:Null<String>
```

If true, will save the search string to this key name

### placementWidth

```haxe
var ?placementWidth:Null<Int>
```

If this set, it will be used to place the element if it goes offscreen like so

       | - placementWidth - |
| --- your context menu --- |  <--

### placementHeight

```haxe
var ?placementHeight:Null<Int>
```

Like `placementWidth`, vertically.

### noIcons

```haxe
var ?noIcons:Null<Bool>
```

Set this to true if you have no icons/checkmarks in your menu and you want to hide the padding on the left of the entries names

### flat

```haxe
var ?flat:Null<Bool>
```

If true, the sub-menus will be inlined (like they are when the search is active)

### autoWidth

```haxe
var ?autoWidth:Null<Bool>
```

Used to automaticaly widthOverride based on context (see createDropdown)
