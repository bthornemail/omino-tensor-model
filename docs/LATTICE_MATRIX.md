---
omino-centroid: "0x00"
omino-azimuth: "0°"
geometric-stratum: "+2: DOMAINS"
lattice-boundary: "4320 local incidences"
substrate-targets:
  declarations: "../.omi/rules.omi"
  definitions: "../.omi/TensorModelCheck.hs"
  binary: "../.omi/modules.o"
---
# Lattice Matrix - Local Incidence Bounds

The substrate core fixes the local incidence scale at `4320`, with higher
interaction horizons treated as bounded coordinate surfaces rather than runtime
search tables.

The local verification harness preserves the five canonical substrate target
names for rules, facts, closures, combinators, and cons.
