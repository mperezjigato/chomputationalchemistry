#!/bin/bash

#SBATCH --job-name=lmp36omp2
#SBATCH --nodes=1
#SBATCH --time=00:20:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=1           # ALWAYS ONE FOR PURE-OPENMP CALCULATION!
#SBATCH --cpus-per-task=36   # Number of OpenMP threads per task
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}

lmp -i in.ethanol -sf omp -l log.out

# For a pure-OpenMP calculation, do not try to use neither mpirun nor srun (Genius uses mpirun)
# Whenever you run LAMMPS under OpenMP (either on a pure OpenMP or on a hybrid calculation in combination with MPI):
# Never forget the directive/executable option `--sf omp` (unless you use the KOKKOS accelerator -different syntax-)
