package hrt.shgraph.nodes;

/**
	The base of the nodes reading or writing a local variable of the graph.
**/
abstract class ShaderVar extends ShaderNode {
	/**
		The index of the variable in `ShaderGraph.variables`.
	**/
	@prop() public var varId : Int = 0;

	#if editor
	override function getInfo():hide.view.GraphInterface.GraphNodeInfo {
		var info = super.getInfo();

		info.contextMenu = (e: js.html.MouseEvent) -> {
			hide.comp.ContextMenu.createFromEvent(e, [
				{label: "Show in Variable list", click: () -> {
					(cast editor.editor: hide.view.shadereditor.ShaderEditor).revealVariable(varId);
				}},
			]);
		}
		return info;
	}
	#end
}