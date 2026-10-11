# hide.comp.TileSelector

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/TileSelector.hx`](../../../../../hide_js/hide/comp/TileSelector.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Selects a tile (or a rectangle of tiles) in a tileset image.

## Constructor

### new

```haxe
function new(file:String, size:{ width:Int, height:Int }, ?parent:hide.Element, ?el:hide.Element):Void
```

Creates a selector of a tileset image with a tile size.

## Variables

### file

```haxe
var file(default, set):String
```

The path of the tileset image.

### size

```haxe
var size(default, set):{ width:Int, height:Int }
```

The tile size, in pixels.

### value

```haxe
var value(default, set):Null<{ y:Int, x:Int, width:Int, height:Int }>
```

The selected tile position and size, in tiles, or null.

### allowRectSelect

```haxe
var allowRectSelect(default, set):Bool
```

Allows selecting a rectangle of tiles.

### allowSizeSelect

```haxe
var allowSizeSelect(default, set):Bool
```

Allows changing the tile size.

### allowFileChange

```haxe
var allowFileChange(default, set):Bool
```

Allows changing the tileset image.

## Methods

### onChange

```haxe
dynamic function onChange(cancel:Bool):Void
```

Called when a tile is chosen, or with `cancel` true when Escape is pressed.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
