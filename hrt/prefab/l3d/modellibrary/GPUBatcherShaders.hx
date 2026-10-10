package hrt.prefab.l3d.modellibrary;

/**
	Copies the transforms of the instances into a mesh batch.
**/
class CopyModelViews extends hxsl.Shader {
	static var SRC = {
		@param var positions : StorageBuffer<Mat4>;
		@param var positionsOut : RWPartialBuffer<{ modelView: Mat4 }>;

		@param var start : Int;

		var idx : Int;
		function main() {
			var invocID = computeVar.globalInvocation.x;
			idx = invocID + start;
			var tmp = positions[invocID]; //Use tmp variable to avoid flatten error (convert mat4 to 4 Vec4 both on left and right value cause var ID to be disconnected).
			positionsOut[idx].modelView = tmp;
		}
	}
}

/**
	Copies the atlas texture coordinates of the instances into a mesh batch.
**/
class CopyUvTransform extends hxsl.Shader {
	static var SRC = {
		@param var uvTransform : Vec4;
		@param var uvTransformOut : RWPartialBuffer<{ uvTransform: Vec4 }>;

		var idx : Int;
		function main() {
			uvTransformOut[idx].uvTransform = uvTransform;
		}
	}
}

/**
	Copies the library parameters of the instances into a mesh batch.
**/
class CopyLibraryParams extends hxsl.Shader {
	static var SRC = {
		@param var libraryParams : Vec4;
		@param var libraryParamsOut : RWPartialBuffer<{ libraryParams: Vec4 }>;

		var idx : Int;
		function main() {
			libraryParamsOut[idx].libraryParams = libraryParams;
		}
	}
}