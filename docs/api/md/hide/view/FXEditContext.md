# hide.view.FXEditContext

**class** · package [`hide.view`](README.md) · module `hide.view.FXEditor` · source [`hide_js/hide/view/FXEditor.hx`](../../../../../hide_js/hide/view/FXEditor.hx) · available on editor (js)

Extends: [`hide.prefab.EditContext`](../prefab/EditContext.md)

The edit context of the FX editor.

## Constructor

### new

```haxe
function new(undo:hide.ui.UndoHistory, parent:FXEditor):Void
```

Creates the context of an FX editor.

## Methods

### onChange

```haxe
override function onChange(p:hrt.prefab.Prefab, propName:String):Void
```

## Inherited members

- from [`hide.prefab.EditContext`](../prefab/EditContext.md): `rootPrefab`, `ide`, `scene`, `properties`, `cleanups`, `onChange`, `getCurrentProps`, `addUpdate`, `removeUpdate`, `makeChanges`, `screenToGround`, `positionToGroundZ`, `parentContext`, `flushChildRequests`, `rebuildProperties`, `rebuildPrefab`, `refreshTree`, `getNamedObjects`
