package hide.view;

import hide.view.GraphInterface;

/**
	A base file view for the graph editors, holding a `GraphEditor`. The `IGraphEditor` methods must be overridden.
**/
class GenericGraphEditor extends hide.view.FileView implements IGraphEditor {

    var graphEditor : hide.view.GraphEditor;

    var previewContainer : Element;
    var scenePreview : hide.comp.ScenePreview;

    var editorRoot : Element;
    var graphContainer: Element;
    var propertiesContainer: Element;

    override function onDisplay() {
        super.onDisplay();
        reloadView();
    }

    function reloadView() {
        element.html("");

        editorRoot = new Element('
            <graph-editor-root>
                <graph-container></graph-container>
                <properties-container></properties-container>
            </graph-editor-root>
        ').appendTo(element);

        graphContainer = editorRoot.find("graph-container");
        propertiesContainer = editorRoot.find("properties-container");

        initGraphEditor();

        initScenePreview();

        graphEditor.centerView();
    }

    function initGraphEditor() {
        if (graphEditor != null) {
            graphEditor.remove();
        }
        graphEditor = new GraphEditor(config, this, graphContainer);
        graphEditor.onDisplay();
    }

    function initScenePreview() {
        var previewContainer = new Element('<preview-container></preview-container>').appendTo(graphContainer);

        var width = getDisplayState("preview.width") ?? 300;
        var height = getDisplayState("preview.width") ?? 300;

        // Scene init
        scenePreview = new hide.comp.ScenePreview(config, previewContainer, null, saveDisplayKey + "/scenePreview");
		  scenePreview.addToolbar();
        scenePreview.element.addClass("scene-preview");

        scenePreview.onReady = onScenePreviewReady;
        scenePreview.onUpdate = onScenePreviewUpdate;

        // Resize init
        var resizeUp = new Element('<div class="resize-handle up">').appendTo(previewContainer);
		var resizeLeft = new Element('<div class="resize-handle left">').appendTo(previewContainer);
		var resizeUpLeft = new Element('<div class="resize-handle up-left">').appendTo(previewContainer);

        function configureDrag(elt: js.html.Element, left: Bool, up: Bool) {
			var pressed = false;

			elt.onpointerdown = function(e: js.html.PointerEvent) {
				if (e.button != 0)
					return;
				e.stopPropagation();
				e.preventDefault();
				pressed = true;
				elt.setPointerCapture(e.pointerId);
			};

			elt.onpointermove = function(e: js.html.PointerEvent) {
				if (!pressed)
					return;
				e.stopPropagation();
				e.preventDefault();

				var prev = previewContainer.get(0);
				var rect = prev.getBoundingClientRect();

				if (left)
					prev.style.width = rect.right - e.clientX + "px";
				if (up)
					prev.style.height = rect.bottom - e.clientY + "px";
			}

			elt.onpointerup = function (e: js.html.PointerEvent) {
				if (!pressed)
					return;
				pressed = false;
				e.stopPropagation();
				e.preventDefault();

				var prev = previewContainer.get(0);
				var rect = prev.getBoundingClientRect();
				saveDisplayState("preview.width", Std.int(rect.width));
				saveDisplayState("preview.height", Std.int(rect.height));
			};
		}

		configureDrag(resizeUp.get(0), false, true);
		configureDrag(resizeLeft.get(0), true, false);
		configureDrag(resizeUpLeft.get(0), true, true);

        previewContainer.width(width);
        previewContainer.height(height);
    }

    function getPreviewOptionsMenu() : Array<hrt.ui.HuiMenu.MenuItem> {
        return [];
    }

    function onScenePreviewReady() {
    }

    function onScenePreviewUpdate(dt: Float) {

    }

    // IGraphEditor interface
    /**
    	Returns the nodes. Throws: to override.
    **/
    public function getNodes() : Iterator<IGraphNode> {
        throw "implement";
    }

    /**
    	Returns the edges. Throws: to override.
    **/
    public function getEdges() : Iterator<Edge> {
        throw "implement";
    }

    /**
    	Returns the add node menu entries. Throws: to override.
    **/
    public function getAddNodesMenu(currentEdge: Null<Edge>) : Array<AddNodeMenuEntry> {
        throw "implement";
    }

    /**
    	Adds a node to the graph. Throws: to override.
    **/
    public function addNode(node : IGraphNode) : Void {
        throw "implement";
    }

    /**
    	Removes a node from the graph. Throws: to override.
    **/
    public function removeNode(id:Int) : Void {
        throw "implement";
    }

    /**
    	Returns the data of a node, for copy and undo. Throws: to override.
    **/
    public function serializeNode(node : IGraphNode) : Dynamic {
        throw "implement";
    }

    /**
    	Creates a node from its data, with a new unique id if `newId`. Throws: to override.
    **/
    public function unserializeNode(data: Dynamic, newId: Bool) : IGraphNode {
        throw "implement";
    }

    /**
    	Creates a comment node. Throws: to override.
    **/
    public function createCommentNode() : Null<IGraphNode> {
        throw "implement";
    }

    /**
    	Returns null: the editor has no reroute nodes.
    **/
    public function createRerouteNode(edge: Edge) : Null<IGraphNode> {
        return null;
    }

    /**
    	Returns false if the edge can't be created because the input/output types don't match. Throws: to override.
    **/
    public function canAddEdge(edge : Edge) : Bool {
        throw "implement";
    }

    /**
    	Adds an edge to the graph. Throws: to override.
    **/
    public function addEdge(edge : Edge) : Void {
        throw "implement";
    }

    /**
    	Removes the edge connected to an input. Throws: to override.
    **/
    public function removeEdge(nodeToId: Int, inputToId : Int) : Void {
        throw "implement";
    }

    /**
    	Returns the undo history.
    **/
    public function getUndo() : hide.ui.UndoHistory {
        return undo;
    }

}