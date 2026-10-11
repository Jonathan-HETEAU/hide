# hide.kit.Button

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Button.hx`](../../../../../hide/kit/Button.hx) · available on editor (js)

Extends: [`hide.kit.Element`](Element.md)

Subclasses: [`hide.kit.ImageButton`](ImageButton.md)

A button.

## Constructor

### new

```haxe
function new(parent:Element, id:String, label:String):Void
```

Creates a button with a label.

## Variables

### highlight

```haxe
var highlight(default, set):Bool
```

Highlights the button.

### image

```haxe
var image:String
```

The path of the icon.

### medium

```haxe
var medium:Bool
```

Medium size.

### big

```haxe
var big:Bool
```

Big size.

### huge

```haxe
var huge:Bool
```

Huge size.

### quiet

```haxe
var quiet:Bool
```

Without background.

### noUndo

```haxe
var noUndo:Bool
```

Does not record an undo step when clicked.

## Methods

### onClick

```haxe
dynamic function onClick():Void
```

Called when the button is clicked.

## Inherited members

- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
