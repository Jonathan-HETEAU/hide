# hide.prefab.PolygonEditor

**class** · package [`hide.prefab`](README.md) · source [`hide_js/hide/prefab/PolygonEditor.hx`](../../../../../hide_js/hide/prefab/PolygonEditor.hx) · available on editor (js)

The editor of a polygon prefab: moves, adds and deletes its points in the scene.

## Constructor

### new

```haxe
function new(polygonPrefab:hrt.prefab.l3d.Polygon, undo:hide.ui.UndoHistory):Void
```

Creates the editor of a polygon.

## Variables

### editContext

```haxe
var editContext:EditContext
```

The edit context.

### showDebug

```haxe
var showDebug:Bool
```

Shows the positions of the points.

### gridSize

```haxe
var gridSize(get, set):Float
```

The snap grid size, stored in the polygon prefab.

### showTriangles

```haxe
var showTriangles:Bool
```

Shows the triangles of the polygon.

### worldSnap

```haxe
var worldSnap:Bool
```

With ctrl, snaps the points to the grid in world space instead of local space.

## Methods

### dispose

```haxe
function dispose():Void
```

Removes the handles and the edition graphics.

### reset

```haxe
function reset():Void
```

Removes the handles and the edition graphics.

### update

```haxe
function update(?propName:String):Void
```

Applies a changed editor property.

### setSelected

```haxe
function setSelected(b:Bool):Void
```

Starts or stops the edition when the polygon is selected or unselected (in edit mode).

### addProps

```haxe
function addProps(ctx:EditContext):js.jquery.JQuery
```

Adds the polygon editor properties to the properties panel.
