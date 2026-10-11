# Package `hrt.texgraph`

[← retour](../DEPENDENCIES.md)

## hrt.texgraph.Macros

- Fichier : `hrt/texgraph/Macros.hx` — 34 lignes — 1 blocs doc — contient du `#if`
- Types : `class Macros`
- Dépend de : `hrt.texgraph.TexNode`
- Utilisé par : `hrt.texgraph.TexNode`

## hrt.texgraph.TexGraph

- Fichier : `hrt/texgraph/TexGraph.hx` — 333 lignes — 27 blocs doc — contient du `#if`
- Types : `typedef Edge`, `typedef Connection`, `class TexGraph`
- Héritage : `TexGraph` extends `hrt.prefab.Prefab`
- Dépend de : `hide.Ide`, `hrt.prefab.Prefab` (extends/use), `hrt.texgraph.TexNode`, `hrt.texgraph.nodes.TexOutput`
- Utilisé par : `hide.view.textureeditor.TextureEditor`, `hrt.texgraph.TexNode`

## hrt.texgraph.TexNode

- Fichier : `hrt/texgraph/TexNode.hx` — 333 lignes — 33 blocs doc — contient du `#if`
- Types : `typedef AliasInfo`, `class TexNode`
- Dépend de : `hide.Element`, `hide.view.GraphEditor`, `hide.view.GraphInterface` (import/use), `hrt.texgraph.Macros`, `hrt.texgraph.TexGraph` (import/use)
- Utilisé par : `hide.view.textureeditor.TextureEditor`, `hrt.texgraph.Macros`, `hrt.texgraph.TexGraph`, `hrt.texgraph.nodes.Blur`, `hrt.texgraph.nodes.BnWNoise`, `hrt.texgraph.nodes.Comment`, `hrt.texgraph.nodes.Disc`, `hrt.texgraph.nodes.Multiply`, `hrt.texgraph.nodes.RGBAMerge`, `hrt.texgraph.nodes.RGBASplit`, `hrt.texgraph.nodes.TexOutput`, `hrt.texgraph.nodes.WhiteNoise`
