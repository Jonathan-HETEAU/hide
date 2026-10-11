# Package `hide.view`

[← API index](../../README.md)

Sub-packages: [`hide.view.animgraph`](animgraph/README.md), [`hide.view.l3d`](l3d/README.md), [`hide.view.settings`](settings/README.md), [`hide.view.shadereditor`](shadereditor/README.md), [`hide.view.textureeditor`](textureeditor/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`About`](About.md) | class | The about view. |
| [`AddNodeMenuEntry`](AddNodeMenuEntry.md) | typedef | An entry of the add node menu. |
| [`CamController`](CamController.md) | class | The default orbit camera controller. |
| [`CameraControllerBase`](CameraControllerBase.md) | class | The base of the scene editor camera controllers, with their saved settings. |
| [`CdbCustomTypes`](CdbCustomTypes.md) | class | The view editing the CastleDB custom types as code. |
| [`CdbFavorites`](CdbFavorites.md) | class | The view listing the CDB favorites. |
| [`CdbTable`](CdbTable.md) | class | The CastleDB view: the sheets of the database in tabs, with categories. |
| [`CollisionSettings`](CollisionSettings.md) | class | The collision settings of a model in the model view, from the conversion rules. |
| [`CopySelectionData`](CopySelectionData.md) | typedef | The copied nodes and edges. |
| [`DevTools`](DevTools.md) | class | A view embedding the Chrome developer tools, to open a profile file. |
| [`DomkitLess`](DomkitLess.md) | class | The view of domkit style sheets (`.less` files). |
| [`DomkitStudio`](DomkitStudio.md) | class | The domkit studio view: browses the domkit components of the project and edits their markup and style. |
| [`Edge`](Edge.md) | typedef | An edge between 2 nodes. |
| [`EdgeState`](EdgeState.md) | enum | The edge creation mode of the graph editor. |
| [`FPSController`](FPSController.md) | class | A first person camera controller. |
| [`FX2DEditor`](FX2DEditor.md) | class | The 2D FX editor view (`.fx2d` files). |
| [`FXEditContext`](FXEditContext.md) | class | The edit context of the FX editor. |
| [`FXEditor`](FXEditor.md) | class | The FX editor view (`.fx` files): scene, prefab tree, properties and timeline with curves and events. |
| [`FavoriteEntry`](FavoriteEntry.md) | typedef | A favorite of the file browser. |
| [`FileBrowser`](FileBrowser.md) | class | The file browser view: tree and thumbnails of the resources, with favorites, search and version control status. |
| [`FileBrowserState`](FileBrowserState.md) | typedef | The saved state of the file browser. |
| [`FileView`](FileView.md) | class | The base of the views editing a file (`state.path`): watches the file, tracks modifications and saves. |
| [`FiltersPopup`](FiltersPopup.md) | class | The popup choosing the shown kinds of objects in the prefab view. |
| [`FlightController`](FlightController.md) | class | A flight camera controller, with smoothed moves. |
| [`GenericGraphEditor`](GenericGraphEditor.md) | class | A base file view for the graph editors, holding a `GraphEditor`. |
| [`GraphEditor`](GraphEditor.md) | class | A generic node graph editor component, editing an `IGraphEditor` (shader graphs, texture graphs, animation graphs). |
| [`GraphNodeInfo`](GraphNodeInfo.md) | typedef | The description of a node shown by the `GraphEditor`. |
| [`Gym`](Gym.md) | class | A test view showing the editor UI components (buttons, toolbars...) and offscreen rendering tests. |
| [`IGraphEditor`](IGraphEditor.md) | interface | The graph data edited by a `GraphEditor`: nodes, edges, add menu, serialization and undo. |
| [`IGraphNode`](IGraphNode.md) | interface | A node edited by the `GraphEditor`. |
| [`Image`](Image.md) | class | The image view: shows a texture and edits its compression settings. |
| [`Layout`](Layout.md) | enum abstract | The layout of the file browser. |
| [`MSDFView`](MSDFView.md) | class | The view of SVG files as multi-channel signed distance fields. |
| [`MSDFViewMode`](MSDFViewMode.md) | enum | What the MSDF view shows. |
| [`MemProfiler`](MemProfiler.md) | class | The HashLink memory profiler view: loads a `.hl` file and memory dumps, and shows the memory used by type, with their parents and roots. |
| [`MemProfilerInspectView`](MemProfilerInspectView.md) | class | The inspect tab of the memory profiler: the parents and roots of the blocks of a type. |
| [`MemProfilerSearchBar`](MemProfilerSearchBar.md) | class | The type search bar of the memory profiler, with a history. |
| [`MemProfilerSummaryView`](MemProfilerSummaryView.md) | class | The summary tab of the memory profiler: memory used by type. |
| [`MemProfilerTable`](MemProfilerTable.md) | class | A table of block statistics of the memory profiler. |
| [`MemProfilerTableLine`](MemProfilerTableLine.md) | class | A line of a memory profiler table. |
| [`Model`](Model.md) | class | The model view (`.fbx` and `.hmd` files): scene, objects tree, materials, animations and collision settings. |
| [`ModelSceneEditor`](ModelSceneEditor.md) | class | The scene editor of the model view. |
| [`NodeInput`](NodeInput.md) | typedef | An input of a graph node. |
| [`NodeOutput`](NodeOutput.md) | typedef | An output of a graph node. |
| [`OrthoController`](OrthoController.md) | class | An orthographic camera controller. |
| [`Particles2D`](Particles2D.md) | class | The 2D particles view (`json.particles2D` files). |
| [`Particles3D`](Particles3D.md) | class | The 3D particles view (`json.particles3D` files). |
| [`PinShape`](PinShape.md) | enum | The shape of a node pin. |
| [`Prefab`](Prefab.md) | class | The prefab view (`.prefab`, `.l3d`, `.matlib` and `.rp` files): scene, prefab tree and properties. |
| [`PrefabSceneEditor`](PrefabSceneEditor.md) | class | The scene editor of the prefab view. |
| [`PreviewShaderAlpha`](PreviewShaderAlpha.md) | class | Shows the alpha of a preview by blending its color over a checkerboard. |
| [`PropTrackDef`](PropTrackDef.md) | typedef | A property that can be animated with a curve track. |
| [`RefViewer`](RefViewer.md) | class | The view listing the references to an element, or the unreferenced elements. |
| [`Reference`](Reference.md) | typedef | The references found in a file. |
| [`RemoteConsoleCommand`](RemoteConsoleCommand.md) | class | A group of command controls of a remote console panel. |
| [`RemoteConsoleCommandCustom`](RemoteConsoleCommandCustom.md) | class | The custom controls: raw and console commands typed by the user. |
| [`RemoteConsoleCommandHL`](RemoteConsoleCommandHL.md) | class | The HashLink controls: garbage collection, memory dumps, live objects, CPU and allocation profiling. |
| [`RemoteConsoleCommandHeaps`](RemoteConsoleCommandHeaps.md) | class | The Heaps controls: GPU allocation tracking, scene profiling and resources. |
| [`RemoteConsolePanel`](RemoteConsolePanel.md) | class | A panel of the remote console view: the logs and command controls of a connection. |
| [`RemoteConsoleSubCommandDump`](RemoteConsoleSubCommandDump.md) | class | A dump control: asks the game for a dump file, then exports or opens it. |
| [`RemoteConsoleView`](RemoteConsoleView.md) | class | props.json configuration (all fields are optional): ```json "remoteconsole": {     "host": "127.0.0.1",     "port": 40001,     "disableAutoStartServer": false,     "commands": [         "hashlink",         "custom"   ... |
| [`Result`](Result.md) | typedef | A reference. |
| [`Script`](Script.md) | class | The code view (`js`, `hx`, `xml`, `html` and `json` files). |
| [`Section`](Section.md) | typedef | A prefab and its curves and events, shown as a section of the curve editor. |
| [`SelectionUndoSave`](SelectionUndoSave.md) | typedef | The selection change of a rectangle selection, for the undo. |
| [`Sound`](Sound.md) | class | The sound view (`wav`, `mp3` and `ogg` files). |
| [`UndoBuffer`](UndoBuffer.md) | typedef | A list of operations undone and redone together. |
| [`UndoFn`](UndoFn.md) | typedef | A reversible operation: applies it, or reverts it if `isUndo`. |
| [`Unknown`](Unknown.md) | class | The view replacing a view whose class is not found. |
| [`ViewMode`](ViewMode.md) | enum | What the image view shows. |
