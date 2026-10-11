# hrt.prefab.fx.EmitterHelper

**class** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/EmitterHelper.hx`](../../../../../../hrt/prefab/fx/EmitterHelper.hx)

Helpers for the emitter parameters.

## Static methods

### makeColor

```haxe
static function makeColor(scope:hrt.prefab.Prefab, name:String):Null<Value>
```

Returns the color value of the curves named `name` in `scope`, or `null`.

### randProp

```haxe
static function randProp(name:String):String
```

Returns the name of the random variation property of a parameter.

### resetParam

```haxe
static function resetParam(props:Dynamic, param:ParamDef):Void
```

Sets the property of the parameter to its default value (copied for an array).

### toArray

```haxe
static function toArray(v:Dynamic):Array<Float>
```

Returns the array as an `Array<Float>`, or `null`.

### sameArray

```haxe
static function sameArray(a:Array<Float>, b:Array<Float>):Bool
```

Tells if the two arrays have the same values.

### getParamVal

```haxe
static function getParamVal(params:Map<String, ParamDef>, props:Dynamic, name:String, ?rand:Bool = false):Dynamic
```

Returns the value of the parameter `name` in `props` (or its random variation if `rand`), or its default value. Vectors are returned as `h3d.Vector`.

### generateEdit _(editor (js) only)_

```haxe
static function generateEdit(params:Array<ParamDef>, instanceParams:Array<ParamDef>, props:Dynamic, properties:hide.comp.PropsEditor, onChange:(pname:String) -> Void, refresh:() -> Void, ?typed:Bool = false):Void
```

Builds the editor properties of the parameters (editor only).
