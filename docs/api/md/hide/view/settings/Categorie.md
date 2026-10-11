# hide.view.settings.Categorie

**class** · package [`hide.view.settings`](README.md) · module `hide.view.settings.Settings` · source [`hide_js/hide/view/settings/Settings.hx`](../../../../../../hide_js/hide/view/settings/Settings.hx) · available on editor (js)

A category of a settings view.

## Constructor

### new

```haxe
function new(name:String):Void
```

Creates a category.

## Variables

### name

```haxe
var name:String
```

The name.

### element

```haxe
var element:hide.Element
```

The element of the settings of the category.

## Methods

### add

```haxe
function add(settingsName:String, editElement:hide.Element, value:Dynamic, ?onChange:() -> Void):Void
```

Adds a setting with its edit element. `onChange` is called with the new value.
