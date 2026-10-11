# hide.comp.ViewModePopup

**class** · package [`hide.comp`](README.md) · module `hide.comp.SceneEditor` · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

Extends: [`hide.comp.Popup`](Popup.md) → [`hide.comp.Component`](Component.md)

The popup choosing the debug view mode of the renderer (albedo, normals, UV checker...).

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, engineRenderer:h3d.scene.pbr.Renderer, editor:SceneEditor):Void
```

Creates the popup.

## Methods

### applyViewMode

```haxe
function applyViewMode(input:hide.Element, v:Dynamic):Void
```

Applies the view mode of an input.

### isUvChecker

```haxe
function isUvChecker():Bool
```

Tells if the UV checker view is enabled.

### isDisplacementDisplay

```haxe
function isDisplacementDisplay():Bool
```

Tells if the displacement view is enabled.

## Inherited members

- from [`hide.comp.Popup`](Popup.md): `anchor`, `offsetX`, `offsetY`, `position`, `wasCancelled`, `open`, `onScroll`, `onSearchChanged`, `close`, `onClose`, `canCloseOnClickOutside`, `onShouldCloseOnClick`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
