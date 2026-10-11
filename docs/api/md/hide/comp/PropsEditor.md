# hide.comp.PropsEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/PropsEditor.hx`](../../../../../hide_js/hide/comp/PropsEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

The properties panel component: binds the inputs of an HTML description (`field` attributes) to the fields of an object, with undo, sections, groups and multi-edition.

## Constructor

### new

```haxe
function new(?undo:hide.ui.UndoHistory, ?parent:hide.Element, ?el:hide.Element):Void
```

Creates an editor.

## Static methods

### makePropEl

```haxe
static function makePropEl(p:hrt.prefab.PropDef, parent:hide.Element):Void
```

Adds the input of a property definition to an element.

### makeGroupEl

```haxe
static function makeGroupEl(name:String, content:hide.Element):js.jquery.JQuery
```

Returns a collapsible group element.

### makeSectionEl

```haxe
static function makeSectionEl(name:String, content:hide.Element, ?headerContent:Null<hide.Element>):js.jquery.JQuery
```

Returns a collapsible section element.

### makeLabelEl

```haxe
static function makeLabelEl(name:String, content:hide.Element):js.jquery.JQuery
```

Returns a labeled property element.

### makeListEl

```haxe
static function makeListEl(content:Array<hide.Element>):js.jquery.JQuery
```

Returns a list of property elements.

### getCategory

```haxe
static function getCategory(p:hrt.prefab.PropDef):String
```

Returns the category of a property (the name prefix before `_`), or null.

### makePropsList

```haxe
static function makePropsList(props:Array<hrt.prefab.PropDef>):hide.Element
```

Returns a list of labeled inputs for property definitions.

### wrapDt

```haxe
static function wrapDt(dt:hide.Element, defValue:String, onClick:(e:js.jquery.Event) -> Void):Void
```

Makes a label a button resetting its field (ctrl+click rounds it).

## Variables

### undo

```haxe
var undo:hide.ui.UndoHistory
```

The undo history.

### lastChange

```haxe
var lastChange:Float
```

The time of the last change.

### fields

```haxe
var fields(default, null):Array<PropsField>
```

The bound fields.

### groups

```haxe
var groups(default, null):GroupMap
```

The field groups.

### multiPropsEditor

```haxe
var multiPropsEditor:Array<PropsEditor>
```

The editors of the other edited objects: the changes are applied to their fields too.

### isTempChange

```haxe
var isTempChange:Bool
```

True while the current change is temporary (during a drag).

### isShadowEditor

```haxe
var isShadowEditor:Bool
```

The editor is one of the `multiPropsEditor` of another one.

## Methods

### onRefresh

```haxe
dynamic function onRefresh():Void
```

Called when the props editor wants a full refresh.

### onMultiEditEnd

```haxe
dynamic function onMultiEditEnd():() -> Void
```

Called once a change has been propagated to all the `multiPropsEditor`. The returned function is called after undo/redo of that change.

### clear

```haxe
function clear():Void
```

Removes all the fields.

### addMaterial

```haxe
function addMaterial(m:h3d.mat.Material, ?parent:Null<hide.Element>, ?onChange:() -> Void):Void
```

Adds the properties of a material.

### addProps

```haxe
function addProps(props:Array<hrt.prefab.PropDef>, context:Dynamic, ?onChange:() -> Void):hide.Element
```

Adds property definitions bound to an object.

### add

```haxe
function add(e:hide.Element, ?context:Dynamic, ?onChange:() -> Void):hide.Element
```

Adds an HTML description bound to an object. `onChange` is called with the changed field name.

### build

```haxe
function build(e:hide.Element, ?context:Dynamic, ?onChange:() -> Void):hide.Element
```

Binds the inputs of an HTML description to an object and sets up its sections and groups.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
