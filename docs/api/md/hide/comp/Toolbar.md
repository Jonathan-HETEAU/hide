# hide.comp.Toolbar

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Toolbar.hx`](../../../../../hide_js/hide/comp/Toolbar.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A toolbar component of buttons, toggles, sliders, colors, selects and menus, in groups.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?el:hide.Element):Void
```

Creates an empty toolbar.

## Methods

### clear

```haxe
function clear():Void
```

Removes all the tools.

### addSeparator

```haxe
function addSeparator():Void
```

Starts a new group of tools.

### addButton

```haxe
function addButton(icon:String, ?label:String, ?onClick:() -> Void, ?rightClick:() -> Void):js.jquery.JQuery
```

Adds a button.

### addToggle

```haxe
function addToggle(id:String, icon:String, ?title:String, ?label:String, ?onToggle:() -> Void, ?defValue:Bool = false, ?toggledIcon:String, ?saveToggleState:Bool = true, ?canBeUntoggled:Bool = true):ToolToggle
```

Adds a toggle button. Its state is saved in the config as `sceneeditor.<id>` if `saveToggleState`.

### addColor

```haxe
function addColor(label:String, onChange:() -> Void, ?alpha:Bool, ?defValue:Int = 0):ColorBox
```

Adds a color box. Its value is saved in the display state.

### addSelect

```haxe
function addSelect(icon:String, ?label:String, ?saveSearchKey:String):ToolSelect<addSelect.T>
```

Adds a select with a searchable dropdown. `saveSearchKey` remembers the search.

### addMenu

```haxe
function addMenu(icon:String, label:String):ToolMenu<addMenu.T>
```

Adds a dropdown menu.

### addRange

```haxe
function addRange(label:String, onChange:() -> Void, ?defValue:Float = 0., ?min:Float = 0., ?max:Float = 1., ?step:Float, ?className:String):Range
```

Adds a slider.

### addPopup

```haxe
function addPopup(icon:String, title:String, open:() -> Popup, ?rightClick:() -> Void):Void
```

Adds a button opening a popup, if it is not already open.

### makeToolbar

```haxe
function makeToolbar(toolsDefs:Array<ToolDef>, ?config:hide.Config, ?keys:hide.ui.Keys):Void
```

Adds tools from definitions. The shortcuts are read from the `key.sceneeditor.<id>` config entries and registered in `keys`.

### refreshToggles

```haxe
function refreshToggles():Void
```

Refreshes the toggles.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
