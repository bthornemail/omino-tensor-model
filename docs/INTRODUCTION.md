---
omino-centroid: "0x00"
omino-azimuth: "0°"
geometric-stratum: "Layer 0: SUBSTRATE CORE"
primitive-footprint: "16-bit"
substrate-targets:
  definitions: "../.omi/TensorModel.hs"
  binary: "../.omi/omino_tensor.h"
---
# Introduction - Layer 0 Substrate Core

Layer 0 owns the primitive 16-bit physical word footprint and the bounded tensor
surface below the execution wire. The local substrate clamps derived coordinates
into the fixed `0x0000..0xFFFF` word context.

The visible document layer remains separate from the flat hidden `../.omi/`
machine substrate.
