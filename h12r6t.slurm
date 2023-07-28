#!/bin/bash

#SBATCH --job-name=h12t6
#SBATCH --nodes=2
#SBATCH --time=00:45:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=12         
#SBATCH --cpus-per-task=6
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export OMP_PROC_BIND=true

mpirun lmp -i in.ethanol -sf omp -pk omp ${SLURM_CPUS_PER_TASK} -l log.out
