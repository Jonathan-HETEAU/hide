# hide.comp.ToolDef

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.Toolbar` · source [`hide_js/hide/comp/Toolbar.hx`](../../../../../hide_js/hide/comp/Toolbar.hx) · available on editor (js)

The definition of a tool, for `Toolbar.makeToolbar`.

## Fields

### type

```haxe
var type:ToolType
```

The kind of tool.

### title

```haxe
var title:String
```

The tooltip.

### saveToggleState

```haxe
var ?saveToggleState:Null<Bool>
```

Saves the toggle state in the config (default true).

### rightClick

```haxe
var ?rightClick:Null<() -> Void>
```

Called on right click (buttons, toggles and popups).

### id

```haxe
var id:String
```

The tool id, used for the `key.sceneeditor.<id>` shortcut and the saved toggle state.

### iconStyle

```haxe
var ?iconStyle:Null<Dynamic>
```

CSS applied to the icon.

### icon

```haxe
var ?icon:Null<String>
```

The icon name.

### defaultValue

```haxe
var ?defaultValue:Null<Dynamic>
```

The default state of a toggle.
