# MISCELLANEOUS

|                     | ASE [^1]| ALPHAFOLD/OpenMM | PLUMED [^3] |
|---------------------|---------|------------------|-------------|
|     INFO. GATHERING | yes     |     yes [^2]     |   -         |
|  INDEPENDENT CASES  | yes     |        -         |   -         |
|      TEST SUITE     | yes     |        -         |   -         |
|     OpenMP SCALING  |  -      |        -         |   -         |
|        MPI SCALING  | yes     |        -         |   -         |
|     Hybrid SCALING  |  -      |        -         |   -         |

[^1]: Several conda virtual environments have been installed on the Ubunbu 22.04 WSL distribution at DSI guest2: (a) "geniushpc": ASE, GPAW, quantum-espresso, LAMMPS; (b) "abinitbigdft"; (c) "pkinetrareev": PyEMMA, ; (d) "nbsjarvistools": JupyterLab, PYIRON, JARVIS-TOOLS, GRIP.
[^2]: see week 7's summary for further information on AlphaFold.
[^3]: Originally developed for CPMD (uninstalled and currently open-source), it is perfect to carry out and analyse MD calculations with LAMMPS. It computes free-energy (metadynamics, Jarzynski), rare-event sampling (OPENPATHSAMPLING), solvent (SASA) and collective variable calculations. Moreover, plenty of tutorials, examples and documentation exists on protein hydration using PLUMED, and simple toy molecule hydration cases as zwitterionic species modelling proteins (the alanine dipeptide).