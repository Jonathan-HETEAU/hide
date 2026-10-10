package hrt.shgraph.nodes;

using hxsl.Ast;

#if editor
import hide.view.GraphInterface;
#end

/**
	The shader graph node "Comment" (Comment): a box that allows you to comment your graph.
**/
@name("Comment")
@description("A box that allows you to comment your graph")
@group("Comment")
class Comment extends ShaderNode {
	/**
		The text.
	**/
	@prop() public var comment : String = "Comment";
	/**
		The width of the box.
	**/
	@prop() public var width : Float = 200;
	/**
		The height of the box.
	**/
	@prop() public var height : Float = 200;

	override function generate(ctx: NodeGenContext) {}

	override function canHavePreview():Bool {
		return false;
	}

	/**
		Creates the node.
	**/
	public function new() {
	}

	#if editor
	override function getInfo() : GraphNodeInfo {
		var info = super.getInfo();
		info.comment = {
			getComment: () -> comment,
			setComment: (v:String) -> comment = v,
			getSize: (p: h2d.col.Point) -> p.set(width, height),
			setSize: (p: h2d.col.Point) -> {width = p.x; height = p.y;},
		};
		info.preview = null;
		return info;
	}
	#end
}