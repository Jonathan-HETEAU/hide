# hide.comp.ShapeEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ShapeEditor.hx`](../../../../../hide_js/hide/comp/ShapeEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Edits a list of shapes in the properties panel and the scene.

## Constructor

### new

```haxe
function new(scene:Scene, rootDebugObj:h3d.scene.Object, ?shapes:Array<Shape>, ?options:Null<ShapeEditorOptions>, ?parent:Null<hide.Element>):Void
```

Creates the editor of shapes.

## Static methods

### getInteractive

```haxe
static function getInteractive(shape:Shape, highlight:Bool, parent:h3d.scene.Object):h3d.scene.Mesh
```

Returns a mesh drawing a shape, highlighted if `highlight`.

## Variables

### rootDebugObj

```haxe
var rootDebugObj(default, set):h3d.scene.Object
```

The object the shapes are drawn under.

## Methods

### refresh

```haxe
function refresh(?shapes:Array<Shape>):Void
```

Sets the shapes and rebuilds the editor.

### remove

```haxe
override function remove():Void
```

### getValue

```haxe
function getValue():Array<Shape>
```

Returns the shapes.

### onChange

```haxe
dynamic function onChange():Void
```

Called when the shapes change.

### createDefaultShape

```haxe
function createDefaultShape(obj:h3d.scene.Object):Void
```

Adds a box fitting the bounds of an object.

### createAllInteractives

```haxe
function createAllInteractives():Void
```

Creates the scene meshes of the shapes.

### removeAllInteractives

```haxe
function removeAllInteractives():Void
```

Removes the scene meshes of the shapes.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
