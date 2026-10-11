# hide.view.Gym

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/Gym.hx`](../../../../../hide_js/hide/view/Gym.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

A test view showing the editor UI components (buttons, toolbars...) and offscreen rendering tests.

## Constructor

### new

```haxe
function new(state:{  }):Void
```

## Static methods

### onBeforeReload

```haxe
static function onBeforeReload():Void
```

Closes the test socket before the IDE reloads.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
