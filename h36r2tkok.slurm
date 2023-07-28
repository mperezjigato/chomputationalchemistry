#!/bin/bash

#SBATCH --job-name=MPIpK36bar2
#SBATCH --nodes=2
#SBATCH --time=00:45:00
#SBATCH --account=lp_h_vsc35663
#SBATCH --ntasks=36          # TOTAL Number of cores
#SBATCH --cpus-per-task=2    # Number of OpenMP threads per task
#SBATCH --cluster=genius

module purge
module use /apps/leuven/skylake/2021a/modules/all
module load LAMMPS/29Sep2021-foss-2021a-Python-3.9.5-kokkos

export OMP_NUM_THREADS=${SLURM_CPUS_PER_TASK}
export OMP_PROC_BIND=true

mpirun lmp -k on t ${OMP_NUM_THREADS} -sf kk -i in.ethanol -l log.out


# although KOKKOS operates only on the MPI side, it can be used in combination with OpenMP
# the hybrid syntax includes the numbre of OMP threads under "-k on t ${OMP_NUM_THREADS}"
