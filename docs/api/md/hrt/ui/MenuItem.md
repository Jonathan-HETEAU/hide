# hrt.ui.MenuItem

**typedef** · package [`hrt.ui`](README.md) · module `hrt.ui.HuiMenu` · source [`hrt/ui/HuiMenu.hx`](../../../../../hrt/ui/HuiMenu.hx)

An item of a menu.

## Fields

### tooltip

```haxe
var ?tooltip:Null<String>
```

The tooltip.

### stayOpen

```haxe
var ?stayOpen:Null<Bool>
```

Keeps the menu open when the item is clicked.

### radio

```haxe
var ?radio:Null<() -> Bool>
```

Returns if the item is selected, shown as a radio button instead of a check mark.

### menu

```haxe
var ?menu:Null<Array<MenuItem>>
```

The sub menu items.

### label

```haxe
var ?label:Null<String>
```

The label.

### keys

```haxe
var ?keys:Null<String>
```

The keyboard shortcut displayed.

### isSeparator

```haxe
var ?isSeparator:Null<Bool>
```

Makes a separator.

### icon

```haxe
var ?icon:Null<MenuIcon>
```

The icon.

### enabled

```haxe
var ?enabled:Null<Bool>
```

Enables the item.

### color

```haxe
var ?color:Null<Int>
```

The color.

### click

```haxe
var ?click:Null<() -> Void>
```

Called when the item is clicked.

### checked

```haxe
var ?checked:Null<Bool>
```

Shows a check mark.
