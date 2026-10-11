# hide.comp.TreeButton

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.FancyTree` · source [`hide_js/hide/comp/FancyTree.hx`](../../../../../hide_js/hide/comp/FancyTree.hx) · available on editor (js)

Type parameters: `<TreeItem>`

A button shown on the tree items.

## Fields

### getIcon

```haxe
var getIcon:() -> String
```

Return a html string of the icon content to display in the button.
Called each time the tree is refreshed.

### forceVisiblity

```haxe
var ?forceVisiblity:Null<() -> Bool>
```

If set, the function is called to determine if the button should be visible
event when the item is not hovered

### click

```haxe
var click:() -> Void
```

Called when the button is clicked.
