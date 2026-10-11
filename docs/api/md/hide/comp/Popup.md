# hide.comp.Popup

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Popup.hx`](../../../../../hide_js/hide/comp/Popup.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Subclasses: [`hide.comp.CameraControllerEditor`](CameraControllerEditor.md), [`hide.comp.ColorPicker`](ColorPicker.md), [`hide.comp.CurvePopup`](CurvePopup.md), [`hide.comp.GradientEditor`](GradientEditor.md), [`hide.comp.HelpPopup`](HelpPopup.md), [`hide.comp.IconVisibilityPopup`](IconVisibilityPopup.md), [`hide.comp.RenderPropsPopup`](RenderPropsPopup.md), [`hide.comp.SnapSettingsPopup`](SnapSettingsPopup.md), [`hide.comp.ViewModePopup`](ViewModePopup.md), [`hide.comp.ViewportOverlaysPopup`](ViewportOverlaysPopup.md), [`hide.view.FiltersPopup`](../view/FiltersPopup.md)

A popup that closes when clicking outside of it. Useful for medium size editors that appear when clicking on an item.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?isSearchable:Bool = false):Void
```

Creates a popup, with a search bar if `isSearchable`.

## Variables

### anchor

```haxe
var anchor:hide.Element
```

The element the popup is placed at.

### offsetX

```haxe
var offsetX(default, set):Float
```

The horizontal offset from the anchor.

### offsetY

```haxe
var offsetY(default, set):Float
```

The vertical offset from the anchor.

### position

```haxe
var position(default, set):PopupPosition
```

Where the popup opens relative to the anchor.

### wasCancelled

```haxe
var wasCancelled:Bool
```

Indicates if the user cancelled the popup operation with ESC

## Methods

### open

```haxe
function open():Void
```

Shows the popup.

### onScroll

```haxe
function onScroll(e:js.html.MouseScrollEvent):Void
```

Places the popup again.

### onSearchChanged

```haxe
function onSearchChanged(searchBar:hide.Element):Void
```

Called when the search changes.

### close

```haxe
function close():Void
```

Closes the popup.

### onClose

```haxe
dynamic function onClose():Void
```

Called when the popup closes.

### canCloseOnClickOutside

```haxe
function canCloseOnClickOutside():Bool
```

Tells if a click outside closes the popup (true by default).

### onShouldCloseOnClick

```haxe
dynamic function onShouldCloseOnClick(clickEvent:js.html.Event):Bool
```

Tells if a click outside closes the popup (true by default).

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
