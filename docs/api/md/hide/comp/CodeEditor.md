# hide.comp.CodeEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/CodeEditor.hx`](../../../../../hide_js/hide/comp/CodeEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Subclasses: [`hide.comp.DomkitEditor`](DomkitEditor.md), [`hide.comp.ScriptEditor`](ScriptEditor.md)

A code editor component (Monaco), with completion and error display.

## Constructor

### new

```haxe
function new(code:String, lang:String, ?parent:Null<hide.Element>, ?root:Null<hide.Element>):Void
```

Creates an editor of a code in a language.

## Variables

### code

```haxe
var code(get, null):String
```

The code.

### propagateKeys

```haxe
var propagateKeys:Bool
```

Lets the key events reach the parent elements.

### saveOnBlur

```haxe
var saveOnBlur:Bool
```

Calls `onSave` when the editor loses the focus.

## Methods

### customCtrlSBehavior

```haxe
dynamic function customCtrlSBehavior():Void
```

Called on Ctrl+S, after `onSave`.

### setCode

```haxe
function setCode(code:String, ?keepHistory:Bool = false):Void
```

Replaces the code, keeping the undo history if `keepHistory`.

### focus

```haxe
function focus():Void
```

Focuses the editor.

### onChanged

```haxe
dynamic function onChanged():Void
```

Called when the code changes.

### onSave

```haxe
dynamic function onSave():Void
```

Called on Ctrl+S, and when the editor loses the focus if `saveOnBlur`.

### onClose

```haxe
dynamic function onClose():Void
```

Called when Escape is pressed.

### clearError

```haxe
function clearError():Void
```

Removes the shown error.

### setError

```haxe
function setError(msg:String, line:Int, pmin:Int, pmax:Int):Void
```

Shows an error at a line and position range.

### setCursor

```haxe
function setCursor(line:Int, ?column:Int = 0):Void
```

Moves the cursor and scrolls to a line.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
