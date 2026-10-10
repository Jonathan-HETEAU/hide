package hrt.shgraph;

import Type as HaxeType;
using hxsl.Ast;

import h3d.scene.Mesh;

using Lambda;
using hrt.shgraph.Utils;
import hrt.shgraph.AstTools.*;
import hrt.shgraph.ShaderGraph;
import hrt.shgraph.SgHxslVar.ShaderDefInput;

#if editor
import hide.view.GraphInterface;
#end


/**
	Displays the transparency of a node preview on a checkerboard.
**/
class AlphaPreview extends hxsl.Shader {
	static var SRC = {
		var pixelColor : Vec4;
		var screenUV : Vec2;
		function fragment() {
			var gray_lt = vec3(1.0);
			var gray_dk = vec3(229.0) / 255.0;
			var scale = 16.0;
			var localUV = screenUV * scale;

			var checkboard = floor(localUV.x) + floor(localUV.y);
			checkboard = fract(checkboard * 0.5) * 2.0;
			var alphaColor = vec3(checkboard * (gray_dk - gray_lt) + gray_lt);

			pixelColor.rgb = mix(pixelColor.rgb, alphaColor, 1.0 - pixelColor.a);
			pixelColor.a = 1.0;
		}
	}
}

/**
	An input of a node.
**/
typedef InputInfo = {
	/**
		The name.
	**/
	var name : String;
	/**
		The type.
	**/
	var type : SgType;
	/**
		The default value when not connected.
	**/
	var def : ShaderDefInput;
	/**
		Tells if the default value can be edited on the node.
	**/
	var ?inlineEditable : Bool;
};
/**
	An output of a node.
**/
typedef OutputInfo = {
	/**
		The name.
	**/
	var name : String;
	/**
		The type.
	**/
	var type : SgType;
};
/**
	A variable available as a node input or output.
**/
typedef VariableDecl = {
	/**
		The variable.
	**/
	var v : TVar;
	/**
		The display name.
	**/
	var display : String;
	/**
		Tells if the variable is only available in the vertex shader.
	**/
	var ?vertexOnly : Bool;
};
/**
	Another entry of a node in the node menu.
**/
typedef AliasInfo = {
	/**
		The name used by the search.
	**/
	var ?nameSearch : String;
	/**
		The name of the node.
	**/
	var ?nameOverride : String;
	/**
		The description.
	**/
	var ?description : String;
	/**
		The arguments of the node constructor.
	**/
	var ?args : Array<Dynamic>;
	/**
		The group.
	**/
	var ?group : String;
};
/**
	A node of a shader graph. Subclasses are registered automatically, and declare their inputs and outputs (`getInputs`, `getOutputs`) and generate their expressions (`generate`). The fields with `@prop` metadata are saved.
**/
@:autoBuild(hrt.shgraph.Macros.autoRegisterNode())
@:keepSub
@:keep
class ShaderNode
#if editor
implements hide.view.GraphInterface.IGraphNode
#end
{

	/**
		The id in the graph.
	**/
	public var id : Int;
	/**
		The X position in the editor.
	**/
	public var x : Float;
	/**
		The Y position in the editor.
	**/
	public var y : Float;
	/**
		Shows the preview of the node in the editor.
	**/
	public var showPreview : Bool = true;
	/**
		The graph.
	**/
	public var graph : ShaderGraph.Graph;

	/**
		The displayed name, or `null` for the name of the class.
	**/
	@prop public var nameOverride : String;


	#if editor
	/** Types of the inputs/outputs with their dynamic types resolved, set by Graph.resolveTypes() (null entries are unresolved) **/
	public var resolvedInputTypes : Array<Null<SgType>> = null;
	/**
		The types of the outputs, with their dynamic types resolved by `Graph.resolveTypes` (`null` entries are unresolved; editor only).
	**/
	public var resolvedOutputTypes : Array<Null<SgType>> = null;

	/**
		Returns the resolved type of an input (editor only).
	**/
	public function getResolvedInputType(id: Int) : Null<SgType> {
		return (resolvedInputTypes != null ? resolvedInputTypes[id] : null) ?? getInputs()[id]?.type;
	}

	/**
		Returns the resolved type of an output (editor only).
	**/
	public function getResolvedOutputType(id: Int) : Null<SgType> {
		return (resolvedOutputTypes != null ? resolvedOutputTypes[id] : null) ?? getOutputs()[id]?.type;
	}

	// IGraphNode Interface
	/**
		Returns the display information of the node (editor only).
	**/
	public function getInfo() : GraphNodeInfo {
		var metas = haxe.rtti.Meta.getType(HaxeType.getClass(this));
		return {
			name: nameOverride ?? (metas.name != null ? metas.name[0] : "undefined"),
			inputs: [
				for (inputId => i in getInputs()) {
					var defaultParam = null;
					if (i.inlineEditable) switch (i.def) {
						case Const(intialValue):
							defaultParam = {
								get: () -> Std.string(Reflect.getProperty(defaults, i.name) ?? intialValue),
								set: setDefaultParam.bind(i.name),
							};
						default:
					}
					var t = getResolvedInputType(inputId);
					{
						name: i.name,
						color: getTypeColor(t),
						shape: getTypeShape(t),
						tooltip: getTypeDisplayName(t),
						defaultParam: defaultParam,
					}
				}
			],
			outputs: [
				for (outputId => o in getOutputs()) {
					var t = getResolvedOutputType(outputId);
					{
						name: o.name,
						color: getTypeColor(t),
						shape: getTypeShape(t),
						tooltip: getTypeDisplayName(t),
					}
				}
			],
			preview: {
				getVisible: () -> showPreview,
				setVisible: (b:Bool) -> showPreview = b,
				fullSize: false,
			},
			width: metas.width != null ? metas.width[0] : null,
			noHeader: Reflect.hasField(metas, "noheader"),
		};
	}

	static function getTypeColor(type: SgType) : Int {
		return switch (type) {
			case SgFloat(1):
				0x179299;
			case SgFloat(2):
				0x40a02b;
			case SgFloat(3):
				0xdf8e1d;
			case SgFloat(4):
				0xfe640b;
			case SgInt:
				0x04a5e5;
			case SgSampler:
				0x8839ef;
			case SgBool:
				0xd20f39;
			default:
				0xbcc0cc;
		}
	}

	static function getTypeShape(type: SgType) : PinShape {
		return switch (type) {
			case SgFloat(_):
				return Dot;
			case SgSampler:
				return Square;
			case SgBool:
				return Rhombus;
			default:
				return Dot;
		}
	}

	static function getTypeDisplayName(type: SgType) : String {
		return switch (type) {
			case SgFloat(1):
				return 'Float';
			case SgFloat(n):
				return 'Vec$n';
			case SgInt:
				return 'Int';
			case SgSampler:
				return 'Sampler';
			case SgBool:
				return 'Bool';
			default:
				return 'Unknown';
		}
	}

	/**
		Returns the id.
	**/
	public function getId() : Int {
		return id;
	}

	/**
		Sets `p` to the position.
	**/
	public function getPos(p : h2d.col.Point) : Void {
		p.set(x,y);
	}

	/**
		Sets the position.
	**/
	public function setPos(p : h2d.col.Point) : Void {
		x = p.x;
		y = p.y;
	}

	/**
		Returns the elements editing the properties of the node (editor only).
	**/
	public function getPropertiesHTML(width : Float) : Array<hide.Element> {
		return [];
	}

	/**
		The graph editor (editor only).
	**/
	public var editor : hide.view.GraphEditor;

	/**
		Sets the default value of an input and recompiles (editor only).
	**/
	public function setDefaultParam(name: String, value: String) {
		Reflect.setField(defaults, name, Std.parseFloat(value));
		requestRecompile();
	}

	/**
		Asks the shader editor to recompile (editor only).
	**/
	public function requestRecompile() {
		Std.downcast(editor.editor, hide.view.shadereditor.ShaderEditor)?.requestRecompile();
	}
	#end

	/**
		Returns the serialized node.
	**/
	public function serializeToDynamic() : Dynamic {
		return {
			x: x,
			y: y,
			id: id,
			type: std.Type.getClassName(std.Type.getClass(this)),
			properties: saveProperties(),
		};
	}

	/**
		Creates a node from its serialized data.
	**/
	public static function createFromDynamic(data: Dynamic, graph: ShaderGraph.Graph) : ShaderNode {
		var type = std.Type.resolveClass(data.type);
		var inst = std.Type.createInstance(type, []);
		inst.x = data.x;
		inst.y = data.y;
		inst.id = data.id;
		inst.graph = graph;
		inst.connections = [];
		inst.loadProperties(data.properties);
		return inst;
	}

	/**
		The default values of the inputs, by name.
	**/
	public var defaults : Dynamic = {};

	/**
		Declare all the inputs this node uses
	**/
	public function getInputs() : Array<InputInfo> {
		return [];
	}

	/**
		Declare all the outputs this node uses
	**/
	public function getOutputs() : Array<OutputInfo> {
		return [];
	}

	/**
		Generate the hxsl expressions and outputs of the node
	**/
	public function generate(ctx: NodeGenContext) : Void {
		throw "generate is not defined for class " + std.Type.getClassName(std.Type.getClass(this));
	}

	function getDef(name: String, def: Float) {
		var value : Any = Reflect.getProperty(defaults, name);
		if ( value == null )
			return def;
		if ( Std.isOfType(value, String) )
			return Std.parseFloat(value) ?? def;
		return cast(value, Float);
	}

	/**
		Returns the other entries of the node in the node menu, from its `@alias` metadata.
	**/
	public function getAliases(name: String, group: String, description: String) : Array<AliasInfo> {
		var cl = HaxeType.getClass(this);
		var meta = haxe.rtti.Meta.getType(cl);
		var aliases : Array<AliasInfo> = [];

		if (meta.alias != null) {
			for (a in meta.alias) {
				aliases.push({nameOverride: '$a'});
			}
		}
		return aliases;
	}
	/**
		The connections of the inputs, by input id.
	**/
	public var connections : Array<ShaderGraph.Connection> = [];

	/**
		Sets the id.
	**/
	public function setId(id : Int) {
		this.id = id;
	}

	/**
		Loads the saved properties.
	**/
	public function loadProperties(props : Dynamic) {
		var fields = Reflect.fields(props);
		showPreview = props.showPreview ?? true;
		nameOverride = props.nameOverride;

		for (f in fields) {
			if (f == "defaults") {
				defaults = Reflect.field(props, f);
			}
			else {
				if (Reflect.hasField(this, f)) {
					Reflect.setField(this, f, Reflect.field(props, f));
				}
			}
		}
	}

	/**
		Tells if the preview is shown.
	**/
	final public function shouldShowPreview() : Bool {
		return showPreview && canHavePreview();
	}

	/**
		Tells if the node can have a preview. Returns `true` by default.
	**/
	public function canHavePreview() : Bool {
		return true;
	}

	/**
		Returns the properties to save: the `@prop` fields and the default values.
	**/
	public function saveProperties() : Dynamic {
		var parameters : Dynamic = {};

		var thisClass = std.Type.getClass(this);
		var fields = std.Type.getInstanceFields(thisClass);
		var metas = haxe.rtti.Meta.getFields(thisClass);
		var metaSuperClass = haxe.rtti.Meta.getFields(std.Type.getSuperClass(thisClass));

		for (f in fields) {
			var m = Reflect.field(metas, f);
			if (m == null) {
				m = Reflect.field(metaSuperClass, f);
				if (m == null)
					continue;
			}
			if (Reflect.hasField(m, "prop")) {
				var metaData : Array<String> = Reflect.field(m, "prop");
				if (metaData == null || metaData.length == 0 || metaData[0] != "macro") {
					Reflect.setField(parameters, f, Reflect.getProperty(this, f));
				}
			}
		}

		if (Reflect.fields(defaults).length > 0) {
			Reflect.setField(parameters, "defaults", defaults);
		}

		parameters.nameOverride = nameOverride;
		parameters.showPreview = showPreview;

		return parameters;
	}

	#if editor
	/**
		Returns the elements editing the properties of the node (editor only).
	**/
	final public function getHTML(width: Float, config: hide.Config) {
		var props = getPropertiesHTML(width);
		return props;
	}

	/**
		The node classes, by name (editor only).
	**/
	static public var registeredNodes = new Map<String, Class<ShaderNode>>();

	/**
		Registers a node class (editor only).
	**/
	static public function register(key : String, cl : Class<ShaderNode>) : Bool {
		registeredNodes.set(key, cl);
		return true;
	}
	#end

}