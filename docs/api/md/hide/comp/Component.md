# hide.comp.Component

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/Component.hx`](../../../../../hide_js/hide/comp/Component.hx) · available on editor (js)

Subclasses: [`hide.comp.Button`](Button.md), [`hide.comp.CodeEditor`](CodeEditor.md), [`hide.comp.ColorBox`](ColorBox.md), [`hide.comp.ColorSlider`](ColorSlider.md), [`hide.comp.ContentEditable`](ContentEditable.md), [`hide.comp.CurveEditor`](CurveEditor.md), [`hide.comp.DetachablePanel`](DetachablePanel.md), [`hide.comp.Dropdown`](Dropdown.md), [`hide.comp.EventsEditor`](EventsEditor.md), [`hide.comp.FancyArray`](FancyArray.md), [`hide.comp.FancyClosable`](FancyClosable.md), [`hide.comp.FancyGallery`](FancyGallery.md), [`hide.comp.FancySearch`](FancySearch.md), [`hide.comp.FancyTooltip`](FancyTooltip.md), [`hide.comp.FancyTree`](FancyTree.md), [`hide.comp.FileSelect`](FileSelect.md), [`hide.comp.FileSelect2`](FileSelect2.md), [`hide.comp.GradientBox`](GradientBox.md), [`hide.comp.GradientView`](GradientView.md), [`hide.comp.Modal`](Modal.md), [`hide.comp.Modal2`](Modal2.md), [`hide.comp.MultiRange`](MultiRange.md), [`hide.comp.OverviewEditor`](OverviewEditor.md), [`hide.comp.Popup`](Popup.md), [`hide.comp.PropsEditor`](PropsEditor.md), [`hide.comp.PropsField`](PropsField.md), [`hide.comp.Range`](Range.md), [`hide.comp.ResizablePanel`](ResizablePanel.md), [`hide.comp.SVG`](SVG.md), [`hide.comp.Scene`](Scene.md), [`hide.comp.Select`](Select.md), [`hide.comp.ShapeEditor`](ShapeEditor.md), [`hide.comp.SliderGroup`](SliderGroup.md), [`hide.comp.Tabs`](Tabs.md), [`hide.comp.TextureChoice`](TextureChoice.md), [`hide.comp.TextureChoice2`](TextureChoice2.md), [`hide.comp.TileSelector`](TileSelector.md), [`hide.comp.Toolbar`](Toolbar.md), [`hide.comp.cdb.Editor`](cdb/Editor.md), [`hide.comp.cdb.Line`](cdb/Line.md), [`hide.comp.cdb.Separator`](cdb/Separator.md), [`hide.comp.cdb.Table`](cdb/Table.md), [`hide.ui.View`](../ui/View.md), [`hide.view.GraphEditor`](../view/GraphEditor.md), [`hide.view.MemProfilerInspectView`](../view/MemProfilerInspectView.md), [`hide.view.MemProfilerSearchBar`](../view/MemProfilerSearchBar.md), [`hide.view.MemProfilerSummaryView`](../view/MemProfilerSummaryView.md), [`hide.view.MemProfilerTable`](../view/MemProfilerTable.md), [`hide.view.MemProfilerTableLine`](../view/MemProfilerTableLine.md), [`hide.view.RemoteConsoleCommand`](../view/RemoteConsoleCommand.md), [`hide.view.RemoteConsolePanel`](../view/RemoteConsolePanel.md), [`hide.view.RemoteConsoleSubCommandDump`](../view/RemoteConsoleSubCommandDump.md), [`hide.view.animgraph.AnimList`](../view/animgraph/AnimList.md), [`hide.view.animgraph.AnimPicker`](../view/animgraph/AnimPicker.md), [`hrt.shgraph.CustomVarChooser`](../../hrt/shgraph/CustomVarChooser.md)

The base class of the editor HTML components.

## Variables

### componentName

```haxe
var componentName(get, null):String
```

The class name of the component.

### element

```haxe
var element(default, null):hide.Element
```

The root element.

### saveDisplayKey

```haxe
var saveDisplayKey:String
```

The key of the saved display state, or null.

## Methods

### remove

```haxe
function remove():Void
```

Removes the element.
