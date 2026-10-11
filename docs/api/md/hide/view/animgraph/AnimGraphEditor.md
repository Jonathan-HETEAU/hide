# hide.view.animgraph.AnimGraphEditor

**class** · package [`hide.view.animgraph`](README.md) · source [`hide_js/hide/view/animgraph/AnimGraphEditor.hx`](../../../../../../hide_js/hide/view/animgraph/AnimGraphEditor.hx) · available on editor (js)

Extends: [`hide.view.GenericGraphEditor`](../GenericGraphEditor.md) → [`hide.view.FileView`](../FileView.md) → [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

The animation graph editor view (`.animgraph` files): graph, parameters and animated model preview.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Static methods

### getAnims

```haxe
static function getAnims(scene:hide.comp.Scene, ctx:hrt.animgraph.EditorProviderContext):Array<String>
```

Returns the animations available in an animation directory (and those of the custom lister).

### createChooseFolderPrompt

```haxe
static function createChooseFolderPrompt(baseDir:String, onSet:(path:String) -> Void):hide.Element
```

Returns a prompt asking for the folder of the models to animate. `onSet` is called with the chosen folder.

### gatherAllPreviewModels

```haxe
static function gatherAllPreviewModels(basePath:String):Array<String>
```

Returns the prefabs and the non animation FBX of a folder and its sub folders.

### addAnimSetSelector

```haxe
static function addAnimSetSelector(target:hide.Element, context:hrt.animgraph.EditorProviderContext, undo:hide.ui.UndoHistory, getIndex:() -> Int, setIndex:() -> Void):Void
```

Adds a selector of the anim set (custom editor resolver provider) to an element, if there is a custom provider.

## Variables

### previewPrefab

```haxe
var previewPrefab:hrt.prefab.Prefab
```

The previewed prefab.

## Methods

### loadPreviewState

```haxe
function loadPreviewState():Void
```

Loads the preview state from the display state.

### savePreviewState

```haxe
function savePreviewState():Void
```

Saves the preview state in the display state.

### refreshPreview

```haxe
function refreshPreview():Void
```

Previews the current node again.

### setPreview

```haxe
function setPreview(newOutput:hrt.animgraph.nodes.AnimNode):Void
```

Previews the output of a node on the next update.

### setPreviewInternal

```haxe
function setPreviewInternal(newOutput:hrt.animgraph.nodes.AnimNode):Void
```

Previews the output of a node now.

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### save

```haxe
override function save():Void
```

### getNodes

```haxe
override function getNodes():Iterator<hide.view.IGraphNode>
```

### getEdges

```haxe
override function getEdges():Iterator<hide.view.Edge>
```

### getAddNodesMenu

```haxe
override function getAddNodesMenu(currentEdge:Null<hide.view.Edge>):Array<hide.view.AddNodeMenuEntry>
```

### addNode

```haxe
override function addNode(node:hide.view.IGraphNode):Void
```

### removeNode

```haxe
override function removeNode(id:Int):Void
```

### serializeNode

```haxe
override function serializeNode(node:hide.view.IGraphNode):Dynamic
```

### unserializeNode

```haxe
override function unserializeNode(data:Dynamic, newId:Bool):hide.view.IGraphNode
```

### canAddEdge

```haxe
override function canAddEdge(edge:hide.view.Edge):Bool
```

### addEdge

```haxe
override function addEdge(edge:hide.view.Edge):Void
```

### removeEdge

```haxe
override function removeEdge(nodeToId:Int, inputToId:Int):Void
```

## Inherited members

- from [`hide.view.GenericGraphEditor`](../GenericGraphEditor.md): `getNodes`, `getEdges`, `getAddNodesMenu`, `addNode`, `removeNode`, `serializeNode`, `unserializeNode`, `createCommentNode`, `createRerouteNode`, `canAddEdge`, `addEdge`, `removeEdge`, `getUndo`
- from [`hide.view.FileView`](../FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
