package hide;

/**
	A saved layout of the IDE.
**/
typedef LayoutState = {
	/**
		The layout content.
	**/
	var content : Any;
	/**
		The view shown in full screen, or null.
	**/
	var fullScreen : { name : String, state : Any };
}
/**
	The settings of the IDE for a project.
**/
typedef HideProjectConfig = {
	/**
		The saved layouts.
	**/
	var layouts : Array<{ name : String, state : LayoutState }>;
	/**
		The name of the renderer.
	**/
	var renderer : String;
	/**
		The shown CDB categories, or null for all.
	**/
	var dbCategories : Array<String>;
	/**
		Enables the CDB proofreading mode.
	**/
	var dbProofread : Null<Bool>;
};
