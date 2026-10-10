package hrt.prefab;

/**
	A prefab containing `RenderProps`, applied to the renderer.
**/
@:prefabName("Render Profile")
@:prefabIcon(hrt.ui.HuiRes.ui.icons.prefab.render_props)
@:prefabHideInAddMenu
class RenderProfile extends Object3D {
	/**
		The render props of the profile.
	**/
	public var renderProps(get, never) : RenderProps;
	function get_renderProps() {
		return this.getOpt(RenderProps);
	}

	/**
		Creates the prefab.
	**/
	public function new(parent: Prefab, contextShared: ContextShared) {
		super(parent, contextShared);
		this.name = "Render Profile";
	}

	static var _ = Prefab.register("rp", RenderProfile, "rp");
}
