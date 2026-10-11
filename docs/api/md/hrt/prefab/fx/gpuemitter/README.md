# Package `hrt.prefab.fx.gpuemitter`

[← API index](../../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Align`](Align.md) | enum | The orientation of the particles of a `GPUEmitter`. |
| [`BaseSimulation`](BaseSimulation.md) | class | The base simulation of the GPU particles: life, speed, size and orientation. |
| [`BaseSpawn`](BaseSpawn.md) | class | The base spawn of the GPU particles: life, random value and initial speed. |
| [`CameraWrap`](CameraWrap.md) | class | Wraps the particles in the cube around the camera (`Camera` mode). |
| [`ComputeUtils`](ComputeUtils.md) | class | The base of the compute shaders of the GPU emitter, with random and matrix helpers. |
| [`CubeSpawn`](CubeSpawn.md) | class | Spawns the particles of a GPU emitter in a cube. |
| [`CubeSpawnShader`](CubeSpawnShader.md) | class | Spawns the particles in a box. |
| [`Data`](Data.md) | typedef | The parameters of a `GPUEmitterObject`. |
| [`DiskSpawn`](DiskSpawn.md) | class | Spawns the particles of a GPU emitter on a horizontal disk. |
| [`DiskSpawnShader`](DiskSpawnShader.md) | class | Spawns the particles on a disk. |
| [`GPUEmitter`](GPUEmitter.md) | class | A particle emitter simulated on the GPU with compute shaders. |
| [`GPUEmitterObject`](GPUEmitterObject.md) | class | The object of a `GPUEmitter` for a particle mesh: a `h3d.scene.MeshBatch` updated on the GPU. |
| [`GravitySimulation`](GravitySimulation.md) | class | Applies a gravity to the particles of a GPU emitter. |
| [`GravitySimulationShader`](GravitySimulationShader.md) | class | Applies the gravity to the particles. |
| [`LocalRotation`](LocalRotation.md) | class | Rotates the particles of a GPU emitter around random axes over their life. |
| [`LocalRotationShader`](LocalRotationShader.md) | class | Rotates the particles over their life. |
| [`MeshSpawn`](MeshSpawn.md) | class | Spawns the particles of a GPU emitter on the vertices of its child skinned mesh (a sphere if none). |
| [`MeshSpawnShader`](MeshSpawnShader.md) | class | Spawns the particles on the vertices of a mesh. |
| [`Mode`](Mode.md) | enum | The space of the particles of a `GPUEmitter`. |
| [`OrbitSpeedSimulation`](OrbitSpeedSimulation.md) | class | Makes the particles of a GPU emitter orbit around an axis through the emitter. |
| [`OrbitSpeedSimulationShader`](OrbitSpeedSimulationShader.md) | class | Moves the particles around the emitter. |
| [`ParticleShader`](ParticleShader.md) | class | Reads the particle data (life, random value, color) in the rendering of a GPU particle. |
| [`PreviousModelViewSimulation`](PreviousModelViewSimulation.md) | class | Stores the previous transform of the particles, for the motion vectors. |
| [`RandomColorSpawn`](RandomColorSpawn.md) | class | Gives the particles of a GPU emitter a random color between two colors. |
| [`RandomColorSpawnShader`](RandomColorSpawnShader.md) | class | Gives the particles a random color. |
| [`RelativeTransformSimulation`](RelativeTransformSimulation.md) | class | Applies a transform (position, scale, rotation, speed) to the particles of a GPU emitter. |
| [`RelativeTransformSimulationShader`](RelativeTransformSimulationShader.md) | class | Applies a transform to the particles. |
| [`SimulationShader`](SimulationShader.md) | class | A shader prefab added to the simulation of its parent `GPUEmitter`. |
| [`SpawnShader`](SpawnShader.md) | class | A shader prefab added to the spawn of its parent `GPUEmitter`. |
| [`SpeedMode`](SpeedMode.md) | enum | The initial speed of the particles of a `GPUEmitter`. |
| [`SphereSpawn`](SphereSpawn.md) | class | Spawns the particles of a GPU emitter in a sphere shell, between two radiuses. |
| [`SphereSpawnShader`](SphereSpawnShader.md) | class | Spawns the particles in a sphere. |
| [`Template`](Template.md) | typedef | A child of a `GPUEmitter` used as particle. |
| [`TurbulenceSimulation`](TurbulenceSimulation.md) | class | Applies a noise turbulence to the particles of a GPU emitter. |
| [`TurbulenceSimulationShader`](TurbulenceSimulationShader.md) | class | Applies a noise turbulence to the speed of the particles. |
| [`UpdateParamShader`](UpdateParamShader.md) | class | Updates an animated shader parameter of the particles from the baked animation texture. |
