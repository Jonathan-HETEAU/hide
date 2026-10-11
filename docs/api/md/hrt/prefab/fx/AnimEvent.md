# hrt.prefab.fx.AnimEvent

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/AnimEvent.hx`](../../../../../../hrt/prefab/fx/AnimEvent.hx)

Extends: [`hrt.prefab.fx.Event`](Event.md) → [`hrt.prefab.Prefab`](../Prefab.md)

An FX event playing an animation on the first object of the event.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### animation

```haxe
var animation:String
```

The path of the animation.

### loop

```haxe
var loop:Bool
```

Loops the animation.

### speed

```haxe
var speed:Float
```

The speed of the animation.

### offset

```haxe
var offset:Float
```

The time offset of the animation, in seconds.

## Methods

### prepare

```haxe
override function prepare():EventInstance
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### getDisplayInfo _(editor (js) only)_

```haxe
override function getDisplayInfo(ctx:hide.prefab.EditContext):{ loop:Bool, label:Null<String> }
```

### editorAllowChild

```haxe
override function editorAllowChild(cl:Class<hrt.prefab.Prefab>):Bool
```

### getDuration

```haxe
override function getDuration():Float
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):AnimEvent
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.fx.Event`](Event.md): `time`, `duration`, `hidden`, `lock`, `selected`, `getDuration`, `prepare`, `edit2`, `getEventPrefab`, `edit`, `getHideProps`, `getDisplayInfo`, `canEditDuration`, `setDuration`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
