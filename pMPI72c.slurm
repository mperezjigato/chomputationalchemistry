#!/bin/bash

#SBATCH --job-name=pureMPI72
#SBATCH --nodes=2
#SBATCH --time=00:20:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=72  # TOTAL Number of cores
#SBATCH --cpus-per-task=1    # Number of OpenMP threads per task
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos
module load Pirana/3.0.0-singularity

mpirun lmp -i in.ethanol -l log.out
