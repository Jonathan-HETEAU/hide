# hrt.prefab.rfx.ConfiguratorInterp

**class** · package [`hrt.prefab.rfx`](README.md) · module `hrt.prefab.rfx.Configurator` · source [`hrt/prefab/rfx/Configurator.hx`](../../../../../../hrt/prefab/rfx/Configurator.hx)

Extends: `hscript.Interp`

The script interpreter of a `Configurator`: remembers the fields it changes, to restore them after the frame.

## Constructor

### new

```haxe
function new():Void
```

Creates the interpreter.

## Variables

### allowChanges

```haxe
var allowChanges:Bool
```

Keeps the changes instead of restoring them after the frame.

## Methods

### restoreVars

```haxe
function restoreVars():Void
```

Restores the fields changed by the script.
