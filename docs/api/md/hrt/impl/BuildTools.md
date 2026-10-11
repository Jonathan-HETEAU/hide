# hrt.impl.BuildTools

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/BuildTools.hx`](../../../../../hrt/impl/BuildTools.hx)

Builds the resources of a project.

## Static methods

### buildAllFiles

```haxe
static function buildAllFiles(?baseDir:String, ?onProgress:(percent:Float, currentFile:String) -> Void, ?onError:() -> Void, ?onDone:(count:Int, errCount:Int) -> Void):Void
```

Build all files in `baseDir` directory (default: `res/`).
