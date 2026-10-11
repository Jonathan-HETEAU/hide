# hide.comp.ToolType

**enum** · package [`hide.comp`](README.md) · module `hide.comp.Toolbar` · source [`hide_js/hide/comp/Toolbar.hx`](../../../../../hide_js/hide/comp/Toolbar.hx) · available on editor (js)

The kind of a toolbar tool.

## Constructors

### Button

```haxe
Button(click:() -> Void)
```

A button.

### Toggle

```haxe
Toggle(toggle:() -> Void)
```

A toggle button.

### Range

```haxe
Range(onChange:() -> Void)
```

A slider.

### Color

```haxe
Color(onChange:() -> Void)
```

A color box.

### Menu

```haxe
Menu(items:Array<hrt.ui.MenuItem>)
```

A dropdown menu.

### Popup

```haxe
Popup(click:() -> Popup)
```

A button opening a popup, created by `click`.

### Separator

```haxe
Separator
```

Starts a new group of tools.
