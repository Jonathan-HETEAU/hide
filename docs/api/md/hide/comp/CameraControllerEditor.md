# hide.comp.CameraControllerEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/CameraControllerEditor.hx`](../../../../../hide_js/hide/comp/CameraControllerEditor.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

The popup editing the camera controller and its settings of a scene editor.

## Constructor

### new

```haxe
function new(editor:SceneEditor, ?parent:Null<hide.Element>):Void
```

Creates the popup for a scene editor.

## Static variables

### controllersClasses

```haxe
static var controllersClasses:Array<{ name:String, cl:Class<hide.view.CameraControllerBase> }>
```

The available camera controllers.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
