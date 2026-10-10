package hide.view;

/**
	The shape of a node pin.
**/
enum PinShape {
	/**
		A round pin.
	**/
	Dot;
	/**
		A square pin.
	**/
	Square;
	/**
		A rhombus pin.
	**/
	Rhombus;
}
/**
	The description of a node shown by the `GraphEditor`.
**/
typedef GraphNodeInfo = {
    /**
    	The entry name.
    **/
    var name : String;
    /**
    	The header color.
    **/
    var ?headerColor : Int;
    /**
    	The node inputs.
    **/
    var inputs : Array<NodeInput>;
    /**
    	The node outputs.
    **/
    var outputs : Array<NodeOutput>;
    /**
    	The node width in pixels (150 by default).
    **/
    var ?width : Int;

    /**If set, the node can show a preview pannel**/
    var ?preview : {
        getVisible : () -> Bool,
        setVisible : (Bool) -> Void,

        /**If the preview takes over the whole node like in texture editing mode**/
        fullSize : Bool,
    };

    /**Adds a button to the header that can be used to set the current preview point in the graph**/
    var ?playButton : {
        getActive : () -> Bool,
        onClick: () -> Void,
    };

    /**
    	Hides the node header.
    **/
    var ?noHeader : Bool;

    /**If set, the node will be treated as a comment**/
    var ?comment : {
        getComment : () -> String,
        setComment : (String) -> Void,
        getSize : (s: h2d.col.Point) -> Void,
        setSize : (s: h2d.col.Point) -> Void,
    };

    /**
        If set, a custom context menu will be created when the user right clicks the box
    **/
    var ?contextMenu : (e: js.html.MouseEvent) -> Void;

    /**
        If true, this node cannot be added, removed, or cloned. It must be created externaly. Used for things like fixed inputs or ouputs
    **/
    var ?dontAddRemove : Bool;
};

/**
	An input of a graph node.
**/
typedef NodeInput = {
    /**Display name of the node input **/
    var name : String;
    /**
    	The pin color.
    **/
    var ?color : Int;
	/**
		The pin shape.
	**/
	var ?shape : PinShape;
	/**
		The pin tooltip.
	**/
	var ?tooltip : String;

    /**If set, the input will have a input text box next to it when not connected**/
    var ?defaultParam : {
        get : () -> String,
        set : (String) -> Void
    };
};

/**
	An output of a graph node.
**/
typedef NodeOutput = {
    /**
    	The node name, shown in the header.
    **/
    var name : String;
    /**
    	The pin color.
    **/
    var ?color : Int;
	/**
		The pin shape.
	**/
	var ?shape : PinShape;
	/**
		The pin tooltip.
	**/
	var ?tooltip : String;
};

/**
	An entry of the add node menu.
**/
typedef AddNodeMenuEntry = {
    /**
    	Display name of the node output.
    **/
    var name : String;
    /**
    	The entry description.
    **/
    var description : String;
    /**
    	The group of the entry.
    **/
    var group : String;

    /**This function will be called when the user chooses to add a node from the add node menu
        You should generate a unique ID for the new IGraphNode. Don't add the node to your graph datastructure yet,
        the Graph editor will call addNode() with this node at the right time.
    **/
    var onConstructNode : () -> IGraphNode;
};


/**An edge between 2 nodes. the inputs/outpus id are based on the order of the inputs/ouputs returned by IGraphNode.getInfo()**/
typedef Edge = {
    /**
    	The id of the output node.
    **/
    var ?nodeFromId : Int;
    /**
    	The output index on the output node.
    **/
    var ?outputFromId : Int;
    /**
    	The id of the input node.
    **/
    var ?nodeToId : Int;
    /**
    	The input index on the input node.
    **/
    var ?inputToId : Int;
};

/**
	A node edited by the `GraphEditor`.
**/
interface IGraphNode {
     /**
        Unique identifier for this node. The ID of a given node MUST NERVER change for the entire lifetime of the GraphEditor
    **/
    public var id : Int;
    /**
    	The X position in the graph.
    **/
    public var x : Float;
    /**
    	The Y position in the graph.
    **/
    public var y : Float;
    /**
    	The graph editor showing the node, set by the editor.
    **/
    public var editor : GraphEditor;

    /**
    	Returns the description of the node.
    **/
    public function getInfo() : GraphNodeInfo;
    /**
    	Writes the node position into `p`.
    **/
    public function getPos(p : h2d.col.Point) : Void;
    /**
    	Sets the node position.
    **/
    public function setPos(p : h2d.col.Point) : Void;
    /**
    	Returns the elements of the node properties, shown in the node.
    **/
    public function getPropertiesHTML(width : Float) : Array<hide.Element>;
}

/**
	The graph data edited by a `GraphEditor`: nodes, edges, add menu, serialization and undo.
**/
interface IGraphEditor {
    /**
    	Returns the nodes.
    **/
    public function getNodes() : Iterator<IGraphNode>;
    /**
    	Returns the edges.
    **/
    public function getEdges() : Iterator<Edge>;

    /**
        currentEdge is not null it there is a link being created.
        You can use this information to filter the list of nodes in the
        output entry based on compatible types
    **/
    public function getAddNodesMenu(currentEdge: Null<Edge>) : Array<AddNodeMenuEntry>;

    /**
    	Adds a node to the graph.
    **/
    public function addNode(node : IGraphNode) : Void;
    /**
    	Removes a node from the graph.
    **/
    public function removeNode(id:Int) : Void;

    /**
    	Returns the data of a node, for copy and undo.
    **/
    public function serializeNode(node : IGraphNode) : Dynamic;

    /**If newId is true, then the returned node must have a new unique id. This is used when duplicating nodes**/
    public function unserializeNode(data: Dynamic, newId: Bool) : IGraphNode;

    /**Create a comment node. Return null if you don't have a comment node in your editor**/
    public function createCommentNode() : Null<IGraphNode>;

    /**Create a reroute node that can be inserted in the middle of `edge`. Return null if you don't have reroute nodes in your editor**/
    public function createRerouteNode(edge: Edge) : Null<IGraphNode>;


    /**Returns false if the edge can't be created because the input/output types don't match**/
    public function canAddEdge(edge : Edge) : Bool;

    /**
    	Adds an edge to the graph.
    **/
    public function addEdge(edge : Edge) : Void;
    /**
    	Removes the edge connected to an input.
    **/
    public function removeEdge(nodeToId: Int, inputToId : Int) : Void;

    /**
    	Returns the undo history.
    **/
    public function getUndo() : hide.ui.UndoHistory;
}