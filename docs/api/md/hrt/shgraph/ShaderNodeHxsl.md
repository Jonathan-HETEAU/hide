# hrt.shgraph.ShaderNodeHxsl

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderNodeHxsl.hx`](../../../../../hrt/shgraph/ShaderNodeHxsl.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

Subclasses: [`hrt.shgraph.Functions`](Functions.md), [`hrt.shgraph.Operation`](Operation.md), [`hrt.shgraph.Random`](Random.md), [`hrt.shgraph.nodes.Abs`](nodes/Abs.md), [`hrt.shgraph.nodes.Acos`](nodes/Acos.md), [`hrt.shgraph.nodes.Asin`](nodes/Asin.md), [`hrt.shgraph.nodes.Atan`](nodes/Atan.md), [`hrt.shgraph.nodes.Atan2`](nodes/Atan2.md), [`hrt.shgraph.nodes.BandMask`](nodes/BandMask.md), [`hrt.shgraph.nodes.CameraToScreen`](nodes/CameraToScreen.md), [`hrt.shgraph.nodes.CameraToWorld`](nodes/CameraToWorld.md), [`hrt.shgraph.nodes.Ceil`](nodes/Ceil.md), [`hrt.shgraph.nodes.Clamp`](nodes/Clamp.md), [`hrt.shgraph.nodes.Combine`](nodes/Combine.md), [`hrt.shgraph.nodes.CombineAlpha`](nodes/CombineAlpha.md), [`hrt.shgraph.nodes.Contrast`](nodes/Contrast.md), [`hrt.shgraph.nodes.Cos`](nodes/Cos.md), [`hrt.shgraph.nodes.Cross`](nodes/Cross.md), [`hrt.shgraph.nodes.DecalProjection`](nodes/DecalProjection.md), [`hrt.shgraph.nodes.Deg2Rad`](nodes/Deg2Rad.md), [`hrt.shgraph.nodes.Dissolve`](nodes/Dissolve.md), [`hrt.shgraph.nodes.Distance`](nodes/Distance.md), [`hrt.shgraph.nodes.Divide`](nodes/Divide.md), [`hrt.shgraph.nodes.Dot`](nodes/Dot.md), [`hrt.shgraph.nodes.Exp`](nodes/Exp.md), [`hrt.shgraph.nodes.Flipbook`](nodes/Flipbook.md), [`hrt.shgraph.nodes.Floor`](nodes/Floor.md), [`hrt.shgraph.nodes.Fract`](nodes/Fract.md), [`hrt.shgraph.nodes.Fresnel`](nodes/Fresnel.md), [`hrt.shgraph.nodes.FrontFacing`](nodes/FrontFacing.md), [`hrt.shgraph.nodes.InvLerp`](nodes/InvLerp.md), [`hrt.shgraph.nodes.Invert`](nodes/Invert.md), [`hrt.shgraph.nodes.Length`](nodes/Length.md), [`hrt.shgraph.nodes.LinearDepth`](nodes/LinearDepth.md), [`hrt.shgraph.nodes.Log`](nodes/Log.md), [`hrt.shgraph.nodes.Luminance`](nodes/Luminance.md), [`hrt.shgraph.nodes.MainLightColor`](nodes/MainLightColor.md), [`hrt.shgraph.nodes.MainLightDirection`](nodes/MainLightDirection.md), [`hrt.shgraph.nodes.Max`](nodes/Max.md), [`hrt.shgraph.nodes.Min`](nodes/Min.md), [`hrt.shgraph.nodes.Mix`](nodes/Mix.md), [`hrt.shgraph.nodes.Mod`](nodes/Mod.md), [`hrt.shgraph.nodes.Multiply`](nodes/Multiply.md), [`hrt.shgraph.nodes.NormalStrength`](nodes/NormalStrength.md), [`hrt.shgraph.nodes.Normalize`](nodes/Normalize.md), [`hrt.shgraph.nodes.ObjectPos`](nodes/ObjectPos.md), [`hrt.shgraph.nodes.ObjectScale`](nodes/ObjectScale.md), [`hrt.shgraph.nodes.ObjectToTangent`](nodes/ObjectToTangent.md), [`hrt.shgraph.nodes.ObjectToWorld`](nodes/ObjectToWorld.md), [`hrt.shgraph.nodes.OneMinus`](nodes/OneMinus.md), [`hrt.shgraph.nodes.Parallax`](nodes/Parallax.md), [`hrt.shgraph.nodes.Pow`](nodes/Pow.md), [`hrt.shgraph.nodes.Rad2Deg`](nodes/Rad2Deg.md), [`hrt.shgraph.nodes.Random`](nodes/Random.md), [`hrt.shgraph.nodes.Random2D`](nodes/Random2D.md), [`hrt.shgraph.nodes.Random3D`](nodes/Random3D.md), [`hrt.shgraph.nodes.Sampler`](nodes/Sampler.md), [`hrt.shgraph.nodes.Saturate`](nodes/Saturate.md), [`hrt.shgraph.nodes.SceneDepth`](nodes/SceneDepth.md), [`hrt.shgraph.nodes.SceneDepthToWorld`](nodes/SceneDepthToWorld.md), [`hrt.shgraph.nodes.SceneNormal`](nodes/SceneNormal.md), [`hrt.shgraph.nodes.ScenePos`](nodes/ScenePos.md), [`hrt.shgraph.nodes.ScreenToWorld`](nodes/ScreenToWorld.md), [`hrt.shgraph.nodes.Sign`](nodes/Sign.md), [`hrt.shgraph.nodes.SimpleNoise`](nodes/SimpleNoise.md), [`hrt.shgraph.nodes.Sin`](nodes/Sin.md), [`hrt.shgraph.nodes.SmoothStep`](nodes/SmoothStep.md), [`hrt.shgraph.nodes.Split`](nodes/Split.md), [`hrt.shgraph.nodes.Sqrt`](nodes/Sqrt.md), [`hrt.shgraph.nodes.SquareWave`](nodes/SquareWave.md), [`hrt.shgraph.nodes.Step`](nodes/Step.md), [`hrt.shgraph.nodes.StripAlpha`](nodes/StripAlpha.md), [`hrt.shgraph.nodes.Subtract`](nodes/Subtract.md), [`hrt.shgraph.nodes.Tan`](nodes/Tan.md), [`hrt.shgraph.nodes.TangentToObject`](nodes/TangentToObject.md), [`hrt.shgraph.nodes.TangentToWorld`](nodes/TangentToWorld.md), [`hrt.shgraph.nodes.TilingAndOffset`](nodes/TilingAndOffset.md), [`hrt.shgraph.nodes.TriangleWave`](nodes/TriangleWave.md), [`hrt.shgraph.nodes.TriplanarParams`](nodes/TriplanarParams.md), [`hrt.shgraph.nodes.UVScroll`](nodes/UVScroll.md), [`hrt.shgraph.nodes.UnpackNormal`](nodes/UnpackNormal.md), [`hrt.shgraph.nodes.UvToScreen`](nodes/UvToScreen.md), [`hrt.shgraph.nodes.Vec2`](nodes/Vec2.md), [`hrt.shgraph.nodes.Vec3`](nodes/Vec3.md), [`hrt.shgraph.nodes.Vec4`](nodes/Vec4.md), [`hrt.shgraph.nodes.WorldToCamera`](nodes/WorldToCamera.md), [`hrt.shgraph.nodes.WorldToObject`](nodes/WorldToObject.md), [`hrt.shgraph.nodes.WorldToScreen`](nodes/WorldToScreen.md), [`hrt.shgraph.nodes.WorldToTangent`](nodes/WorldToTangent.md)

A node written in HXSL (`static var SRC`), its inputs and outputs being the variables with `@sginput` and `@sgoutput` metadata.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getInputs

```haxe
override function getInputs():Array<InputInfo>
```

### getOutputs

```haxe
override function getOutputs():Array<OutputInfo>
```

### generate

```haxe
override function generate(ctx:NodeGenContext):Void
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
