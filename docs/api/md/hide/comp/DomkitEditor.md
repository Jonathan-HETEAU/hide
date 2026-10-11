# hide.comp.DomkitEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/DomkitEditor.hx`](../../../../../hide_js/hide/comp/DomkitEditor.hx) · available on editor (js)

Extends: [`hide.comp.CodeEditor`](CodeEditor.md) → [`hide.comp.Component`](Component.md)

A code editor for domkit markup or style sheets, checking them as they are edited.

## Constructor

### new

```haxe
function new(kind:DomkitEditorKind, code:String, checker:DomkitChecker, ?parent:Null<hide.Element>, ?root:Null<hide.Element>):Void
```

Creates the editor of a code.

## Variables

### kind

```haxe
var kind:DomkitEditorKind
```

The language.

### checker

```haxe
var checker:DomkitChecker
```

The checker.

## Methods

### setDomkitError

```haxe
function setDomkitError(e:domkit.Error):Void
```

Shows a domkit error.

### check

```haxe
function check():Void
```

Checks the code and shows the error.

### gotoComponent

```haxe
dynamic function gotoComponent(name:String):Void
```

Called to open the definition of a component.

### getComponent

```haxe
function getComponent():Null<domkit.TypedComponent>
```

Returns the name of the last closed component of the markup, or null.

## Inherited members

- from [`hide.comp.CodeEditor`](CodeEditor.md): `code`, `propagateKeys`, `saveOnBlur`, `customCtrlSBehavior`, `setCode`, `focus`, `onChanged`, `onSave`, `onClose`, `clearError`, `setError`, `setCursor`
- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
