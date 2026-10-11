# hide.kit.Element

**class** · package [`hide.kit`](README.md) · source [`hide/kit/Element.hx`](../../../../../hide/kit/Element.hx) · available on editor (js)

Subclasses: [`hide.kit.Block`](Block.md), [`hide.kit.Button`](Button.md), [`hide.kit.CDB`](CDB.md), [`hide.kit.Curve`](Curve.md), [`hide.kit.KitRoot`](KitRoot.md), [`hide.kit.Line`](Line.md), [`hide.kit.Separator`](Separator.md), [`hide.kit.Spacer`](Spacer.md), [`hide.kit.Text`](Text.md), [`hide.kit.Widget`](Widget.md)

An element of the property editor kit (`hide.kit`), built with `ctx.build(<markup/>)` in `Prefab.edit2`.

# hrt.prefab.edit -> hrt.prefab.edit2 Migration notes

- new function signature : edit2(ctx: hrt.prefab.EditContext2).
- must be palced outside a `#if editor` block at the moment
- new element creation syntax (replaces `new hide.Element("...")`):
    ctx.build(<element></element>);
- multiple elements can be build at the same time in a ctx.build by putting them in a unique
    `<root></root>` container. This root container will not appear in the final element tree
    example :
        ctx.build(
            <root>
                <category("A")/>
                <category("B")/>
            </root>
        );
- An optional onChange callback can be passed as the 3rd argument to ctx.build. If set, this function will be bound to all the onValueChange / onClick functions of the widgets in this ctx.build

- `<div class="Group" name="Reference></div>` -> `<category("Reference")></category>`
- `<dl></dl>` -> Nothing (this syntax is not needed anymore)
- `<dt>Label</dt><dd><input type="range" field="x"></input><dd>` -> <slider label="Label" field={x}/>
    Note : if no label is specified, an automatic label will be generated from its field expression if possible, automatically adding caps and spaces if needed (i.e a "fooBar" field creates a "Foo Bar" label)
- Widget conversion suggestions :
    `<input type="button" value="Button Name"/>` -> `<button("Button Name")/>`
        Note : to bind a callback, use the onClick attribute on the button, or add an id to the button and add the callback later
    `<input type="range" min="0" max="360"/>` -> `<range(0, 360)/>`
    `<input type="text">` -> `<input/>`
    `<select></select>` -> `<select(["Choice 1", "Choice 2"])/>`
        Note : the option list can either be a string or an Array<{value: Dynamic, label: String}>. A string array will automatically be converted in a value/label string using the string as the value and the label. The widget `value` will be equal to the `value` of the currently selected item
        Additionally, if the field is an enum, a list of values generated from the enum possible values is generated automatically if you don't supply an option list
    `<input type="texturepath"/>` -> `<file type="texture">` if you don't want to support gratiend (95% of non shader use-cases), otherwise use a `<texture/>`
    `<input type="fileselect" extensions="..."/>` -> `<file type="type_name"/>` The list of allowed type can be found in hide.kit.File.types, you can add more types to the list if needed
    `<p>Info message</p>` -> `<text("Info message")/>`

- Editor api conversions :
    `ctx.rebuildProperties()` -> `ctx.rebuildInspector()`
    `shaded.editor.refreshInteractive(this)` -> `ctx.rebuildPrefab(this)`;
    `shaded.editor.refreshTree(All)` -> `ctx.rebuildTree(this)`;
    `ctx.rebuildPrefab(this)` -> `ctx.rebuildPrefab(this)`;
    `<input title="Tooltip"/>` -> `<element tooltip="Tooltip"/>`
    Callbacks bound in the onChange function should be bound on the relevant widget onValueChange instead

## Constructor

### new

```haxe
function new(parent:Element, id:String):Void
```

Creates the element, child of `parent`, with an id unique among its siblings.

## Static methods

### setNativeColor

```haxe
static function setNativeColor(element:NativeElement, color:KitColor):Void
```

Sets the color class of a native element.

## Variables

### singleEdit

```haxe
var singleEdit:Bool
```

If set, the element and its children will be disabled when editing more than one prefab at the time.

### disabled

```haxe
var disabled(default, set):Bool
```

If set, the element and its children can't be edited and will be grayed out
use isDisabled to know if this element is editable or not (because it depend on the disabled state of it's parent)

### width

```haxe
var width:Null<Int>
```

If set, the element will take width units of space in its line

### tooltip

```haxe
var tooltip:String
```

If set, add a tooltip on hover for this element

### id

```haxe
var id(default, null):String
```

Internal ID of this element that is unique between this element siblings (use getIdPath for a unique identifier in this element tree)

### numChildren

```haxe
var numChildren(get, null):Int
```

The number of children.

## Methods

### getChildren

```haxe
function getChildren():ReadOnlyArray<Element>
```

Returns the children.

### make

```haxe
function make(?attach:Bool = true):Void
```

Create the native elements of this Element to be displayed in the editor

### getIdPath

```haxe
function getIdPath():String
```

Get a path uniquely identifying this Element from the root

### getById

```haxe
function getById(id:String, ?cl:Class<getById.T>):getById.T
```

Find the first element that has the given id in this element children, recursive

### refreshFields

```haxe
function refreshFields():Void
```

Refresh the values of all the widgets that are bound to a field to the actual field value

### collapse

```haxe
function collapse():Void
```

Collapses the categories of the children.

### getOrMakeLine

```haxe
function getOrMakeLine():Line
```

Get the line of this widget, or wrap this widget in one if it doesn't exist
Only guaranteed to work if the widget hasn't been made yet

### buildPropsList

```haxe
function buildPropsList(defs:Array<hrt.prefab.PropDef>, props:Dynamic):Void
```

Create elements from a runtime propsDef to edit the

### buildProp

```haxe
function buildProp(def:hrt.prefab.PropDef, props:Dynamic):Widget<Dynamic>
```

Adds the widget of a property definition, editing `props`.

### remove

```haxe
function remove():Void
```

Removes the element from its parent.
