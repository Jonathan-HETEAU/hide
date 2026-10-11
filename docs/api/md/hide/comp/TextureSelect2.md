# hide.comp.TextureSelect2

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/TextureSelect2.hx`](../../../../../hide_js/hide/comp/TextureSelect2.hx) · available on editor (js)

Extends: [`hide.comp.FileSelect2`](FileSelect2.md) → [`hide.comp.Component`](Component.md)

A texture file selection with a preview (`FileSelect2` version).

## Constructor

### new

```haxe
function new(?parent:hide.Element, ?root:js.jquery.JQuery, ?handleDrop:Bool = true):Void
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

## Inherited members

- from [`hide.comp.FileSelect2`](FileSelect2.md): `path`, `disabled`, `directory`, `remove`, `onView`, `getFullPath`, `onChange`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
