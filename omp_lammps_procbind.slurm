#!/bin/bash

#SBATCH --job-name=OpenMP36
#SBATCH --nodes=1
#SBATCH --time=00:20:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=1  # Number of tasks per node
#SBATCH --cpus-per-task=36   # Number of OpenMP threads per task
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export OMP_PROC_BIND=true

lmp -i in.ethanol -sf omp -l log.out

# It is good practice to use process binding always!
# In case OpenMP is in action, do not forget it!
# "Process binding is for training" 
