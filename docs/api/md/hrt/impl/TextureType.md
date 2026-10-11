# hrt.impl.TextureType

**enum abstract** · package [`hrt.impl`](README.md) · source [`hrt/impl/TextureType.hx`](../../../../../hrt/impl/TextureType.hx)

The type of a texture value of a prefab property.

Underlying type: `String`

Implicit casts from: `String`

Implicit casts to: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `gradient` | `"gradient"` | A gradient: `{ type : "gradient", data : GradientData }`. |
| `path` | `"path"` | A texture path (the default; not used as a type in the JSON, where the value is the path string). |
