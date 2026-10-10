package hrt.prefab;

/**
	A library of materials, that `Material` prefabs can reference.
**/
@:prefabName("Material Library")
@:prefabIcon(hrt.ui.HuiRes.ui.icons.prefab.material)
@:prefabHideInAddMenu
class MaterialLibrary extends Prefab {
	/**
		Tells if the prefab is a material library.
	**/
	public static function isMaterialLibrary(p : hrt.prefab.Prefab) {
		return Std.isOfType(p, MaterialLibrary);
	}

	static var _ = Prefab.register("matlib", MaterialLibrary, "matlib");
}
