# Purely octahedral vs cubo-octahedral (fcc) Ag nanoparticles - MPI wall time (seconds) of the GPAW total energy calculation (neither EMT optimisation walltime nor GPAW DOS walltime have been considered). For the sake of completness, the MPI core number has been included. 

|NPAR|NCpOH|NCc=2|NC c=40|WTpOH    |WTtOH2  |WTtOH40  |
|----|-----|-----|-------|---------|--------|---------|
|5   |9    |6    |   --- |75.258   |17.607  |  ---    |
|7   |23   |20   |   --- |         |        |         |
|9   |49   |46   |   --- |         |        |         |
|10  |67   |64   |    49 |1574.049 |1046.277|269.801  |
|11  |89   |86   |   --- |         |        |         |
|13  |147  |144  |   --- |         |        |         |
|15  |226  |223  |   171 |FAIL[^1] |FAIL[^2]|FAIL[^3] |
|17  |328  |325  |   --- |         |        |         |
|19  |458  |455  |   --- |         |        |         |
|20  |534  |531  |   412 |FAIL[^4] |FAIL[^5]|FAIL[^6] |
|25  |1043 |1040 |   812 |         |        |         |
|30  |1801 |1798 |  1411 |         |        |         |

[^1]: This 2255 atom Ag octahedral nanoparticle (NPAR=15) GPAW total energy calculation has failed (no GPAW DOS calculation has taken place at all). Moreover, it should be noted that *the first step of the calculation, ie the EMT classical geometry optimisation (ASE) has converged in 61 cycles*.

[^2]: This 2225 atom Ag octahedral nanoparticle (NPAR=15) GPAW total energy calculation has failed (no GPAW DOS calculation has taken place at all). Moreover, it should be noted that *the first step of the calculation, ie the EMT classical geometry optimisation (ASE) has converged in 58 cycles*.

[^3]: This 1709 atom Ag truncated-Oh nanoparticle (NPAR=15) GPAW total energy calculation has failed (no GPAW DOS calculation has taken place at all). Moreover, it should be noted that *the first step of the calculation, ie the EMT classical geometry optimisation (using ASE, not GPAW) has converged in 46 cycles*. Regarding the GPAW total energy calculation, it must be noted that 31 electronic iterations had been completed before the calculation crushed, those iterations displaying the typical charge-sloshing behaviour of (minimal-basis set) LCAO methods in delocalised electronic systems.  

[^4]: All the steps of the calculation for this 5340 atom Ag octahedral nanoparticle (NPAR=20) have failed, including the EMT classical geometry optimisation (ASE) and both quantum mechanical GPAW steps (the GPAW total energy calculation is what crushed; the GPAW DOS calculation simply requires the converged electronic system to be completed).

[^5]: All the steps of the calculation for this 5310 atom Ag truncated-Oh nanoparticle (NPAR=20) have failed, including the EMT classical geometry optimisation (ASE) and both quantum mechanical GPAW steps (the GPAW total energy calculation is what crushed; the GPAW DOS calculation simply requires the converged electronic system to be completed).

[^6]: This 4116 atom Ag truncated-Oh nanoparticle (NPAR=20) GPAW total energy calculation has failed (no GPAW DOS calculation has taken place at all, since the electronic system had not converged in the previous step). Moreover, it should be noted that *the first step of the calculation, ie the EMT classical geometry optimisation (ASE) converged in 59 cycles*.