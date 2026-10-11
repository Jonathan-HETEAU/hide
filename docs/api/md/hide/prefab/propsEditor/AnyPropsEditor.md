# hide.prefab.propsEditor.AnyPropsEditor

**class** · package [`hide.prefab.propsEditor`](README.md) · source [`hide/prefab/propsEditor/AnyPropsEditor.hx`](../../../../../../hide/prefab/propsEditor/AnyPropsEditor.hx) · available on editor (js)

Type parameters: `<T>`

Subclasses: [`hide.prefab.propsEditor.Material`](Material.md), [`hide.prefab.propsEditor.PbrMaterial`](PbrMaterial.md), [`hide.prefab.propsEditor.PbrRenderer`](PbrRenderer.md)

Edits the properties of a `hxd.impl.AnyProps` object (materials, renderers...).

## Static methods

### makeEditor

```haxe
static function makeEditor(props:hxd.impl.AnyProps):AnyPropsEditor<Dynamic>
```

Returns the editor of an object, for its class or a parent class.

## Variables

### props

```haxe
var props:hide.prefab.propsEditor.AnyPropsEditor.T
```

The edited properties.

## Methods

### edit2

```haxe
function edit2(ctx:hrt.prefab.EditContext2, root:hide.kit.Element, ?customProps:Dynamic, ?onChange:(tmp:Bool) -> Void):Void
```

add element to root
