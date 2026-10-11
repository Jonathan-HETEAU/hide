# Package `hrt.shgraph.nodes`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Abs`](Abs.md) | class | The shader graph node "Abs" (Math): the output is the result of \|A\|. |
| [`Acos`](Acos.md) | class | The shader graph node "Arc Cosinus" (Math): the output is the arc cosinus of A. |
| [`Add`](Add.md) | class | The shader graph node "Add" (Math): the output is the result of A + B. |
| [`AlphaOver`](AlphaOver.md) | class | The shader graph node "Alpha Over" (Channel): blends between A and B based on A alpha * opacity. |
| [`AlphaPreview`](AlphaPreview.md) | class | Displays the transparency of a node preview on a checkerboard. |
| [`Asin`](Asin.md) | class | The shader graph node "Arc Sinus" (Math): the output is the arc sinus of A. |
| [`Atan`](Atan.md) | class | The shader graph node "Arc Tangent" (Math): the output is the arc tangent of A. |
| [`Atan2`](Atan2.md) | class | The shader graph node "Arc Tangent 2" (Math): the output is the arc tangent of a.y / a.x. |
| [`AutoAlpha`](AutoAlpha.md) | class | The shader graph node "Auto Alpha" (Channel): set the alpha of the given vector to max(rgb) * scale. |
| [`BandMask`](BandMask.md) | class | The shader graph node "Band Mask" (UV): returns 1 if value is within the band indexed. |
| [`BoolConst`](BoolConst.md) | class | The shader graph node "Const Bool" (Property): boolean input (static). |
| [`CameraToScreen`](CameraToScreen.md) | class | The shader graph node "CameraToScreen" (Property): transform a position from camera space to screen space. |
| [`CameraToWorld`](CameraToWorld.md) | class | The shader graph node "CameraToWorld" (Property): transform a position from camera space to world space. |
| [`Ceil`](Ceil.md) | class | The shader graph node "Ceil" (Math): the nearest integer greater than or equal to X. |
| [`Clamp`](Clamp.md) | class | The shader graph node "Clamp" (Math): limits value between min and max. |
| [`Color`](Color.md) | class | The shader graph node "Const Color" (Property): color property (static). |
| [`Combine`](Combine.md) | class | The shader graph node "Combine" (Channel): create a vector of size 4 from 4 floats. |
| [`CombineAlpha`](CombineAlpha.md) | class | The shader graph node "Combine Alpha" (Channel): create a vector of size 4 from a RGB and an Alpha float. |
| [`Comment`](Comment.md) | class | The shader graph node "Comment" (Comment): a box that allows you to comment your graph. |
| [`Cond`](Cond.md) | class | The shader graph node "Condition" (Condition): create a custom condition between two inputs. |
| [`Contrast`](Contrast.md) | class | The shader graph node "Contrast" (Math): adjusts the contrast of input by the amount given, around the pivot value. |
| [`Cos`](Cos.md) | class | The shader graph node "Cosinus" (Math): the output is the cosinus of A. |
| [`Cross`](Cross.md) | class | The shader graph node "Cross" (Math): the output is the cross product of a and b. |
| [`DecalProjection`](DecalProjection.md) | class | The shader graph node "Decal Projection" (UV): compute decal projection. |
| [`Deg2Rad`](Deg2Rad.md) | class | The shader graph node "Deg to Rad" (Math): convert an angle in degree to an angle in radians. |
| [`Dissolve`](Dissolve.md) | class | The shader graph node "Dissolve" (Math): dissolve input. |
| [`Distance`](Distance.md) | class | The shader graph node "Distance" (Math): the distance between A and B. |
| [`Divide`](Divide.md) | class | The shader graph node "Divide" (Math): the output is the result of A / B. |
| [`Dot`](Dot.md) | class | The shader graph node "Dot" (Math): the output is the dot product of a and b. |
| [`Exp`](Exp.md) | class | The shader graph node "Exp" (Math): the output is the result of exp(x). |
| [`Flipbook`](Flipbook.md) | class | The shader graph node "Flipbook" (UV): animate UV by as a flipbook animation. |
| [`FloatConst`](FloatConst.md) | class | The shader graph node "Const Value" (Property): number input (static). |
| [`Floor`](Floor.md) | class | The shader graph node "Floor" (Math): the nearest integer less than or equal to X. |
| [`Fract`](Fract.md) | class | The shader graph node "Fract" (Math): the fractional part of X. |
| [`Fresnel`](Fresnel.md) | class | The shader graph node "Fresnel" (Math): fresnel input. |
| [`FrontFacing`](FrontFacing.md) | class | The shader graph node "Front facing" (Property): tells if pixel is front or back facing. |
| [`IfCondition`](IfCondition.md) | class | The shader graph node "If" (Condition): return the correct input according to the condition. |
| [`InvLerp`](InvLerp.md) | class | The shader graph node "InvLerp" (Math): inverse linear interpolation : returns a value between 0 and 1 that indicated where value lies between A and B (0 <= A, 1 >= B). |
| [`Invert`](Invert.md) | class | The shader graph node "Invert" (Math): the output is 1 - in. |
| [`Length`](Length.md) | class | The shader graph node "Length" (Math): the length of A. |
| [`LinearDepth`](LinearDepth.md) | class | The shader graph node "Linear Depth" (Property): linearize depth. |
| [`Log`](Log.md) | class | The shader graph node "Log" (Math): the output is the result of log(x). |
| [`Luminance`](Luminance.md) | class | The shader graph node "Luminance" (Math): the output is the luminance of the rgb color. |
| [`MainLightColor`](MainLightColor.md) | class | The shader graph node "MainLightColor" (Property): get the main light color. |
| [`MainLightDirection`](MainLightDirection.md) | class | The shader graph node "MainLightDirection" (Property): get the main light direction. |
| [`Max`](Max.md) | class | The shader graph node "Max" (Math): the output is the maximum between A and B. |
| [`Min`](Min.md) | class | The shader graph node "Min" (Math): the output is the minimum between A and B. |
| [`Mix`](Mix.md) | class | The shader graph node "Mix" (Math): linear interpolation between A and B using Mix. |
| [`Mod`](Mod.md) | class | The shader graph node "Modulo" (Math): the output is the result of X modulo MOD. |
| [`Multiply`](Multiply.md) | class | The shader graph node "Multiply" (Math): the output is the result of A * B. |
| [`NormalMap`](NormalMap.md) | class | The shader graph node "Normal map" (Math): returns normal in world space using a normal map. |
| [`NormalStrength`](NormalStrength.md) | class | The shader graph node "Normal Strength" (Math): adjusts the strength of a tangent space normal. |
| [`Normalize`](Normalize.md) | class | The shader graph node "Normalize" (Math): the output is the result of normalize(x). |
| [`ObjectPos`](ObjectPos.md) | class | The shader graph node "ObjectPos" (Property): returns the position of the object (in world space). |
| [`ObjectScale`](ObjectScale.md) | class | The shader graph node "ObjectScale" (Property): returns the scale of the object. |
| [`ObjectToTangent`](ObjectToTangent.md) | class | The shader graph node "ObjectToTangent" (Property): transform a direction from object space to tangent space. |
| [`ObjectToWorld`](ObjectToWorld.md) | class | The shader graph node "ObjectToWorld" (Property): transform a position from object space to world space. |
| [`OneMinus`](OneMinus.md) | class | The shader graph node "One minus" (Math): returns 1 - a. |
| [`Parallax`](Parallax.md) | class | The shader graph node "Parallax" (UV): parallaxed uv offset. |
| [`PolarCoordinates`](PolarCoordinates.md) | class | The shader graph node "Polar Coordinates" (UV): convert UV in carthesian coordinates to polar coordinates UV. |
| [`Pow`](Pow.md) | class | The shader graph node "Power" (Math): the output is the result of x ^ b. |
| [`Preview`](Preview.md) | class | The shader graph node "Preview" (Output): displays its input, to debug. |
| [`Project`](Project.md) | class | The shader graph node "Project" (Math): project the given world space vector into view space. |
| [`Rad2Deg`](Rad2Deg.md) | class | The shader graph node "Rad to Deg" (Math): convert an angle in rad to an angle in degrees. |
| [`Random`](Random.md) | class | The shader graph node "Random" (Math): gives a random number from a vec2 seed. |
| [`Random2D`](Random2D.md) | class | The shader graph node "Random2D" (Math): gives a random vec2 from a vec2 seed. |
| [`Random3D`](Random3D.md) | class | The shader graph node "Random3D" (Math): gives a random vec3 from a vec2 seed. |
| [`Remap`](Remap.md) | class | The shader graph node "Remap" (Math): remap value in range [inMin, inMax] to range [outMin, outMax]. |
| [`Reroute`](Reroute.md) | class | Base class for the reroute nodes : forward its input to its output unchanged. |
| [`RerouteBool`](RerouteBool.md) | class | The shader graph node "Reroute Bool" (Other): forwards a bool unchanged. |
| [`RerouteFloat`](RerouteFloat.md) | class | The shader graph node "Reroute Float" (Other): forwards a float or vector unchanged. |
| [`RerouteInt`](RerouteInt.md) | class | The shader graph node "Reroute Int" (Other): forwards an int unchanged. |
| [`RerouteSampler`](RerouteSampler.md) | class | The shader graph node "Reroute Sampler" (Other): forwards a texture unchanged. |
| [`Rotate`](Rotate.md) | class | The shader graph node "Rotate" (UV): rotate UV around Center by Rotation radians. |
| [`RotateAboutAxis`](RotateAboutAxis.md) | class | The shader graph node "RotateAboutAxis" (Math): rotate position around normalized rotation axis by Rotation angle. |
| [`Sampler`](Sampler.md) | class | The shader graph node "Sample Texture 2D" (Property): get color from texture and UV. |
| [`Saturate`](Saturate.md) | class | The shader graph node "Saturate" (Math): saturate input A. |
| [`SceneDepth`](SceneDepth.md) | class | The shader graph node "Scene Depth" (Property): read depth behind current pixel. |
| [`SceneDepthToWorld`](SceneDepthToWorld.md) | class | The shader graph node "SceneDepthToWorld" (Property): transform a scene depth to a world space position. |
| [`SceneNormal`](SceneNormal.md) | class | The shader graph node "Scene Normal" (Property): get scene normal behind current pixel. |
| [`ScenePos`](ScenePos.md) | class | The shader graph node "Scene Pos" (Property): get scene position behind current pixel. |
| [`ScreenToWorld`](ScreenToWorld.md) | class | The shader graph node "ScreenToWorld" (Property): transform a position from screen space to world space. |
| [`ShaderVar`](ShaderVar.md) | class | The base of the nodes reading or writing a local variable of the graph. |
| [`Sign`](Sign.md) | class | The shader graph node "Sign" (Math): returns 1.0 if a[i] is positive, -1.0 otherwise. |
| [`SimpleNoise`](SimpleNoise.md) | class | A gradient noise node (disabled). |
| [`Sin`](Sin.md) | class | The shader graph node "Sinus" (Math): the output is the sinus of A. |
| [`SmoothStep`](SmoothStep.md) | class | The shader graph node "Smooth Step" (Math): the smooth Hermite interpolation of `fact` between the edges A and B (`smoothstep`). |
| [`Split`](Split.md) | class | The shader graph node "Split" (Channel): split all components of a vector into floats. |
| [`Sqrt`](Sqrt.md) | class | The shader graph node "Square Root" (Math): the output is the squre root A. |
| [`SquareWave`](SquareWave.md) | class | The shader graph node "Square Wave" (Math): a square wave of period 1 oscilating between -1 and 1. |
| [`Step`](Step.md) | class | The shader graph node "Step" (Math): generate a step function by comparing a[i] to edge[i]. |
| [`StripAlpha`](StripAlpha.md) | class | The shader graph node "Strip Alpha" (Channel): separate the rgb and a components of an rgba vector. |
| [`SubGraph`](SubGraph.md) | class | The shader graph node "SubGraph": include a subgraph. |
| [`Subtract`](Subtract.md) | class | The shader graph node "Subtract" (Math): the output is the result of A - B. |
| [`Tan`](Tan.md) | class | The shader graph node "Tangent" (Math): the output is the tangent of A. |
| [`TangentToObject`](TangentToObject.md) | class | The shader graph node "TangentToObject" (Property): transform a direction from tangent space to object space. |
| [`TangentToWorld`](TangentToWorld.md) | class | The shader graph node "TangentToWorld" (Property): transform a direction from tangent space to world space. |
| [`TexFilter`](TexFilter.md) | enum abstract | The filter of the `Sampler` node. |
| [`TexWrap`](TexWrap.md) | enum abstract | The wrapping of the `Sampler` node. |
| [`Text`](Text.md) | class | The shader graph node "Text" (Other): only UI, to add text. |
| [`TilingAndOffset`](TilingAndOffset.md) | class | The shader graph node "Tiling and Offset" (UV): tiles and offsets the value of input UV by the inputs Tiling and Offset respectively. |
| [`TriangleWave`](TriangleWave.md) | class | The shader graph node "Triangle Wave" (Math): a triangle wave of period 1 oscilating between -1 and 1. |
| [`TriplanarMode`](TriplanarMode.md) | enum abstract | The space of the triplanar mapping. |
| [`TriplanarNormalMap`](TriplanarNormalMap.md) | class | The shader graph node "Triplanar normal map" (Math): sample a normal map using triplanar params. |
| [`TriplanarParams`](TriplanarParams.md) | class | The shader graph node "Triplanar params" (Math): returns parameters useful to sample a texture using triplanar mapping. |
| [`TriplanarSampler`](TriplanarSampler.md) | class | The shader graph node "Triplanar sampler" (Math): sample a texture using triplanar params. |
| [`UVScroll`](UVScroll.md) | class | The shader graph node "UV Scroll" (UV): scroll UV according to U & V speed. |
| [`UnpackNormal`](UnpackNormal.md) | class | The shader graph node "Unpack Normal" (Channel): unpacks a normal stored in a color. |
| [`UvToScreen`](UvToScreen.md) | class | The shader graph node "UV To Screen" (UV): converts texture coordinates to screen coordinates (`-1` to `1`). |
| [`VarRead`](VarRead.md) | class | The shader graph node "Var Read" (Variables): read a value from a local variable. |
| [`VarWrite`](VarWrite.md) | class | The shader graph node "Var Write" (Variables): write a value to a local variable. |
| [`Vec2`](Vec2.md) | class | The shader graph node "Vec2" (Channel): create a vector of size 2 from 2 floats. |
| [`Vec3`](Vec3.md) | class | The shader graph node "Vec3" (Channel): create a vector of size 3 from 3 floats. |
| [`Vec4`](Vec4.md) | class | The shader graph node "Vec4" (Channel): create a vector of size 4 from 4 floats. |
| [`WorldToCamera`](WorldToCamera.md) | class | The shader graph node "WorldToCamera" (Property): transform a position from world space to camera space. |
| [`WorldToObject`](WorldToObject.md) | class | The shader graph node "WorldToObject" (Property): transform a position from world space to object space. |
| [`WorldToScreen`](WorldToScreen.md) | class | The shader graph node "WorldToScreen" (Property): transform a position from world space to screen space. |
| [`WorldToTangent`](WorldToTangent.md) | class | The shader graph node "WorldToTangent" (Property): transform a direction from world space to tangent space. |
