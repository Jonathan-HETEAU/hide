# hide.prefab.HideProps

**typedef** · package [`hide.prefab`](README.md) · source [`hide_js/hide/prefab/HideProps.hx`](../../../../../hide_js/hide/prefab/HideProps.hx) · available on editor (js)

The editor properties of a prefab class, returned by `Prefab.getHideProps`.

## Fields

### onResourceRenamed

```haxe
var ?onResourceRenamed:Null<(map:(oldPath:String) -> String) -> Void>
```

Called when resources are renamed, with a function mapping the old paths to the new ones.

### onChildUpdate

```haxe
var ?onChildUpdate:Null<(p:hrt.prefab.Prefab) -> Void>
```

Called when a child property changes.

### name

```haxe
var name:String
```

The displayed name.

### isGround

```haxe
var ?isGround:Null<Bool>
```

The prefab is a ground: the scene editor places objects on it.

### icon

```haxe
var icon:String
```

The icon name.

### hideInAddMenu

```haxe
var ?hideInAddMenu:Null<Bool>
```

Hides the prefab from the add menu.

### hideChildren

```haxe
var ?hideChildren:Null<(p:hrt.prefab.Prefab) -> Bool>
```

Tells if a child is hidden from the tree.

### fileSource

```haxe
var ?fileSource:Null<Array<String>>
```

The file extensions to choose a source file from when the prefab is created.

### applyTreeStyle

```haxe
var ?applyTreeStyle:Null<(p:hrt.prefab.Prefab, element:js.html.Element) -> Void>
```

Customizes the tree element of the prefab.

### allowParent

```haxe
var ?allowParent:Null<(p:hrt.prefab.Prefab) -> Bool>
```

Tells if the prefab can be added under a parent.

### allowChildren

```haxe
var ?allowChildren:Null<(cl:Class<hrt.prefab.Prefab>) -> Bool>
```

Tells if a prefab class can be added as a child.
