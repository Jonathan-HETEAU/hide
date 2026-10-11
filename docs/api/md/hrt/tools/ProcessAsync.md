# hrt.tools.ProcessAsync

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/ProcessAsync.hx`](../../../../../hrt/tools/ProcessAsync.hx)

Run a process asynchronously, calling the given callback once the execution
of the process has been completed

## Constructor

### new

```haxe
function new(command:String, ?args:Array<String>, onCompletion:(process:sys.io.Process) -> Void):Void
```

Starts the process, calling `onCompletion` when it exits.
