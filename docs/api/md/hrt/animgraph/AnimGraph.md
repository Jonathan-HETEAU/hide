# hrt.animgraph.AnimGraph

**class** · package [`hrt.animgraph`](README.md) · source [`hrt/animgraph/AnimGraph.hx`](../../../../../hrt/animgraph/AnimGraph.hx)

Extends: [`hrt.prefab.Prefab`](../prefab/Prefab.md)

An animation graph made with nodes in the editor (`.animgraph` file): blends animations depending on parameters. Play it with `getAnimation`.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static variables

### customResolverProvider

```haxe
static var customResolverProvider:(graph:AnimGraph) -> AnimResolver
```

Called by getAnimation when the given resolver is null. Allow the game to provide a custom animation resolver on a prefab by prefab basis.

### customAnimNameLister _(editor (js) only)_

```haxe
static var customAnimNameLister:(context:EditorProviderContext) -> Array<String>
```

Used to display a list of valid animation names to use with the animResolver feature

### customEditorResolverProvider _(editor (js) only)_

```haxe
static var customEditorResolverProvider:(context:EditorProviderContext) -> Array<{ resolver:AnimResolver, name:String }>
```

Return a list of resolvers to use in the editor to preview various configurations.
name is the string that will be displayed in the Anim Set selection box in the editor

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### getAnimation

```haxe
function getAnimation(?previewNode:hrt.animgraph.nodes.AnimNode, ?modelCache:h3d.prim.ModelCache, ?resolver:Null<AnimResolver>):AnimGraphInstance
```

Get the animation "template" for this AnimGraph.
This anim should be instanciated using getInstance() after that (or use the h3d.scene.Object.playAnimation() function that does this for you)

### getNodeByEditorId _(editor (js) only)_

```haxe
function getNodeByEditorId(id:Int):Node
```

Returns the node of an editor id (editor only).

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):AnimGraph
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../prefab/Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
