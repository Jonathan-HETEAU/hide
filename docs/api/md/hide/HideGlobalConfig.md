# hide.HideGlobalConfig

**typedef** · package [`hide`](README.md) · module `hide.Config` · source [`hide/Config.hx`](../../../../hide/Config.hx) · available on editor (js)

The global settings of the editor, per user (the `hide` field of the global `props.json`).

## Fields

### windowPos

```haxe
var windowPos:{ y:Int, x:Int, w:Int, max:Bool, h:Int }
```

The position and size of the window, and if it is maximized.

### useAlternateFont

```haxe
var useAlternateFont:Null<Bool>
```

Uses the alternate font.

### unfocusCPUSavingMode

```haxe
var unfocusCPUSavingMode:Bool
```

Reduces the frame rate when the window is not focused.

### typingDebounceThreshold

```haxe
var typingDebounceThreshold:Int
```

The delay before searching while typing, in milliseconds.

### trackGpuAlloc

```haxe
var trackGpuAlloc:Bool
```

Tracks the GPU allocations.

### svnShowVersionedFiles

```haxe
var svnShowVersionedFiles:Bool
```

Shows the SVN versioned files in the file tree.

### svnShowModifiedFiles

```haxe
var svnShowModifiedFiles:Bool
```

Shows the SVN modified files in the file tree.

### searchOnKeyPress

```haxe
var searchOnKeyPress:Bool
```

Starts searching when typing in CastleDB.

### screenCaptureResolution

```haxe
var screenCaptureResolution:Int
```

The resolution of the screen captures.

### sceneEditorVerticalSidebar

```haxe
var sceneEditorVerticalSidebar:Bool
```

Shows the scene editor sidebar vertically (HL editor).

### sceneEditorLayout

```haxe
var ?sceneEditorLayout:Null<{ colsVisible:Bool, colsCombined:Bool }>
```

The layout of the scene editor columns.

### sceneEditorClickCycleObjects

```haxe
var sceneEditorClickCycleObjects:Bool
```

Clicking again cycles through the objects under the mouse.

### recentProjects

```haxe
var recentProjects:Array<String>
```

The paths of the recent projects, most recent first.

### orientMeshOnDrag

```haxe
var orientMeshOnDrag:Bool
```

Orients the meshes dragged in the scene along the surface.

### minDistFromCameraOnDrag

```haxe
var minDistFromCameraOnDrag:Float
```

The minimum distance to the camera of the objects dragged in the scene.

### highlightActiveLineHeader

```haxe
var highlightActiveLineHeader:Bool
```

Highlights the header of the active line in CastleDB.

### highlightActiveLine

```haxe
var highlightActiveLine:Bool
```

Highlights the active line in CastleDB.

### highlightActiveColumnHeader

```haxe
var highlightActiveColumnHeader:Bool
```

Highlights the header of the active column in CastleDB.

### filebrowserDebugShowWindow

```haxe
var filebrowserDebugShowWindow:Bool
```

Shows the window of the thumbnail generator (debug).

### filebrowserDebugShowMenu

```haxe
var filebrowserDebugShowMenu:Bool
```

Shows the debug menu of the file browser.

### filebrowserDebugServerCommands

```haxe
var filebrowserDebugServerCommands:Bool
```

Logs the commands of the thumbnail server (debug).

### filebrowserDebugIgnoreThumbnailCache

```haxe
var filebrowserDebugIgnoreThumbnailCache:Bool
```

Ignores the thumbnail cache of the file browser (debug).

### enableDBFormulas

```haxe
var enableDBFormulas:Bool
```

Enables the formulas of CastleDB.

### currentProject

```haxe
var currentProject:String
```

The path of the current project.

### colorPickerEscUndo

```haxe
var colorPickerEscUndo:Bool
```

Escape cancels the changes of the color picker.

### collisionOnDrag

```haxe
var collisionOnDrag:Bool
```

Places the objects dragged in the scene on the surfaces.

### closeSearchOnFileOpen

```haxe
var closeSearchOnFileOpen:Bool
```

Closes the search when a file is opened.

### closeSearchOnCDBSheetChange

```haxe
var closeSearchOnCDBSheetChange:Bool
```

Closes the search when the CastleDB sheet changes.

### autoSavePrefab

```haxe
var autoSavePrefab:Bool
```

Saves the prefabs automatically.

### autoSaveLayout

```haxe
var autoSaveLayout:Null<Bool>
```

Saves the layout of the panels automatically.
