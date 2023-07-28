#!/bin/bash

#SBATCH --job-name=h4t4
#SBATCH --nodes=1
#SBATCH --time=00:45:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=4         
#SBATCH --cpus-per-task=4
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export OMP_PROC_BIND=true

mpirun lmp -i in.ethanol -sf omp -pk omp ${SLURM_CPUS_PER_TASK} -l log.out
