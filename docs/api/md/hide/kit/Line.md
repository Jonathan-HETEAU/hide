# hide.kit.Line

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Line.hx`](../../../../../hide/kit/Line.hx) · available on editor (js)

Extends: [`hide.kit.Element`](Element.md)

Subclasses: [`hide.kit.KitListHeader`](KitListHeader.md), [`hide.kit.SliderGroup`](SliderGroup.md)

A line, with a label and content.

## Constructor

### new

```haxe
function new(parent:Element, id:String):Void
```

## Variables

### label

```haxe
var label:String
```

The label.

### multiline

```haxe
var multiline:Bool
```

Shows the content under the label.

### full

```haxe
var full:Bool
```

Takes the whole width, without label column.

### labelElement

```haxe
var labelElement:NativeElement
```

The label element.

### multilineElement

```haxe
var multilineElement:NativeElement
```

The content element of a multiline line.

## Methods

### addDecorationLeft

```haxe
function addDecorationLeft(element:Element):Void
```

Add a widget to the line that appears at the left edge of the property panel

## Inherited members

- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
