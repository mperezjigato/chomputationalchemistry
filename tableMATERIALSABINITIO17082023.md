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
[^2]: The ABINIT documentation discusses a bug in test suite for the former versions (current version is 9.10.0). Our GENIUS installed versions (8.8.3 and 8.4.4) seem to fall within those with the bug. I have tried the Ubuntu ABINIT 9.6.0 installation, which unfortunately exhibits the same problem. Recently, a conda 9.8.0 ABINIT version has been installed on the DSI guest2 laptop which should allow to check this point.
