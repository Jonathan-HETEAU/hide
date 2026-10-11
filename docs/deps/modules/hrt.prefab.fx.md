# Package `hrt.prefab.fx`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.fx.AnimEvent

- Fichier : `hrt/prefab/fx/AnimEvent.hx` — 159 lignes — 5 blocs doc — contient du `#if`
- Types : `class AnimEvent`
- Héritage : `AnimEvent` extends `hrt.prefab.fx.Event`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.Dropdown`, `hide.comp.Select`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.prefab.fx.Event` (extends/use)
- Utilisé par : `hrt.prefab.Model`, `hrt.prefab.fx.FX`

## hrt.prefab.fx.BaseFX

- Fichier : `hrt/prefab/fx/BaseFX.hx` — 501 lignes — 51 blocs doc — contient du `#if`
- Types : `typedef ShaderParam`, `enum AdditionalProperies`, `typedef ShaderParams`, `class CustomAnimation`, `class RendererFXAnimation`, `class ScreenShaderGraphFXAnimation`, `class ShaderAnimation`, `class ShaderDynAnimation`, `typedef ObjectAnimation`, `interface BaseFX`, `class BaseFXTools`
- Héritage : `CustomAnimation` extends `Evaluator`, `RendererFXAnimation` extends `CustomAnimation`, `ScreenShaderGraphFXAnimation` extends `CustomAnimation`, `ShaderAnimation` extends `CustomAnimation`, `ShaderDynAnimation` extends `ShaderAnimation`
- Dépend de : `hrt.prefab.Curve` (import/use), `hrt.prefab.DynamicShader`, `hrt.prefab.Object2D`, `hrt.prefab.Object3D`, `hrt.prefab.Prefab` (import/use), `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Evaluator` (extends/import/use), `hrt.prefab.fx.Value` (import/use), `hrt.prefab.fx.gpuemitter.ComputeUtils`, `hrt.prefab.rfx.RendererFX`, `hrt.prefab.rfx.ScreenShaderGraph`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`

## hrt.prefab.fx.Billboard

- Fichier : `hrt/prefab/fx/Billboard.hx` — 147 lignes — 2 blocs doc — contient du `#if`
- Types : `class BillboardObject`, `class Billboard`
- Héritage : `BillboardObject` extends `h3d.scene.Object`, `Billboard` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.fx.LookAt`

## hrt.prefab.fx.Emitter

- Fichier : `hrt/prefab/fx/Emitter.hx` — 3353 lignes — 284 blocs doc — contient du `#if`
- Types : `enum SimulationSpace`, `enum ParticleScaling`, `enum SortMode`, `enum AlignMode`, `enum AlignLockAxis`, `enum EmitShape`, `enum Orientation`, `enum EmitType`, `enum SubEmitterKind`, `class InstanceDef`, `typedef PartArray`, `typedef Single`, `class ParticleInstance`, `class EmitterObject`, `class Emitter`, `class SVector3`, `class SVector4`, `class SMatrix3`, `class SMatrix4`
- Héritage : `EmitterObject` extends `h3d.scene.Object`, `Emitter` extends `Object3D`
- Dépend de : `hide.Ide`, `hide.kit.Button`, `hide.kit.Category`, `hide.kit.Line`, `hide.kit.Macros`, `hide.kit.Slider`, `hide.prefab.EditContext`, `hide.prefab.HideProps` (import/use), `hrt.impl.Gradient` (import/use), `hrt.prefab.ContextShared`, `hrt.prefab.Curve` (import/use), `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Props`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.EmitterMacros` (import/use), `hrt.prefab.fx.Evaluator` (import/use), `hrt.prefab.fx.FX`, `hrt.prefab.fx.Value` (import/use), `hrt.prefab.l3d.Polygon` (import/use), `hrt.prefab.l3d.Trails`, `hrt.shader.BaseEmitter`, `hrt.tools.GraphicsTools` (using), `hrt.ui.HuiRes`
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.FXEditor`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.FX`

## hrt.prefab.fx.Emitter2D

- Fichier : `hrt/prefab/fx/Emitter2D.hx` — 1140 lignes — 69 blocs doc — contient du `#if`
- Types : `typedef Vector`, `enum Emit2DShape`, `enum SpriteType`, `class Particle2DInstance`, `class Emitter2DObject`, `class Emitter2D`
- Héritage : `Particle2DInstance` extends `h2d.SpriteBatch.BatchElement`, `Emitter2DObject` extends `h2d.Object`, `Emitter2D` extends `Object2D`
- Dépend de : `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.Gradient` (import/use), `hrt.prefab.ContextShared`, `hrt.prefab.Curve` (import/use), `hrt.prefab.Object2D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.fx.Emitter` (import/use), `hrt.prefab.fx.EmitterHelper`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.Value`, `hrt.ui.HuiRes`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.Shader`, `hrt.prefab.fx.FX2D`

## hrt.prefab.fx.EmitterHelper

- Fichier : `hrt/prefab/fx/EmitterHelper.hx` — 230 lignes — 12 blocs doc — contient du `#if`
- Types : `typedef ParamDef`, `class EmitterHelper`
- Dépend de : `hide.Element`, `hide.comp.ContextMenu`, `hide.comp.PropsEditor`, `hrt.prefab.Curve` (import/use), `hrt.prefab.Prefab`, `hrt.prefab.Props`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.EmitterMacros`, `hrt.prefab.l2d.Particle2D`

## hrt.prefab.fx.EmitterMacros

- Fichier : `hrt/prefab/fx/EmitterMacros.hx` — 273 lignes — 2 blocs doc — contient du `#if`
- Types : `enum ParamKind`, `typedef Param`, `class EmitterMacros`
- Dépend de : `hrt.prefab.Macros`, `hrt.prefab.fx.EmitterHelper`
- Utilisé par : `hrt.prefab.fx.Emitter`

## hrt.prefab.fx.Evaluator

- Fichier : `hrt/prefab/fx/Evaluator.hx` — 251 lignes — 13 blocs doc
- Types : `class Evaluator`
- Dépend de : `hrt.prefab.fx.FX`, `hrt.prefab.fx.Value`
- Utilisé par : `hide.comp.CurveEditor`, `hrt.prefab.Curve`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.gpuemitter.RelativeTransformSimulation`, `hrt.prefab.l2d.Particle2D`

## hrt.prefab.fx.Event

- Fichier : `hrt/prefab/fx/Event.hx` — 369 lignes — 43 blocs doc — contient du `#if`
- Types : `typedef EventInstance`, `interface IEvent`, `class Event`, `class Event3D`
- Héritage : `Event` extends `hrt.prefab.Prefab`, `Event` implements `IEvent`, `Event3D` extends `hrt.prefab.Object3D`, `Event3D` implements `IEvent`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab` (extends/use), `hrt.prefab.fx.FX`
- Utilisé par : `hide.comp.CurveEditor`, `hide.view.FXEditor`, `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.fx.SubFX`

## hrt.prefab.fx.FX

- Fichier : `hrt/prefab/fx/FX.hx` — 1480 lignes — 81 blocs doc — contient du `#if`
- Types : `enum FXPlayState`, `class FXAnimation`, `enum_abstract ParameterType`, `typedef Parameter`, `class FX`, `class DebugFXShader`, `class Desaturate`, `class DesaturateRFX`
- Héritage : `FXAnimation` extends `h3d.scene.Object`, `FX` extends `Object3D`, `FX` implements `BaseFX`, `DebugFXShader` extends `hxsl.Shader`, `Desaturate` extends `h3d.shader.ScreenShader`, `DesaturateRFX` implements `h3d.impl.RendererFX`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.comp.ColorPicker`, `hide.comp.ContentEditable`, `hide.comp.Range`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.impl.ColorSpace`, `hrt.prefab.ContextShared`, `hrt.prefab.Curve` (import/use), `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab` (import/use), `hrt.prefab.fx.AnimEvent`, `hrt.prefab.fx.BaseFX` (implements/import/use), `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.Event` (import/use), `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Value`, `hrt.prefab.l3d.Constraint`, `hrt.prefab.l3d.Trails`, `hrt.prefab.rfx.RendererFX`, `hrt.tools.MapUtils`
- Utilisé par : `hide.ThumbnailGeneratorApp`, `hide.comp.CurveEditor`, `hide.comp.SceneEditor`, `hide.tools.ThumbnailGenerator`, `hide.view.FXEditor`, `hide.view.Prefab`, `hide.view.shadereditor.ShaderEditor`, `hrt.prefab.Curve`, `hrt.prefab.Material`, `hrt.prefab.RenderProps`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.Event`, `hrt.prefab.fx.ShaderTarget`, `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Swarm`, `hrt.prefab.fx.gpuemitter.GPUEmitter`, `hrt.prefab.fx.gpuemitter.GPUEmitterObject`, `hrt.prefab.l3d.Trails`, `hrt.prefab.l3d.modellibrary.ModelLibrary`, `hrt.ui.HuiFileBrowser`

## hrt.prefab.fx.FX2D

- Fichier : `hrt/prefab/fx/FX2D.hx` — 430 lignes — 23 blocs doc — contient du `#if`
- Types : `class FX2DAnimation`, `class FX2D`
- Héritage : `FX2DAnimation` extends `h2d.Object`, `FX2D` extends `Object2D`, `FX2D` implements `BaseFX`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.Curve` (import/use), `hrt.prefab.Object2D` (extends/use), `hrt.prefab.Prefab` (import/use), `hrt.prefab.fx.BaseFX` (implements/import/use), `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.Event` (import/use), `hrt.prefab.fx.SubFX`, `hrt.prefab.fx.Value`, `hrt.prefab.l2d.Anim2D`, `hrt.prefab.l2d.Atlas`
- Utilisé par : `hide.view.FXEditor`, `hrt.prefab.fx.Emitter2D`

## hrt.prefab.fx.LookAt

- Fichier : `hrt/prefab/fx/LookAt.hx` — 228 lignes — 3 blocs doc — contient du `#if`
- Types : `class LookAtObject`, `class LookAt`
- Héritage : `LookAtObject` extends `h3d.scene.Object`, `LookAt` extends `Object3D`
- Dépend de : `hide.Element`, `hide.comp.PropsEditor`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.fx.Billboard`

## hrt.prefab.fx.ShaderTarget

- Fichier : `hrt/prefab/fx/ShaderTarget.hx` — 260 lignes — 14 blocs doc — contient du `#if`
- Types : `class ShaderTargetObj`, `class ShaderTarget`
- Héritage : `ShaderTargetObj` extends `h3d.scene.Object`, `ShaderTarget` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.MaterialSelector`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Shader`, `hrt.prefab.fx.FX`
- Utilisé par : `hrt.prefab.MaterialSelector`, `hrt.prefab.Shader`, `hrt.prefab.fx.FX`

## hrt.prefab.fx.SubFX

- Fichier : `hrt/prefab/fx/SubFX.hx` — 155 lignes — 13 blocs doc — contient du `#if`
- Types : `class SubFX`
- Héritage : `SubFX` extends `Reference`, `SubFX` implements `hrt.prefab.fx.Event.IEvent`
- Dépend de : `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.EditContext2`, `hrt.prefab.Prefab`, `hrt.prefab.Reference` (extends/use), `hrt.prefab.fx.Event` (implements/use), `hrt.prefab.fx.FX`
- Utilisé par : `hide.comp.SceneEditor`, `hide.view.FXEditor`, `hide.view.Prefab`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`

## hrt.prefab.fx.Swarm

- Fichier : `hrt/prefab/fx/Swarm.hx` — 774 lignes — 50 blocs doc — contient du `#if`
- Types : `class PerObjectRandom`, `class SwarmElement`, `class SwarmObject`, `class Swarm`
- Héritage : `PerObjectRandom` extends `hxsl.Shader`, `SwarmObject` extends `h3d.scene.Object`, `Swarm` extends `Object3D`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hrt.prefab.ContextShared`, `hrt.prefab.EditContext2`, `hrt.prefab.Material`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.Shader`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.FX`

## hrt.prefab.fx.Value

- Fichier : `hrt/prefab/fx/Value.hx` — 76 lignes — 17 blocs doc
- Types : `enum Value`
- Dépend de : `hrt.prefab.Curve`
- Utilisé par : `hrt.prefab.Curve`, `hrt.prefab.fx.BaseFX`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.fx.Evaluator`, `hrt.prefab.fx.FX`, `hrt.prefab.fx.FX2D`, `hrt.prefab.l2d.Particle2D`
