# hide.view.CollisionSettings

**class** · package [`hide.view`](README.md) · module `hide.view.Model` · source [`hide_js/hide/view/Model.hx`](../../../../../hide_js/hide/view/Model.hx) · available on editor (js)

The collision settings of a model in the model view, from the conversion rules.

## Constructor

### new

```haxe
function new(mode:Int, params:hxd.fmt.fbx.CollideParams):Void
```

Creates the settings.

## Variables

### mode

```haxe
var mode:Int
```

The collision mode: default, none, auto, mesh or shapes.

### params

```haxe
var params:hxd.fmt.fbx.CollideParams
```

The collision conversion parameters.

## Methods

### toShapeEditor

```haxe
function toShapeEditor():Array<hide.comp.Shape>
```

Returns the collision shapes for the shape editor (empty if not in shapes mode).

### fromShapeEditor

```haxe
function fromShapeEditor(arr:Array<hide.comp.Shape>):Array<hxd.fmt.fbx.ShapeColliderParams>
```

Sets the collision shapes from the shape editor.

### getDebugCollider

```haxe
function getDebugCollider(mesh:h3d.scene.Mesh, convertRule:hxd.fs.ConvertRule):h3d.scene.Object
```

Returns an object drawing the collider of a mesh, or null.
