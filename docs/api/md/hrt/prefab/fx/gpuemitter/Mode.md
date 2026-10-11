# hrt.prefab.fx.gpuemitter.Mode

**enum** · package [`hrt.prefab.fx.gpuemitter`](README.md) · module `hrt.prefab.fx.gpuemitter.GPUEmitter` · source [`hrt/prefab/fx/gpuemitter/GPUEmitter.hx`](../../../../../../../hrt/prefab/fx/gpuemitter/GPUEmitter.hx)

The space of the particles of a `GPUEmitter`.

## Constructors

### World

```haxe
World
```

World space: the particles stay where they were emitted.

### Local

```haxe
Local
```

The space of the emitter: the particles move with it.

### Camera

```haxe
Camera
```

A cube of size `cameraModeDistance` around the camera: the particles are spawned in it and wrap around it (rain, snow...).
