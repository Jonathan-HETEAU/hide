# hrt.prefab.Curve

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Curve.hx`](../../../../../hrt/prefab/Curve.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

An animation curve: keys interpolated over time, used by the FX and the emitters (named `property:component`, such as `scale:x`).

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab.

## Static variables

### BAKE_ENABLE _(runtime (hl) only)_

```haxe
static var BAKE_ENABLE:Bool
```

Bakes the curves into samples for faster evaluation (runtime only).

### BAKE_MAX_DURATION _(runtime (hl) only)_

```haxe
static var BAKE_MAX_DURATION:Float
```

The maximum duration of the baked curves, in seconds.

### BAKE_RESOLUTION _(runtime (hl) only)_

```haxe
static var BAKE_RESOLUTION:Float
```

The number of samples per second of the baked curves.

## Static methods

### getCurve

```haxe
static function getCurve(parent:Prefab, name:String, ?onlyEnabled:Bool = true):Null<Curve>
```

Returns the child curve of `parent` with the given name (or `name:component`), or `null`.

### getCurves

```haxe
static function getCurves(parent:Prefab, prefix:String):Null<Array<Null<Curve>>>
```

Returns the children curves of `parent` whose name starts with the prefix (`prefix:component`), or `null`.

### getGroups

```haxe
static function getGroups(curves:Array<Curve>):Array<{ name:String, items:Array<Curve> }>
```

Groups the curves by name prefix (before `:`).

### getVectorValue

```haxe
static function getVectorValue(curves:Array<Curve>, ?defVal:Float = 0.0, ?scale:Float = 1.0, ?randomValue:Float = 0):hrt.prefab.fx.Value
```

Returns the vector value of the `:x`, `:y`, `:z` (and `:w`) curves (`defVal` for the missing ones), multiplied by `scale`.

### getColorValue

```haxe
static function getColorValue(curves:Array<Curve>):hrt.prefab.fx.Value
```

Returns the color value of the `:r`, `:g`, `:b`, `:a` curves, or `:h`, `:s`, `:l` (white by default).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### keyMode

```haxe
var keyMode:CurveKeyMode
```

The default interpolation mode of the keys.

### keys

```haxe
var keys:CurveKeys
```

The keys, sorted by time.

### previewKeys

```haxe
var previewKeys:CurveKeys
```

Keys displayed in the editor, not used for the values.

### blendMode

```haxe
var blendMode:CurveBlendMode
```

How the values are computed: from the keys, by blending the two children curves, or from a referenced curve.

### loop

```haxe
var loop:Bool
```

Loops the curve after its last key.

### blendParam

```haxe
var blendParam:String
```

The FX parameter blending the two children curves (`Blend`), or the path of the referenced curve (`Reference`).

### remapPath

```haxe
var remapPath:String
```

The curve (path) or FX parameter (`$param.name`) remapping the values, or `null`.

### offset

```haxe
var offset:Float
```

The offset added to the values of a referenced curve.

### scale

```haxe
var scale:Float
```

The scale of the values of a referenced curve.

### maxTime

```haxe
var maxTime:Float
```

The maximum time shown in the editor.

### duration

```haxe
var duration(get, null):Float
```

The time of the last key.

### minValue

```haxe
var minValue:Float
```

The minimum value shown in the editor.

### maxValue

```haxe
var maxValue:Float
```

The maximum value shown in the editor.

### color

```haxe
var color:Int
```

The color of the curve in the editor.

### hidden

```haxe
var hidden:Bool
```

Hides the curve in the editor.

### lock

```haxe
var lock:Bool
```

Prevents the edition of the curve in the editor.

### selected

```haxe
var selected:Bool
```

Tells if the curve is selected in the editor.

## Methods

### load

```haxe
override function load(o:Dynamic):Void
```

### findKey

```haxe
function findKey(time:Float, tolerance:Float):Null<CurveKey>
```

Returns the key closest to the time, within `tolerance`, or `null`.

### addKey

```haxe
function addKey(time:Float, ?val:Float, ?mode:CurveKeyMode):CurveKey
```

Adds a key at the time, with the value (the current value by default) and mode, and returns it.

### addPreviewKey

```haxe
function addPreviewKey(time:Float, val:Float):CurveKey
```

Adds a preview key and returns it.

### getBounds

```haxe
function getBounds(?bounds:h2d.col.Bounds):Null<h2d.col.Bounds>
```

Returns the bounds of the keys and handles (time on X, value on Y).

### getRemapParameter

```haxe
function getRemapParameter():Null<String>
```

Returns the FX parameter remapping the values (`remapPath` `$param.name`), or `null`.

### makeVal

```haxe
function makeVal(?ignoreRemap:Bool = false):hrt.prefab.fx.Value
```

Returns the value of the curve for the FX evaluator (see `hrt.prefab.fx.Value`), remapped unless `ignoreRemap` is set.

### getVal

```haxe
function getVal(time:Float):Float
```

Returns the value of the curve at the time.

### getSum

```haxe
function getSum(time:Float):Float
```

Returns the integral of the curve from `0` to the time.

### sample

```haxe
function sample(numPts:Int):Null<Array<Float>>
```

Returns `numPts` values sampled over the duration.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### getSvgString _(editor (js) only)_

```haxe
function getSvgString():String
```

Returns the visual representation of this curve as an svg path `d` data.

### initFromCDB

```haxe
function initFromCDB(curve:cdb.Curve):Void
```

Sets the keys from a CastleDB curve.

### toCDB

```haxe
function toCDB():cdb.Curve
```

Returns the keys as a CastleDB curve.

### make

```haxe
override function make(?sh:ContextMake):Curve
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
