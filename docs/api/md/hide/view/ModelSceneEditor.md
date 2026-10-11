# hide.view.ModelSceneEditor

**class** · package [`hide.view`](README.md) · module `hide.view.Model` · source [`hide_js/hide/view/Model.hx`](../../../../../hide_js/hide/view/Model.hx) · available on editor (js)

Extends: [`hide.comp.SceneEditor`](../comp/SceneEditor.md)

The scene editor of the model view.

## Constructor

### new

```haxe
function new(view:FileView):Void
```

Creates the scene editor of a view.

## Methods

### setWireframe

```haxe
override function setWireframe(?val:Bool = true):Void
```

### setColliderDebugVisiblity

```haxe
override function setColliderDebugVisiblity(?visible:Bool = true):Void
```

### selectElements

```haxe
override function selectElements(elts:Array<hrt.prefab.Prefab>, ?mode:hide.comp.SelectMode):Void
```

## Inherited members

- from [`hide.comp.SceneEditor`](../comp/SceneEditor.md): `sceneTree`, `renderPropsTree`, `scene`, `properties`, `curEdit`, `curEdit2`, `snapToGround`, `snapToggle`, `snapMoveStep`, `snapRotateStep`, `snapScaleStep`, `snapForceOnGrid`, `localTransform`, `selfOnlyTransform`, `cameraController`, `cameraController2D`, `editorDisplay`, `camera2D`, `objectAreSelectable`, `renderPropsRoot`, `previousSceneRenderProps`, `ide`, `event`, `selectedPrefabs`, `root2d`, `root3d`, `showOverlays`, `gridStep`, `gridSize`, `showGrid`, `view`, `lastFocusObjects`, `onSceneReady`, `toggleRuler`, `setViewportOverlaysVisibility`, `updateViewportOverlays`, `updateBackgroundColor`, `updateStatusTextVisibility`, `updateWireframe`, `updateJointsVisibility`, `updateCollidersVisibility`, `updateGizmoVisibility`, `updateIconsVisibility`, `updateOtherGuidesVisibility`, `updateOutlineVisibility`, `delayReady`, `updateGrid`, `createGrid`, `getSnapStatus`, `snap`, `gizmoSnap`, `dispose`, `onResourceChanged`, `onResize`, `getSelection`, `setFullScreen`, `focusObjects`, `getTag`, `setTags`, `switchCamController`, `loadCam3D`, `saveCam3D`, `saveSnapSettings`, `setPrefab`, `applyTreeStyle`, `collapseTree`, `watchIgnoreChanges`, `watch`, `refreshScene`, `onRefresh`, `refreshInteractive`, `removeInteractive`, `setWireframe`, `setJointsDebugVisibility`, `setColliderDebugVisiblity`, `onPrefabChange`, `applySceneStyle`, `getInteractives`, `getObject`, `getObject2d`, `getSelfObject`, `addElements`, `showProps`, `onSelectionChanged`, `selectElements`, `selectElementsIndirect`, `resetCamera`, `onDropEvent`, `getPickTransform`, `isVisible`, `getAllSelectable`, `selectAll`, `selectInvert`, `deselect`, `isSelected`, `setEnabled`, `setEditorOnly`, `setInGameOnly`, `isHidden`, `setVisible`, `setLock`, `deleteElements`, `queueRebuild`, `queueRefreshRenderProps`, `queueRebuildCallback`, `onUpdate`, `getRecentMenuKey`, `getZ`, `projectToGround`, `screenDistToGround`, `screenToGround`, `worldToScreen`, `worldMat`, `worldMat2d`
