# hrt.prefab.l3d.modellibrary.Signature

**class** · package [`hrt.prefab.l3d.modellibrary`](README.md) · source [`hrt/prefab/l3d/modellibrary/Signature.hx`](../../../../../../../hrt/prefab/l3d/modellibrary/Signature.hx)

The signature of the sources of a `ModelLibrary`, to know if it must be baked again.

## Static methods

### load

```haxe
static function load(path:String):Signature
```

Loads a signature, or returns `null`.

### fromModels

```haxe
static function fromModels(targetPath:String, modelPaths:Array<String>):Signature
```

Returns the signature of models.

### fromLib

```haxe
static function fromLib(lib:ModelLibrary):Signature
```

Returns the signature of the models of a library.

## Methods

### computeHash

```haxe
function computeHash():String
```

Returns the SHA-1 of the signature.

### save

```haxe
function save(path:String):Void
```

Saves the signature.
