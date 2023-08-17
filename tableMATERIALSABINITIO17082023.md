# AB-INITIO / MATERIALS

|                     |VASP [^1]| ABINIT | QE  | WANN90 | GPAW | CP2K | NWChem |
|---------------------|---------|----------|-----|--------|------|------|--------|
|   INFO. GATHERING   | yes     | yes      | yes |    -   | yes  |   -  |   -    |
|  INDEPENDENT CASES  |  -      | yes      | yes |    -   | yes  |   -  |   -    |
|      TEST SUITE     |  -      |failed[^2]| yes |    -   |   -  |   -  |   -    |
|   BENCHMARK CASES   |  -      |   -      | yes |    -   |   -  |   -  |   -    |
|    OpenMP SCALING   |  -      |   -      | -   |    -   |   -  |   -  |   -    |
|      MPI SCALING    |  -      |   -      | -   |    -   |   -  |   -  |   -    |
|    Hybrid SCALING   |  -      |   -      | -   |    -   |   -  |   -  |   -    |

[^1]: The VASP 6 licence documents have been completed, signed and submitted to the authors for validation.
[^2]: The ABINIT documentation discusses a bug in test suite for the former versions. Our GENIUS installed versions (8) seem to fall within those with the bug.
I have installed a conda ubuntu 9.8 version on the DSI guest2 laptop which should allow checking this point.
