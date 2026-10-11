# hide.comp.Tabs

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Tabs.hx`](../../../../../hide_js/hide/comp/Tabs.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A tabs component: each `.tab` child element is a tab.

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?el:hide.Element, ?bottomTabs:Bool = false):Void
```

Creates the tabs, with the headers at the bottom if `bottomTabs`.

## Variables

### currentTab

```haxe
var currentTab(default, set):hide.Element
```

The current tab element.

## Methods

### createTab

```haxe
function createTab(title:String, ?icon:String, ?group:Bool):js.jquery.JQuery
```

Adds a tab. A `group` tab is shown in a separate group.

### getHeader

```haxe
function getHeader(tab:hide.Element):Null<js.jquery.JQuery>
```

Returns the header of a tab, or null.

### allowMask

```haxe
function allowMask(scene:Scene):Void
```

Adds a button folding the tabs, resizing the scene.

### getTabs

```haxe
function getTabs():hide.Element
```

Returns the tab elements.

### getGroupTabs

```haxe
function getGroupTabs():hide.Element
```

Returns the group tab elements.

### onTabClick

```haxe
dynamic function onTabClick(index:Int):Void
```

Called when a tab header is clicked.

### onTabRightClick

```haxe
dynamic function onTabRightClick(index:Int):Void
```

Called when a tab header is right clicked.

### onTabChange

```haxe
dynamic function onTabChange(index:Int):Void
```

Called when the current tab changes.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
