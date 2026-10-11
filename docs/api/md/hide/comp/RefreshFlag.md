# hide.comp.RefreshFlag

**enum** · package [`hide.comp`](README.md) · module `hide.comp.FancyTree` · source [`hide_js/hide/comp/FancyTree.hx`](../../../../../hide_js/hide/comp/FancyTree.hx) · available on editor (js)

What a tree refresh must update.

## Constructors

### Flat

```haxe
Flat
```

Rebuilds the list of the shown items.

### Search

```haxe
Search
```

Applies the search filter again (implies `Flat`).

### FocusCurrent

```haxe
FocusCurrent
```

Scrolls to the current item.

### RegenHeader

```haxe
RegenHeader
```

Regenerates the name and icon of the items.
