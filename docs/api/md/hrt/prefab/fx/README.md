# Package `hrt.prefab.fx`

[← API index](../../../README.md)

Sub-packages: [`hrt.prefab.fx.gpuemitter`](gpuemitter/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AdditionalProperies`](AdditionalProperies.md) | enum | The animated properties of a light, by kind of light. |
| [`AlignLockAxis`](AlignLockAxis.md) | enum | The axis locked by the `Axis` align mode. |
| [`AlignMode`](AlignMode.md) | enum | How the particles are oriented. |
| [`AnimEvent`](AnimEvent.md) | class | An FX event playing an animation on the first object of the event. |
| [`BaseFX`](BaseFX.md) | interface | The common properties of the 3D and 2D FX prefabs. |
| [`BaseFXTools`](BaseFXTools.md) | class | Helpers to build the animations of an FX. |
| [`Billboard`](Billboard.md) | class | Deprecated: use `LookAt`. |
| [`BillboardObject`](BillboardObject.md) | class | Deprecated: use `LookAt`. |
| [`CustomAnimation`](CustomAnimation.md) | class | Animates custom properties with curves in an FX. |
| [`DebugFXShader`](DebugFXShader.md) | class | Draws the FX in a flat color (HSV) for the debug display. |
| [`Desaturate`](Desaturate.md) | class | Desaturates the screen. |
| [`DesaturateRFX`](DesaturateRFX.md) | class | Desaturates the scene for the FX debug display (with a PBR renderer). |
| [`Emit2DShape`](Emit2DShape.md) | enum | The shape in which the 2D particles are emitted. |
| [`EmitShape`](EmitShape.md) | enum | The shape in which the particles are emitted. |
| [`EmitType`](EmitType.md) | enum | When the particles are emitted. |
| [`Emitter`](Emitter.md) | class | A particle emitter of an FX: emits instances of its child prefab (the particle template) with curves for the parameters (children curves named after the parameters). |
| [`Emitter2D`](Emitter2D.md) | class | A 2D particle emitter of an `FX2D`. |
| [`Emitter2DObject`](Emitter2DObject.md) | class | The 2D object of an `Emitter2D`: simulates and renders the particles (with a `h2d.SpriteBatch`). |
| [`EmitterHelper`](EmitterHelper.md) | class | Helpers for the emitter parameters. |
| [`EmitterMacros`](EmitterMacros.md) | class | Builds the parameters of `Emitter` from their `@:param` and `@:instParam` metadata. |
| [`EmitterObject`](EmitterObject.md) | class | The 3D object of an `Emitter`: simulates and renders the particles (with a `h3d.scene.MeshBatch`). |
| [`Evaluator`](Evaluator.md) | class | Evaluates `Value`s, with random values per particle and the FX parameters. |
| [`Event`](Event.md) | class | An event of an FX timeline, played between `time` and `time + duration`. |
| [`Event3D`](Event3D.md) | class | A 3D object event of an FX timeline. |
| [`EventInstance`](EventInstance.md) | typedef | A playing event. |
| [`FX`](FX.md) | class | A 3D FX: a timeline of animations, particles and events. |
| [`FX2D`](FX2D.md) | class | A 2D FX: a timeline of animations, particles and events. |
| [`FX2DAnimation`](FX2DAnimation.md) | class | The 2D object of an `FX2D`: plays its animations, emitters and events. |
| [`FXAnimation`](FXAnimation.md) | class | The 3D object of an `FX`: plays its animations, emitters, events and sub FX. |
| [`FXPlayState`](FXPlayState.md) | enum | What part of the FXAnimation loop is currently playing |
| [`IEvent`](IEvent.md) | interface | An event of an FX timeline. |
| [`InstanceDef`](InstanceDef.md) | class | The values of the particle parameters, evaluated for each particle. |
| [`LookAt`](LookAt.md) | class | Makes its children face a target object, or the camera. |
| [`LookAtObject`](LookAtObject.md) | class | The object of a `LookAt`. |
| [`ObjectAnimation`](ObjectAnimation.md) | typedef | The animated transform, color and visibility of an object of an FX, from the curves of its prefab. |
| [`Orientation`](Orientation.md) | enum | The initial orientation of the emitted particles. |
| [`ParamDef`](ParamDef.md) | typedef | The definition of an emitter parameter. |
| [`Parameter`](Parameter.md) | typedef | A parameter of an FX, used to blend curves. |
| [`ParameterType`](ParameterType.md) | enum abstract | The type of an FX parameter. |
| [`PartArray`](PartArray.md) | typedef | The storage of the particles. |
| [`Particle2DInstance`](Particle2DInstance.md) | class | A particle of an `Emitter2DObject`. |
| [`ParticleInstance`](ParticleInstance.md) | class | A particle of an `EmitterObject` (internal state of the simulation). |
| [`ParticleScaling`](ParticleScaling.md) | enum | Whether the particles are scaled with the parents of the emitter. |
| [`PerObjectRandom`](PerObjectRandom.md) | class | Gives a random value per object of a `Swarm`. |
| [`RendererFXAnimation`](RendererFXAnimation.md) | class | Animates the float properties of a renderer effect with their curves. |
| [`SMatrix3`](SMatrix3.md) | class | A 3x3 matrix of single precision floats. |
| [`SMatrix4`](SMatrix4.md) | class | A 4x3 transform matrix of single precision floats. |
| [`SVector3`](SVector3.md) | class | A vector of 3 single precision floats. |
| [`SVector4`](SVector4.md) | class | A vector of 4 single precision floats. |
| [`ScreenShaderGraphFXAnimation`](ScreenShaderGraphFXAnimation.md) | class | Animates the parameters of a `ScreenShaderGraph` with their curves. |
| [`ShaderAnimation`](ShaderAnimation.md) | class | Animates the parameters of a shader with their curves. |
| [`ShaderDynAnimation`](ShaderDynAnimation.md) | class | Animates the parameters of a `hxsl.DynamicShader` with their curves. |
| [`ShaderParam`](ShaderParam.md) | typedef | An animated shader parameter. |
| [`ShaderParams`](ShaderParams.md) | typedef | The animated parameters of a shader. |
| [`ShaderTarget`](ShaderTarget.md) | class | Applies its children shaders and materials to a target object of the FX (set by `FX.setTarget`). |
| [`ShaderTargetObj`](ShaderTargetObj.md) | class | The object of a `ShaderTarget`, child of its target. |
| [`SimulationSpace`](SimulationSpace.md) | enum | The space in which the particles are simulated. |
| [`Single`](Single.md) | typedef | A 32 bits float on HashLink, a `Float` otherwise. |
| [`SortMode`](SortMode.md) | enum | How the particles are sorted for rendering. |
| [`SpriteType`](SpriteType.md) | enum | The sprite of the 2D particles. |
| [`SubEmitterKind`](SubEmitterKind.md) | enum | When a sub emitter (child emitter) is spawned for a particle. |
| [`SubFX`](SubFX.md) | class | Plays a referenced FX as an event of an FX. |
| [`Swarm`](Swarm.md) | class | A swarm of objects (its first visible child, or small boxes) moving toward targets rotating on a sphere around it. |
| [`SwarmElement`](SwarmElement.md) | class | An object of a `Swarm`. |
| [`SwarmObject`](SwarmObject.md) | class | The object of a `Swarm`: simulates the objects at 15 steps per second and renders them (with a `h3d.scene.MeshBatch`). |
| [`Value`](Value.md) | enum | An animated value of an FX: constant, curve, random, or combination. |
| [`Vector`](Vector.md) | typedef | A 2D point. |
