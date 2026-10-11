# hide.comp.GradientEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/GradientEditor.hx`](../../../../../hide_js/hide/comp/GradientEditor.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

A gradient editor popup: stops, colors, interpolation and resolution settings, and an optional prefab preview.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?editGradientSettings:Bool = true):Void
```

Creates the editor. `editGradientSettings` shows the settings of the gradient.

## Variables

### value

```haxe
var value(get, set):hrt.impl.GradientData
```

The gradient.

### keepPreviewAlive

```haxe
var keepPreviewAlive:Bool
```

Keeps the preview scene when the editor closes.

## Methods

### onChange

```haxe
dynamic function onChange(isDragging:Bool):Void
```

Called when the gradient changes. `isDragging` is true during a drag.

### close

```haxe
override function close():Void
```

### canCloseOnClickOutside

```haxe
override function canCloseOnClickOutside():Bool
```

### selectStop

```haxe
function selectStop(stop:hide.Element, ?repaint:Bool = true):Void
```

Selects a stop.

### repaint

```haxe
function repaint():Void
```

Redraws the editor.

### setPreview

```haxe
function setPreview(previewSettings:PreviewSettings, baseData:Dynamic, currentPath:String):Void
```

Shows a preview prefab from the settings and the CDB line. `currentPath` is the path of the edited gradient.

### cleanupPreview

```haxe
function cleanupPreview():Void
```

Removes the preview.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
