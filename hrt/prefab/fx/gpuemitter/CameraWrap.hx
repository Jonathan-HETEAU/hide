package hrt.prefab.fx.gpuemitter;

/**
	Wraps the particles in the cube around the camera (`Camera` mode).
**/
class CameraWrap extends ComputeUtils {
	static var SRC = {

		@param var boundsPos : Vec3;
		@param var boundsSize : Vec3;

		var nextPos : Vec3;
		var preventCameraWrap : Bool;

		function __init__(){
			preventCameraWrap = false;
		}

		function main() {
			if(!preventCameraWrap){
				if ( !preventCameraWrap){
					nextPos = ((nextPos - boundsPos) % boundsSize) + boundsPos;
				}
			}
		}
	}
}