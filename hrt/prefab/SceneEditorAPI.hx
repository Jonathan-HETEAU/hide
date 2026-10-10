package hrt.prefab;

#if !macro
/**
	The scene editor API available to the prefabs in the editor.
**/
interface SceneEditorAPI {
	/**
		Returns the root prefab edited.
	**/
	public function getRootPrefab() : Prefab;
	/**
		Selects the prefabs.
	**/
	public function selectPrefabs(prefabs: Array<Prefab>) : Void;
	/**
		Moves the camera to show the objects.
	**/
	public function focusObjects(objects: Array<h3d.scene.Object>) : Void;
}
#end