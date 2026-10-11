# hide.comp.Params

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.FancyTree` · source [`hide_js/hide/comp/FancyTree.hx`](../../../../../hide_js/hide/comp/FancyTree.hx) · available on editor (js)

The options of a `FancyTree`.

## Fields

### search

```haxe
var ?search:Null<Bool>
```

Shows a search bar.

### saveDisplayKey

```haxe
var ?saveDisplayKey:Null<String>
```

The key to save the open state of the items.

### quickGoto

```haxe
var ?quickGoto:Null<Bool>
```

Typing a letter goes to the next item starting with it (default true).

### customScroll

```haxe
var ?customScroll:Null<js.html.Element>
```

The element to scroll, instead of the tree own scroll.
