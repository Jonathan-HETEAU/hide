# hide.kit.NativeElement

**abstract** · package [`hide.kit`](README.md) · source [`hide/kit/NativeElement.hx`](../../../../../hide/kit/NativeElement.hx) · available on editor (js)

A native element of the kit.

Underlying type: [`hide.kit.NativeElementType`](NativeElementType.md)

Implicit casts from: `NativeElementType`

Implicit casts to: `NativeElementType`

## Static methods

### create

```haxe
static function create(kind:String):NativeElement
```

Creates an element of a kind (tag name, or class in Hui).

## Methods

### addClass

```haxe
function addClass(name:String):Void
```

Adds a CSS class.

### toggleClass

```haxe
function toggleClass(name:String, ?force:Bool):Void
```

Toggles a CSS class (sets it if `force` is not `null`).

### get

```haxe
function get():NativeElementType
```

Returns the native element.

### addChild

```haxe
function addChild(other:NativeElement):Void
```

Adds a child.
