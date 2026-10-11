# hide.comp.CustomEditor

**class** · package [`hide.comp`](README.md) · module `hide.comp.SceneEditor` · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

A custom editor displayed over the scene, for a kind of prefab.

## Constructor

### new

```haxe
function new(editor:SceneEditor):Void
```

Creates the editor.

## Methods

### setElementSelected

```haxe
function setElementSelected(p:hrt.prefab.Prefab, b:Bool):Bool
```

Called when a prefab is selected. Returns `true` by default.

### update

```haxe
function update(dt:Float):Void
```

Called each frame.
