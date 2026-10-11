# Package `hrt.prefab.fx.gpuemitter`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.fx.gpuemitter.BaseSimulation

- Fichier : `hrt/prefab/fx/gpuemitter/BaseSimulation.hx` — 80 lignes — 1 blocs doc
- Types : `class BaseSimulation`
- Héritage : `BaseSimulation` extends `ComputeUtils`
- Dépend de : `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use)
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.gpuemitter.BaseSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/BaseSpawn.hx` — 68 lignes — 1 blocs doc
- Types : `class BaseSpawn`
- Héritage : `BaseSpawn` extends `ComputeUtils`
- Dépend de : `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use)
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.gpuemitter.CameraWrap

- Fichier : `hrt/prefab/fx/gpuemitter/CameraWrap.hx` — 27 lignes — 1 blocs doc
- Types : `class CameraWrap`
- Héritage : `CameraWrap` extends `ComputeUtils`
- Dépend de : `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use)
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.gpuemitter.ComputeUtils

- Fichier : `hrt/prefab/fx/gpuemitter/ComputeUtils.hx` — 160 lignes — 3 blocs doc
- Types : `class ComputeUtils`
- Héritage : `ComputeUtils` extends `hxsl.Shader`
- Dépend de : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`
- Utilisé par : `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.gpuemitter.BaseSimulation`, `hrt.prefab.fx.gpuemitter.BaseSpawn`, `hrt.prefab.fx.gpuemitter.CameraWrap`, `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SphereSpawn`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`

## hrt.prefab.fx.gpuemitter.CubeSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/CubeSpawn.hx` — 61 lignes — 2 blocs doc — contient du `#if`
- Types : `class CubeSpawnShader`, `class CubeSpawn`
- Héritage : `CubeSpawnShader` extends `ComputeUtils`, `CubeSpawn` extends `SpawnShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SpawnShader` (extends/use)
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.gpuemitter.DiskSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/DiskSpawn.hx` — 68 lignes — 2 blocs doc — contient du `#if`
- Types : `class DiskSpawnShader`, `class DiskSpawn`
- Héritage : `DiskSpawnShader` extends `ComputeUtils`, `DiskSpawn` extends `SpawnShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SpawnShader` (extends/use)

## hrt.prefab.fx.gpuemitter.GPUEmitter

- Fichier : `hrt/prefab/fx/gpuemitter/GPUEmitter.hx` — 357 lignes — 32 blocs doc — contient du `#if`
- Types : `enum Mode`, `enum Align`, `enum SpeedMode`, `typedef Data`, `typedef Template`, `class GPUEmitter`
- Héritage : `GPUEmitter` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.fx.gpuemitter.SimulationShader`, `hrt.prefab.fx.gpuemitter.SpawnShader`

## hrt.prefab.fx.gpuemitter.GPUEmitterObject

- Fichier : `hrt/prefab/fx/gpuemitter/GPUEmitterObject.hx` — 440 lignes — 10 blocs doc — contient du `#if`
- Types : `class ParticleShader`, `class GPUEmitterObject`
- Héritage : `ParticleShader` extends `hxsl.Shader`, `GPUEmitterObject` extends `h3d.scene.MeshBatch`
- Dépend de : `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.gpuemitter.BaseSimulation`, `hrt.prefab.fx.gpuemitter.BaseSpawn`, `hrt.prefab.fx.gpuemitter.CameraWrap`, `hrt.prefab.fx.gpuemitter.ComputeUtils`, `hrt.prefab.fx.gpuemitter.CubeSpawn` (import/use), `hrt.prefab.fx.gpuemitter.GPUEmitter` (import/use), `hrt.prefab.fx.gpuemitter.PreviousModelViewSimulation`, `hrt.prefab.fx.gpuemitter.UpdateParamShader`
- Utilisé par : `hrt.prefab.fx.gpuemitter.ComputeUtils`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.SimulationShader`, `hrt.prefab.fx.gpuemitter.SpawnShader`

## hrt.prefab.fx.gpuemitter.GravitySimulation

- Fichier : `hrt/prefab/fx/gpuemitter/GravitySimulation.hx` — 66 lignes — 2 blocs doc — contient du `#if`
- Types : `class GravitySimulationShader`, `class GravitySimulation`
- Héritage : `GravitySimulationShader` extends `ComputeUtils`, `GravitySimulation` extends `SimulationShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SimulationShader` (extends/use)

## hrt.prefab.fx.gpuemitter.LocalRotation

- Fichier : `hrt/prefab/fx/gpuemitter/LocalRotation.hx` — 66 lignes — 2 blocs doc — contient du `#if`
- Types : `class LocalRotationShader`, `class LocalRotation`
- Héritage : `LocalRotationShader` extends `ComputeUtils`, `LocalRotation` extends `SimulationShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SimulationShader` (extends/use)

## hrt.prefab.fx.gpuemitter.MeshSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/MeshSpawn.hx` — 174 lignes — 3 blocs doc — contient du `#if`
- Types : `class MeshSpawnShader`, `class MeshSpawn`
- Héritage : `MeshSpawnShader` extends `ComputeUtils`, `MeshSpawn` extends `SpawnShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.fx.gpuemitter.SpawnShader` (extends/use)

## hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation

- Fichier : `hrt/prefab/fx/gpuemitter/OrbitSpeedSimulation.hx` — 89 lignes — 2 blocs doc — contient du `#if`
- Types : `class OrbitSpeedSimulationShader`, `class OrbitSpeedSimulation`
- Héritage : `OrbitSpeedSimulationShader` extends `ComputeUtils`, `OrbitSpeedSimulation` extends `SimulationShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.fx.gpuemitter.SimulationShader` (extends/use)

## hrt.prefab.fx.gpuemitter.PreviousModelViewSimulation

- Fichier : `hrt/prefab/fx/gpuemitter/PreviousModelViewSimulation.hx` — 18 lignes — 1 blocs doc
- Types : `class PreviousModelViewSimulation`
- Héritage : `PreviousModelViewSimulation` extends `hxsl.Shader`
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.gpuemitter.RandomColorSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/RandomColorSpawn.hx` — 70 lignes — 2 blocs doc — contient du `#if`
- Types : `class RandomColorSpawnShader`, `class RandomColorSpawn`
- Héritage : `RandomColorSpawnShader` extends `ComputeUtils`, `RandomColorSpawn` extends `SpawnShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SpawnShader` (extends/use)

## hrt.prefab.fx.gpuemitter.RelativeTransformSimulation

- Fichier : `hrt/prefab/fx/gpuemitter/RelativeTransformSimulation.hx` — 239 lignes — 2 blocs doc — contient du `#if`
- Types : `class RelativeTransformSimulationShader`, `class RelativeTransformSimulation`
- Héritage : `RelativeTransformSimulationShader` extends `ComputeUtils`, `RelativeTransformSimulation` extends `SimulationShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Curve`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.fx.gpuemitter.SimulationShader` (extends/use)

## hrt.prefab.fx.gpuemitter.SimulationShader

- Fichier : `hrt/prefab/fx/gpuemitter/SimulationShader.hx` — 33 lignes — 1 blocs doc — contient du `#if`
- Types : `class SimulationShader`
- Héritage : `SimulationShader` extends `hrt.prefab.Shader`
- Dépend de : `hide.prefab.HideProps`, `hrt.prefab.Prefab`, `hrt.prefab.Shader` (extends/use), `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`
- Utilisé par : `hrt.prefab.fx.gpuemitter.GravitySimulation`, `hrt.prefab.fx.gpuemitter.LocalRotation`, `hrt.prefab.fx.gpuemitter.OrbitSpeedSimulation`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.fx.gpuemitter.TurbulenceSimulation`

## hrt.prefab.fx.gpuemitter.SpawnShader

- Fichier : `hrt/prefab/fx/gpuemitter/SpawnShader.hx` — 33 lignes — 1 blocs doc — contient du `#if`
- Types : `class SpawnShader`
- Héritage : `SpawnShader` extends `hrt.prefab.Shader`
- Dépend de : `hide.prefab.HideProps`, `hrt.prefab.Prefab`, `hrt.prefab.Shader` (extends/use), `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`
- Utilisé par : `hrt.prefab.fx.gpuemitter.CubeSpawn`, `hrt.prefab.fx.gpuemitter.DiskSpawn`, `hrt.prefab.fx.gpuemitter.MeshSpawn`, `hrt.prefab.fx.gpuemitter.RandomColorSpawn`, `hrt.prefab.fx.gpuemitter.SphereSpawn`

## hrt.prefab.fx.gpuemitter.SphereSpawn

- Fichier : `hrt/prefab/fx/gpuemitter/SphereSpawn.hx` — 72 lignes — 2 blocs doc — contient du `#if`
- Types : `class SphereSpawnShader`, `class SphereSpawn`
- Héritage : `SphereSpawnShader` extends `ComputeUtils`, `SphereSpawn` extends `SpawnShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SpawnShader` (extends/use)

## hrt.prefab.fx.gpuemitter.TurbulenceSimulation

- Fichier : `hrt/prefab/fx/gpuemitter/TurbulenceSimulation.hx` — 167 lignes — 2 blocs doc — contient du `#if`
- Types : `class TurbulenceSimulationShader`, `class TurbulenceSimulation`
- Héritage : `TurbulenceSimulationShader` extends `ComputeUtils`, `TurbulenceSimulation` extends `SimulationShader`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.fx.gpuemitter.ComputeUtils` (extends/use), `hrt.prefab.fx.gpuemitter.SimulationShader` (extends/use)

## hrt.prefab.fx.gpuemitter.UpdateParamShader

- Fichier : `hrt/prefab/fx/gpuemitter/UpdateParamShader.hx` — 25 lignes — 1 blocs doc
- Types : `class UpdateParamShader`
- Héritage : `UpdateParamShader` extends `hxsl.Shader`
- Utilisé par : `hrt.prefab.fx.gpuemitter.GPUEmitterObject`
