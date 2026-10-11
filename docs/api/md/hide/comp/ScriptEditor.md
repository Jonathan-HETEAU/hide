# hide.comp.ScriptEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ScriptEditor.hx`](../../../../../hide_js/hide/comp/ScriptEditor.hx) · available on editor (js)

Extends: [`hide.comp.CodeEditor`](CodeEditor.md) → [`hide.comp.Component`](Component.md)

A code editor for hscript scripts, checking them as they are edited.

## Constructor

### new

```haxe
function new(script:String, ?checker:ScriptChecker, ?parent:Null<hide.Element>, ?root:Null<hide.Element>, ?lang:String = "javascript"):Void
```

Creates the editor of a script. Without checker, only the syntax is checked.

## Static methods

### register

```haxe
static function register(cl:Class<Dynamic>):Bool
```

Registers a class created with each checker (to add types). Returns true, to be used as a static initializer.

## Variables

### checker

```haxe
var checker(default, null):ScriptChecker
```

The script checker.

## Methods

### doCheckScript

```haxe
function doCheckScript():Void
```

Checks the script and shows the error.

## Inherited members

- from [`hide.comp.CodeEditor`](CodeEditor.md): `code`, `propagateKeys`, `saveOnBlur`, `customCtrlSBehavior`, `setCode`, `focus`, `onChanged`, `onSave`, `onClose`, `clearError`, `setError`, `setCursor`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
