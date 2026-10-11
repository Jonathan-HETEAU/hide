# hide.comp.SceneEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

Subclasses: [`hide.view.ModelSceneEditor`](../view/ModelSceneEditor.md), [`hide.view.PrefabSceneEditor`](../view/PrefabSceneEditor.md)

The editor of a prefab scene: the 3D/2D view with its camera and gizmo, the prefab tree, the properties panel, selection, undo, snapping and drag and drop.

## Constructor

### new

```haxe
function new(view:hide.view.FileView):Void
```

Creates the editor of a view.

## Static methods

### splitCentainesFloat

```haxe
static function splitCentainesFloat(v:Float, precision:Int):String
```

Returns a float with `precision` decimals, its digits grouped by three.

### splitCentaines

```haxe
static function splitCentaines(v:Int):String
```

Returns an integer with its digits grouped by three.

### hasParent

```haxe
static function hasParent(elt:hrt.prefab._Prefab.PrefabElement, list:Array<hrt.prefab._Prefab.PrefabElement>):Bool
```

Tells if a parent of the prefab is in the list.

### hasChild

```haxe
static function hasChild(elt:hrt.prefab._Prefab.PrefabElement, list:Array<hrt.prefab._Prefab.PrefabElement>):Bool
```

Tells if a child of the prefab is in the list.

### isParent

```haxe
static function isParent(elt:hrt.prefab._Prefab.PrefabElement, parent:hrt.prefab._Prefab.PrefabElement):Bool
```

Tells if `parent` is a parent of the prefab.

### registerContextMenuExtension

```haxe
static function registerContextMenuExtension(cl:Class<hrt.prefab.Prefab>, callback:(elements:Array<hrt.prefab.Prefab>) -> Array<hrt.ui.MenuItem>):Int
```

Adds entries to the context menu of the prefabs of a class.

## Variables

### sceneTree

```haxe
var sceneTree:FancyTree<hrt.prefab._Prefab.PrefabElement>
```

The tree of the prefabs.

### renderPropsTree

```haxe
var renderPropsTree:FancyTree<hrt.prefab._Prefab.PrefabElement>
```

The tree of the render props.

### scene

```haxe
var scene:Scene
```

The 3D/2D scene.

### properties

```haxe
var properties:PropsEditor
```

The properties panel.

### curEdit

```haxe
var curEdit(default, null):SceneEditorContext
```

The edit context of the selection.

### curEdit2

```haxe
var curEdit2(default, null):hide.prefab.HideJsEditContext2
```

The `EditContext2` of the selection.

### snapToGround

```haxe
var snapToGround:Bool
```

Places the moved objects on the ground.

### snapToggle

```haxe
var snapToggle:Bool
```

Enables the snapping.

### snapMoveStep

```haxe
var snapMoveStep:Float
```

The step of the translation snapping.

### snapRotateStep

```haxe
var snapRotateStep:Float
```

The step of the rotation snapping, in degrees.

### snapScaleStep

```haxe
var snapScaleStep:Float
```

The step of the scale snapping.

### snapForceOnGrid

```haxe
var snapForceOnGrid:Bool
```

Snaps the positions to the grid instead of the offsets.

### localTransform

```haxe
var localTransform:Bool
```

Moves in the local space of the objects.

### selfOnlyTransform

```haxe
var selfOnlyTransform:Bool
```

Moves the selected objects without their children.

### cameraController

```haxe
var cameraController:hide.view.CameraControllerBase
```

The 3D camera controller.

### cameraController2D

```haxe
var cameraController2D:hide.view.l3d.CameraController2D
```

The 2D camera controller.

### editorDisplay

```haxe
var editorDisplay(default, set):Bool
```

Displays the editor helpers (icons, gizmos...).

### camera2D

```haxe
var camera2D(default, set):Bool
```

Uses the 2D camera.

### objectAreSelectable

```haxe
var objectAreSelectable:Bool
```

Allows selecting objects by clicking in the view.

### renderPropsRoot

```haxe
var renderPropsRoot:hrt.prefab.Reference
```

The reference to the render props of the scene.

### previousSceneRenderProps

```haxe
var previousSceneRenderProps:hrt.prefab.RenderProps
```

The render props before the last change.

### ide

```haxe
var ide:hide.Ide
```

The editor.

### event

```haxe
var event(default, null):hxd.WaitEvent
```

Delayed events.

### selectedPrefabs

```haxe
var selectedPrefabs:Array<hrt.prefab._Prefab.PrefabElement>
```

The selected prefabs.

### root2d

```haxe
var root2d:h2d.Object
```

The root 2D object of the prefab.

### root3d

```haxe
var root3d:h3d.scene.Object
```

The root 3D object of the prefab.

### showOverlays

```haxe
var showOverlays:Bool
```

Shows the viewport overlays.

### gridStep

```haxe
var gridStep:Float
```

The step of the grid.

### gridSize

```haxe
var gridSize:Int
```

The size of the grid.

### showGrid

```haxe
var showGrid:Bool
```

Shows the grid.

### view

```haxe
var view(default, null):hide.view.FileView
```

The view of the edited file.

### lastFocusObjects

```haxe
var lastFocusObjects:Array<h3d.scene.Object>
```

The objects last focused by the camera.

## Methods

### onSceneReady

```haxe
dynamic function onSceneReady():Void
```

Called when the scene is ready.

### toggleRuler

```haxe
function toggleRuler(?force:Bool):Void
```

Starts or stops the ruler (toggles if `force` is `null`).

### setViewportOverlaysVisibility

```haxe
function setViewportOverlaysVisibility(visible:Bool):Void
```

Shows or hides the viewport overlays.

### updateViewportOverlays

```haxe
function updateViewportOverlays():Void
```

Applies the visibility of the overlays.

### updateBackgroundColor

```haxe
function updateBackgroundColor():Void
```

Applies the background color setting.

### updateStatusTextVisibility

```haxe
function updateStatusTextVisibility():Void
```

Applies the visibility of the status text.

### updateWireframe

```haxe
function updateWireframe():Void
```

Applies the wireframe setting.

### updateJointsVisibility

```haxe
function updateJointsVisibility():Void
```

Applies the visibility of the joints.

### updateCollidersVisibility

```haxe
function updateCollidersVisibility():Void
```

Applies the visibility of the colliders.

### updateGizmoVisibility

```haxe
function updateGizmoVisibility():Void
```

Applies the visibility of the gizmo.

### updateIconsVisibility

```haxe
function updateIconsVisibility():Void
```

Applies the visibility of the icons.

### updateOtherGuidesVisibility

```haxe
function updateOtherGuidesVisibility():Void
```

Applies the visibility of the other guides.

### updateOutlineVisibility

```haxe
function updateOutlineVisibility():Void
```

Applies the visibility of the selection outline.

### delayReady

```haxe
function delayReady(callback:() -> Void):Void
```

Calls `callback` now if the scene is ready, or when it becomes ready.

### updateGrid

```haxe
function updateGrid():Void
```

Rebuilds the grid.

### createGrid

```haxe
function createGrid(origin:h3d.Vector, normal:h3d.Vector, gridSize:Float, gridStep:Float, color:h3d.Vector):h3d.scene.Object
```

Creates a grid object.

### getSnapStatus

```haxe
function getSnapStatus():Bool
```

Tells if the snapping is active (toggled, or inverted while Ctrl is held).

### snap

```haxe
function snap(value:Float, step:Float):Float
```

Returns the value snapped to a step.

### gizmoSnap

```haxe
function gizmoSnap(value:Float, mode:hrt.tools.EditMode):Float
```

Returns the value snapped for a gizmo mode.

### dispose

```haxe
function dispose():Void
```

Disposes the editor.

### onResourceChanged

```haxe
function onResourceChanged(lib:hxd.fmt.hmd.Library):Void
```

Reloads the models using a changed library.

### onResize

```haxe
dynamic function onResize():Void
```

Called when the view is resized.

### getSelection

```haxe
function getSelection():Array<hrt.prefab._Prefab.PrefabElement>
```

Returns the selected prefabs.

### setFullScreen

```haxe
function setFullScreen(b:Bool):Void
```

Shows the scene in full screen.

### focusObjects

```haxe
function focusObjects(objs:Array<h3d.scene.Object>):Void
```

Moves the camera to show the objects.

### getTag

```haxe
function getTag(p:hrt.prefab._Prefab.PrefabElement):TagInfo
```

Returns the tag of a prefab, or `null`.

### setTags

```haxe
function setTags(prefabs:Array<hrt.prefab._Prefab.PrefabElement>, tag:String):Void
```

Sets the tag of prefabs, with undo.

### switchCamController

```haxe
function switchCamController(camClass:Class<hide.view.CameraControllerBase>):Void
```

Switches to another camera controller.

### loadCam3D

```haxe
function loadCam3D():Void
```

Loads the saved camera.

### saveCam3D

```haxe
function saveCam3D():Void
```

Saves the camera.

### saveSnapSettings

```haxe
function saveSnapSettings():Void
```

Saves the snap settings.

### setPrefab

```haxe
function setPrefab(prefab:hrt.prefab.Prefab):Void
```

Sets the edited prefab and rebuilds the scene.

### applyTreeStyle

```haxe
function applyTreeStyle(p:hrt.prefab._Prefab.PrefabElement, tree:Tree):Void
```

Applies the style of a prefab in a tree (hidden, locked, tag...).

### collapseTree

```haxe
function collapseTree():Void
```

Collapses the scene tree.

### watchIgnoreChanges

```haxe
function watchIgnoreChanges(source:String):Void
```

Ignores the next change of a watched reference file.

### watch

```haxe
function watch(source:String):Void
```

Reloads the scene when a referenced file changes.

### refreshScene

```haxe
function refreshScene():Void
```

Rebuilds the scene.

### onRefresh

```haxe
dynamic function onRefresh():Void
```

Called after the scene is refreshed.

### refreshInteractive

```haxe
function refreshInteractive(elt:hrt.prefab._Prefab.PrefabElement):Void
```

Recreates the interactive of a prefab.

### removeInteractive

```haxe
function removeInteractive(elt:hrt.prefab._Prefab.PrefabElement):Void
```

Removes the interactive of a prefab.

### setWireframe

```haxe
function setWireframe(?val:Bool = true):Void
```

Shows the scene in wireframe.

### setJointsDebugVisibility

```haxe
function setJointsDebugVisibility(?visible:Bool = true, selectedJoints:Array<String>):Void
```

Shows the joints of the skinned meshes (highlighting `selectedJoints`).

### setColliderDebugVisiblity

```haxe
function setColliderDebugVisiblity(?visible:Bool = true):Void
```

Shows the colliders of the scene.

### onPrefabChange

```haxe
function onPrefabChange(p:hrt.prefab._Prefab.PrefabElement, ?pname:String):Void
```

Called when a property of a prefab changes: updates its instance and the tree.

### applySceneStyle

```haxe
function applySceneStyle(p:hrt.prefab._Prefab.PrefabElement):Void
```

Applies the visibility of a prefab in the scene.

### getInteractives

```haxe
function getInteractives(elt:hrt.prefab._Prefab.PrefabElement):Array<hxd.Interactive>
```

Returns the interactives of a prefab and its children.

### getObject

```haxe
function getObject(elt:hrt.prefab._Prefab.PrefabElement):h3d.scene.Object
```

Returns the 3D object of a prefab.

### getObject2d

```haxe
function getObject2d(elt:hrt.prefab._Prefab.PrefabElement):h2d.Object
```

Returns the 2D object of a prefab.

### getSelfObject

```haxe
function getSelfObject(elt:hrt.prefab._Prefab.PrefabElement):h3d.scene.Object
```

Returns the 3D object of a prefab.

### addElements

```haxe
function addElements(elts:Array<hrt.prefab._Prefab.PrefabElement>, ?selectObj:Bool = true, ?doRefresh:Bool = true, ?enableUndo:Bool = true):Void
```

Adds prefabs to the scene (selecting them if `selectObj`), with undo.

### showProps

```haxe
function showProps(e:hrt.prefab._Prefab.PrefabElement):Void
```

Shows the properties of a prefab.

### onSelectionChanged

```haxe
dynamic function onSelectionChanged(elts:Array<hrt.prefab._Prefab.PrefabElement>, ?mode:SelectMode = Default):Void
```

Called when the selection changes.

### selectElements

```haxe
function selectElements(elts:Array<hrt.prefab._Prefab.PrefabElement>, ?mode:SelectMode = Default):Void
```

Selects prefabs.

### selectElementsIndirect

```haxe
function selectElementsIndirect(elts:Array<hrt.prefab._Prefab.PrefabElement>, ?mode:SelectMode = Default):Void
```

Select prefabs that are in a clone of sceneData

### resetCamera

```haxe
function resetCamera(?distanceFactor:Float = 1.5):Void
```

Moves the camera to show the whole scene.

### onDropEvent

```haxe
function onDropEvent(event:hide.tools.DropEvent, dragData:hide.tools.DragData):Void
```

Handles a drag and drop event on the scene (resource files dropped).

### getPickTransform

```haxe
function getPickTransform(parent:hrt.prefab._Prefab.PrefabElement):Null<h3d.Matrix>
```

Returns the transform of the ground point under the mouse, relative to `parent`.

### isVisible

```haxe
function isVisible(elt:hrt.prefab._Prefab.PrefabElement):Bool
```

Tells if a prefab is visible in the editor.

### getAllSelectable

```haxe
function getAllSelectable(include3d:Bool, include2d:Bool):Array<hrt.prefab._Prefab.PrefabElement>
```

Returns the visible prefabs that can be selected.

### selectAll

```haxe
function selectAll():Void
```

Selects all the prefabs.

### selectInvert

```haxe
function selectInvert():Void
```

Inverts the selection.

### deselect

```haxe
function deselect():Void
```

Clears the selection.

### isSelected

```haxe
function isSelected(p:hrt.prefab._Prefab.PrefabElement):Bool
```

Tells if a prefab is selected.

### setEnabled

```haxe
function setEnabled(elements:Array<hrt.prefab._Prefab.PrefabElement>, enable:Bool):Void
```

Enables or disables prefabs, with undo.

### setEditorOnly

```haxe
function setEditorOnly(elements:Array<hrt.prefab._Prefab.PrefabElement>, enable:Bool):Void
```

Sets prefabs as editor only, with undo.

### setInGameOnly

```haxe
function setInGameOnly(elements:Array<hrt.prefab._Prefab.PrefabElement>, enable:Bool):Void
```

Sets prefabs as in game only, with undo.

### isHidden

```haxe
function isHidden(e:hrt.prefab._Prefab.PrefabElement):Bool
```

Tells if a prefab is hidden in the editor.

### setVisible

```haxe
function setVisible(elements:Array<hrt.prefab._Prefab.PrefabElement>, visible:Bool):Void
```

Shows or hides prefabs in the editor.

### setLock

```haxe
function setLock(elements:Array<hrt.prefab._Prefab.PrefabElement>, locked:Bool, ?enableUndo:Bool = true):Void
```

Locks or unlocks prefabs (not selectable in the view), with undo.

### deleteElements

```haxe
function deleteElements(elts:Array<hrt.prefab._Prefab.PrefabElement>, ?then:() -> Void, ?doRefresh:Bool = true, ?enableUndo:Bool = true):Void
```

Deletes prefabs, with undo.

### queueRebuild

```haxe
function queueRebuild(prefab:hrt.prefab._Prefab.PrefabElement):Void
```

Indicate that this prefab neet do be rebuild

### queueRefreshRenderProps

```haxe
function queueRefreshRenderProps(?rp:hrt.prefab.RenderProps):Void
```

Applies the render props, after the pending rebuild.

### queueRebuildCallback

```haxe
function queueRebuildCallback(callback:() -> Void):Void
```

Register a callback that will be called once all the prefabs in this begin/endRebuild pair have been rebuild

### onUpdate

```haxe
dynamic function onUpdate(dt:Float):Void
```

Called each frame.

### getRecentMenuKey

```haxe
function getRecentMenuKey():String
```

Returns the configuration key of the recently added prefab types.

### getZ

```haxe
function getZ(x:Float, y:Float, ?paintOn:hrt.prefab.Prefab):Float
```

Returns the height of the ground (or of `paintOn`) at a position.

### projectToGround

```haxe
function projectToGround(ray:h3d.col.Ray, ?paintOn:hrt.prefab.Prefab, ?ignoreTerrain:Bool = false):Float
```

Returns the distance of the intersection of a ray with the ground (or `paintOn`), or `-1`.

### screenDistToGround

```haxe
function screenDistToGround(sx:Float, sy:Float, ?paintOn:hrt.prefab.Prefab, ?ignoreTerrain:Bool = false):Null<Float>
```

Returns the distance to the ground under a screen position, or `null`.

### screenToGround

```haxe
function screenToGround(sx:Float, sy:Float, ?paintOn:hrt.prefab.Prefab, ?ignoreTerrain:Bool = false):h3d.Vector
```

Returns the ground point under a screen position, or `null`.

### worldToScreen

```haxe
function worldToScreen(wx:Float, wy:Float, wz:Float):h2d.col.Point
```

Returns the screen position of a world position.

### worldMat

```haxe
function worldMat(?obj:h3d.scene.Object, ?elt:hrt.prefab._Prefab.PrefabElement):h3d.Matrix
```

Returns the world transform of an object (or the object of a prefab), without its default transform.

### worldMat2d

```haxe
function worldMat2d(elt:hrt.prefab._Prefab.PrefabElement):h2d.col.Matrix
```

Returns the world transform of a 2D prefab.
