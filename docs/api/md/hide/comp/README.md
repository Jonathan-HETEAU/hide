# Package `hide.comp`

[← API index](../../README.md)

Sub-packages: [`hide.comp.cdb`](cdb/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Button`](Button.md) | class | A button with a label, and a dropdown arrow if `hasDropdown`. |
| [`CameraControllerEditor`](CameraControllerEditor.md) | class | The popup editing the camera controller and its settings of a scene editor. |
| [`Choice`](Choice.md) | typedef | A choice of a dropdown. |
| [`CodeEditor`](CodeEditor.md) | class | A code editor component (Monaco), with completion and error display. |
| [`ColorBox`](ColorBox.md) | class | Displays a color with its alpha component. |
| [`ColorPicker`](ColorPicker.md) | class | A color picker popup, with a saturation and value area, a hue slider, component sliders in several color modes and a hex code. |
| [`ColorSlider`](ColorSlider.md) | class | A 1D or 2D color slider drawn on a canvas. |
| [`ColorSliderComponent`](ColorSliderComponent.md) | typedef | A row of the color picker sliders. |
| [`Component`](Component.md) | class | The base class of the editor HTML components. |
| [`ContentEditable`](ContentEditable.md) | class | An editable text element: Enter or focus loss validates, Escape cancels. |
| [`ContextMenu`](ContextMenu.md) | class | A context menu, or a dropdown, made of `MenuItem`s, with an optional search. |
| [`ContextMenuItem`](ContextMenuItem.md) | typedef | Deprecated: use `hrt.ui.HuiMenu.MenuItem`. |
| [`CurveEditor`](CurveEditor.md) | class | The curve editor component: edits the keys and handles of several curves in an SVG view. |
| [`CurveEditorComponent`](CurveEditorComponent.md) | interface | A component drawn over the curve editor (events, overview). |
| [`CurveKey`](CurveKey.md) | typedef | A key of a curve. |
| [`CurvePopup`](CurvePopup.md) | class | A popup with a curve editor. |
| [`CustomEditor`](CustomEditor.md) | class | A custom editor displayed over the scene, for a kind of prefab. |
| [`CustomPivot`](CustomPivot.md) | typedef | A custom pivot of the gizmo. |
| [`DataOverride`](DataOverride.md) | typedef | A value of the CDB line set in the preview prefab. |
| [`DetachablePanel`](DetachablePanel.md) | class | A panel that can be detached from the layout and floated over the view, then moved and resized. |
| [`DomkitChecker`](DomkitChecker.md) | class | Checks domkit markup and style sheets against the components of the project. |
| [`DomkitEditor`](DomkitEditor.md) | class | A code editor for domkit markup or style sheets, checking them as they are edited. |
| [`DomkitEditorKind`](DomkitEditorKind.md) | enum | The language of a domkit editor. |
| [`DropFlag`](DropFlag.md) | enum | Where an item can be dropped on a target. |
| [`DropFlags`](DropFlags.md) | typedef | A set of `DropFlag`. |
| [`DropOperation`](DropOperation.md) | enum | Where an item is dropped relative to the target. |
| [`Dropdown`](Dropdown.md) | class | A dropdown list with a search filter. |
| [`EventMoveMode`](EventMoveMode.md) | enum | How the events are changed by a drag. |
| [`EventMoving`](EventMoving.md) | class | A drag of FX events in the curve editor. |
| [`EventsEditor`](EventsEditor.md) | class | Shows and edits the FX events in the curve editor. |
| [`ExpRange`](ExpRange.md) | class | A slider with an exponential scale (base 10). |
| [`FancyArray`](FancyArray.md) | class | A list component of collapsible items that can be added, removed, renamed and reordered by drag and drop. |
| [`FancyClosable`](FancyClosable.md) | class | A container that is hidden by default and that can appear scrolling down from the top, like for a search bar |
| [`FancyGallery`](FancyGallery.md) | class | A virtualized grid of item thumbnails with zoom levels, selection, renaming and drag and drop. |
| [`FancyItemState`](FancyItemState.md) | typedef | The saved state of a `FancyArray` item. |
| [`FancySearch`](FancySearch.md) | class | A search bar component. |
| [`FancyTooltip`](FancyTooltip.md) | class | A tooltip popover shown at a position. |
| [`FancyTree`](FancyTree.md) | class | A tree view component of items of any type, with lazy loading, search, multiple selection, renaming, buttons and drag and drop. |
| [`FileSelect`](FileSelect.md) | class | A file selection input with a file chooser, a context menu and drag and drop. |
| [`FileSelect2`](FileSelect2.md) | class | A file selection component with a preview, a file chooser, a context menu and drag and drop. |
| [`FilterFlag`](FilterFlag.md) | enum | The search state of a tree item. |
| [`FilterFlags`](FilterFlags.md) | typedef | A set of `FilterFlag`. |
| [`GalleryItemData`](GalleryItemData.md) | typedef | The internal data of a gallery item. |
| [`GalleryRefreshFlag`](GalleryRefreshFlag.md) | enum | What a gallery refresh must update. |
| [`GalleryRefreshFlags`](GalleryRefreshFlags.md) | typedef | A set of `GalleryRefreshFlag`. |
| [`GlobalSeek`](GlobalSeek.md) | class | A search dialog going to a CDB sheet or line. |
| [`GlobalsDef`](GlobalsDef.md) | typedef | The `script.api` config: the API of the scripts, by document name pattern. |
| [`GradientBox`](GradientBox.md) | class | Displays a gradient. |
| [`GradientEditor`](GradientEditor.md) | class | A gradient editor popup: stops, colors, interpolation and resolution settings, and an optional prefab preview. |
| [`GradientView`](GradientView.md) | class | Draws a gradient on a canvas. |
| [`GroupMap`](GroupMap.md) | typedef | The field groups of a properties editor, by name, with their copy and paste functions. |
| [`HelpPopup`](HelpPopup.md) | class | The popup listing the shortcuts of the editor. |
| [`HideSceneEditorAPI`](HideSceneEditorAPI.md) | class | The `hrt.prefab.SceneEditorAPI` of a `SceneEditor`. |
| [`IconVisibilityPopup`](IconVisibilityPopup.md) | class | The popup choosing the categories of editor icons displayed. |
| [`JsTools`](JsTools.md) | class | HTML helpers. |
| [`LayoutDirection`](LayoutDirection.md) | enum | The direction a panel is resized in. |
| [`MenuOptions`](MenuOptions.md) | typedef | The options of a context menu. |
| [`Modal`](Modal.md) | class | A modal dialog stopping the events to the page. |
| [`Modal2`](Modal2.md) | class | A modal popover with a title bar and a close button. |
| [`MultiRange`](MultiRange.md) | class | Several sliders editing a vector of values, which can be linked to keep them uniform. |
| [`Options`](Options.md) | typedef | The options of a `Button`. |
| [`OverviewEditor`](OverviewEditor.md) | class | The overview of the keys of all the curves, above the curve editor. |
| [`Params`](Params.md) | typedef | The options of a `FancyTree`. |
| [`Popup`](Popup.md) | class | A popup that closes when clicking outside of it. |
| [`PopupPosition`](PopupPosition.md) | enum | Where a popup opens relative to its anchor. |
| [`Preview2DCamController`](Preview2DCamController.md) | class | A simple pan and zoom controller for 2D previews. |
| [`PreviewCamController`](PreviewCamController.md) | class | A simple orbit camera controller for previews. |
| [`PreviewSettings`](PreviewSettings.md) | typedef | A gradient preview of the `cdb.gradientCustomPreviews` config: shows a prefab using the edited gradient. |
| [`PropsEditor`](PropsEditor.md) | class | The properties panel component: binds the inputs of an HTML description (`field` attributes) to the fields of an object, with undo, sections, groups and multi-edition. |
| [`PropsField`](PropsField.md) | class | An input of a properties editor bound to a field of an object. |
| [`RadialMenu`](RadialMenu.md) | class | A circular menu opened around a point. |
| [`RadialMenuItem`](RadialMenuItem.md) | typedef | An item of a radial menu. |
| [`Range`](Range.md) | class | A slider with a number input, reset, copy and paste. |
| [`RefreshFlag`](RefreshFlag.md) | enum | What a tree refresh must update. |
| [`RefreshFlags`](RefreshFlags.md) | typedef | A set of `RefreshFlag`. |
| [`RefreshMode`](RefreshMode.md) | enum | How the scene is refreshed. |
| [`RenderPropsPopup`](RenderPropsPopup.md) | class | The popup choosing the render props of the scene. |
| [`ResizablePanel`](ResizablePanel.md) | class | A panel resized with a splitter. |
| [`ResizeObserver`](ResizeObserver.md) | class | The browser `ResizeObserver` API. |
| [`RulerTool`](RulerTool.md) | class | A tool measuring the distance between two points of the scene. |
| [`SVG`](SVG.md) | class | An SVG element component, with helpers creating its shapes. |
| [`Scene`](Scene.md) | class | The 3D/2D scene component of the editor: a canvas with its own engine, `s3d`, `s2d`, loading of models, animations and textures, and render props. |
| [`SceneEditor`](SceneEditor.md) | class | The editor of a prefab scene: the 3D/2D view with its camera and gizmo, the prefab tree, the properties panel, selection, undo, snapping and drag and drop. |
| [`SceneEditorContext`](SceneEditorContext.md) | class | The edit context of the selected prefabs in a `SceneEditor`. |
| [`ScenePreview`](ScenePreview.md) | class | A Scene that is specialised to load one prefab or mesh for preview. |
| [`ScenePreviewSettings`](ScenePreviewSettings.md) | class | The saved settings of a `ScenePreview`. |
| [`ScriptCache`](ScriptCache.md) | class | The cache of the script check results and of the API types, stored in the local storage. |
| [`ScriptChecker`](ScriptChecker.md) | class | Type checks hscript scripts against the API configured in `script.api` for their document name. |
| [`ScriptEditor`](ScriptEditor.md) | class | A code editor for hscript scripts, checking them as they are edited. |
| [`SearchMode`](SearchMode.md) | enum | The search of a context menu. |
| [`SearchQuery`](SearchQuery.md) | typedef | The words of a search. |
| [`SearchRanges`](SearchRanges.md) | typedef | Ranges of a text matching a search: start and end positions, in pairs. |
| [`SeekMode`](SeekMode.md) | enum | What the global seek searches. |
| [`Select`](Select.md) | class | A searchable choice among a list, with copy and paste. |
| [`SelectMode`](SelectMode.md) | enum | How a selection updates the tree and the undo history. |
| [`Shape`](Shape.md) | enum | A collision shape edited by the `ShapeEditor`. |
| [`ShapeEditor`](ShapeEditor.md) | class | Edits a list of shapes in the properties panel and the scene. |
| [`ShapeEditorOptions`](ShapeEditorOptions.md) | typedef | The options of a `ShapeEditor`. |
| [`Side`](Side.md) | enum | The side a detachable panel is resized from. |
| [`SliderGroup`](SliderGroup.md) | class | A group of color sliders sharing a value. |
| [`SnapSettingsPopup`](SnapSettingsPopup.md) | class | The popup editing the snap settings. |
| [`SplitterPosition`](SplitterPosition.md) | enum | Where the splitter of a resizable panel is. |
| [`Tabs`](Tabs.md) | class | A tabs component: each `.tab` child element is a tab. |
| [`TagInfo`](TagInfo.md) | typedef | A tag of the prefabs, colored in the tree. |
| [`TextureChoice`](TextureChoice.md) | class | Edits a texture value: a texture file or a gradient. |
| [`TextureChoice2`](TextureChoice2.md) | class | Edits a texture value: a texture file or a gradient (with `TextureSelect2`). |
| [`TextureSelect`](TextureSelect.md) | class | A texture file selection with a preview. |
| [`TextureSelect2`](TextureSelect2.md) | class | A texture file selection with a preview (`FileSelect2` version). |
| [`TileSelector`](TileSelector.md) | class | Selects a tile (or a rectangle of tiles) in a tileset image. |
| [`ToolDef`](ToolDef.md) | typedef | The definition of a tool, for `Toolbar.makeToolbar`. |
| [`ToolMenu`](ToolMenu.md) | typedef | A dropdown menu of a toolbar. |
| [`ToolSelect`](ToolSelect.md) | typedef | A select of a toolbar. |
| [`ToolToggle`](ToolToggle.md) | typedef | A toggle button of a toolbar. |
| [`ToolType`](ToolType.md) | enum | The kind of a toolbar tool. |
| [`Toolbar`](Toolbar.md) | class | A toolbar component of buttons, toggles, sliders, colors, selects and menus, in groups. |
| [`Tree`](Tree.md) | enum | A tree of the scene editor. |
| [`TreeButton`](TreeButton.md) | typedef | A button shown on the tree items. |
| [`TreeItemData`](TreeItemData.md) | typedef | The internal data of a tree item. |
| [`ViewModePopup`](ViewModePopup.md) | class | The popup choosing the debug view mode of the renderer (albedo, normals, UV checker...). |
| [`ViewportOverlaysPopup`](ViewportOverlaysPopup.md) | class | The popup choosing the overlays displayed in the viewport. |
