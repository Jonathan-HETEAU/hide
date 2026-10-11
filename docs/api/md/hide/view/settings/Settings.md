# hide.view.settings.Settings

**class** · package [`hide.view.settings`](README.md) · source [`hide_js/hide/view/settings/Settings.hx`](../../../../../../hide_js/hide/view/settings/Settings.hx) · available on editor (js)

Extends: [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

Subclasses: [`hide.view.settings.UserSettings`](UserSettings.md)

The base of the settings views: a list of categories of settings.

## Constructor

### new

```haxe
function new(?state:{  }):Void
```

Creates the view.

## Variables

### categories

```haxe
var categories:Array<Categorie>
```

The categories.

## Inherited members

- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
