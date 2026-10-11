# hide.comp.TextureSelect

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/TextureSelect.hx`](../../../../../hide_js/hide/comp/TextureSelect.hx) · available on editor (js)

Extends: [`hide.comp.FileSelect`](FileSelect.md) → [`hide.comp.Component`](Component.md)

A texture file selection with a preview.

## Constructor

### new

```haxe
function new(?parent:js.jquery.JQuery, ?root:hide.Element, ?handleDrop:Bool = true):Void
```

Creates the selection.

## Static variables

### IMG_EXTS

```haxe
static var IMG_EXTS:Array<String>
```

The selectable image extensions.

## Variables

### value

```haxe
var value(default, set):h3d.mat.Texture
```

The selected texture.

### area

```haxe
var area(default, set):{ y:Int, x:Int, width:Int, height:Int }
```

The area of the texture to use, in pixels, or null.

## Methods

### remove

```haxe
override function remove():Void
```

## Inherited members

- from [`hide.comp.FileSelect`](FileSelect.md): `path`, `disabled`, `directory`, `onView`, `getFullPath`, `onChange`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
