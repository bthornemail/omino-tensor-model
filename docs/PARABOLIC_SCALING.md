---
omino-centroid: "0x00"
omino-azimuth: "0°"
geometric-stratum: "+7: ALGORITHMS"
scaling-model: "Parabolic Nomogram"
substrate-targets:
  declarations: "../.omi/combinators.omi"
  definitions: "../.omi/TensorModel.hs"
  binary: "../.omi/combinators.o"
---
# Parabolic Scaling - Perfect-Square Tensor Equation

The primitive tensor model exposes the local parabolic scaling surface through
`evaluateParabolicNomogram`.

The standalone harness checks the zero-origin balance and keeps the formula
available to the C99 adapter as a direct fixed-width operation.
