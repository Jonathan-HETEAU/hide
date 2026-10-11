# hide.comp.GlobalsDef

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.ScriptEditor` · source [`hide_js/hide/comp/ScriptEditor.hx`](../../../../../hide_js/hide/comp/ScriptEditor.hx) · available on editor (js)

The `script.api` config: the API of the scripts, by document name pattern.
Each entry can set `globals` (global name to type, `#Type` for the statics of a class or the constructors of an enum, null to remove), `context` or `contexts` (classes whose fields are globals), `publicFields` (only the public methods of the contexts are accessible), `events` (type of the event functions), `evalTo` (expected type of the script value), `allowGlobalsDefine`, `cdbEnums` (CDB sheets available as enums) and `parentScripts` (scripts checked before).

Alias for: `DynamicAccess<{ publicFields:Bool, parentScripts:Array<String>, globals:DynamicAccess<String>, events:String, evalTo:String, contexts:Array<String>, context:String, cdbEnums:Array<String>, allowGlobalsDefine:Null<Bool> }>`
