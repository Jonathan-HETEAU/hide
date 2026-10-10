package hrt.prefab.fx.gpuemitter;

/**
	Stores the previous transform of the particles, for the motion vectors.
**/
class PreviousModelViewSimulation extends hxsl.Shader {
	static var SRC = {
		@param var batchBuffer : RWPartialBuffer<{
			previousModelView : Mat4
		}>;

		var prevModelView : Mat4;
		function main() {
			var idx = computeVar.globalInvocation.x;
			batchBuffer[idx].previousModelView = prevModelView;
		}
	}
}