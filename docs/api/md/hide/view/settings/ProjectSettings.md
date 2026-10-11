# hide.view.settings.ProjectSettings

**class** · package [`hide.view.settings`](README.md) · source [`hide_js/hide/view/settings/ProjectSettings.hx`](../../../../../../hide_js/hide/view/settings/ProjectSettings.hx) · available on editor (js)

Extends: [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

The project settings view: lists the `props.json` files of the project and edits their material libraries, render props and conversion settings.

## Constructor

### new

```haxe
function new(?state:{  }):Void
```

Creates the view.

## Static variables

### SETTINGS_FILE

```haxe
static var SETTINGS_FILE:String
```

The name of the settings files.

### MATLIB_ENTRY

```haxe
static var MATLIB_ENTRY:String
```

The entry of the material libraries.

### RENDERPROPS_ENTRY

```haxe
static var RENDERPROPS_ENTRY:String
```

The entry of the render props.

### CONVERT_ENTRY

```haxe
static var CONVERT_ENTRY:String
```

The entry of the conversion settings.

## Methods

### getTitle

```haxe
override function getTitle():String
```

### onActivate

```haxe
override function onActivate():Void
```

## Inherited members

- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
