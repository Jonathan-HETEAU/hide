package hide.prefab.terrain;

/**
	A renderer drawing only one pass, used by the terrain editor.
**/
class CustomRenderer extends h3d.scene.Renderer {

	var passName : String;

	/**
		Creates a renderer of a pass.
	**/
	public function new(passName) {
		super();
		this.passName = passName;
		defaultPass = new h3d.pass.Output("default");
		allPasses.push(defaultPass);
	}

	override function start() {

	}

	override function render() {
		defaultPass.draw(get(passName));
	}
}