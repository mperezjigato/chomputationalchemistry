#!/usr/bin/env bash
#SBATCH --account=lp_h_vsc35663
#SBATCH --nodes=2
#SBATCH --ntasks=49
#SBATCH --cpus-per-task=1
#SBATCH --time=02:00:00
#SBATCH --cluster=genius
module purge
module use /apps/leuven/skylake/2021a/modules/all
module load ASE/3.22.0-intel-2021a
module load GPAW/21.6.0-intel-2021a
module load GPAW-setups/0.9.20000
cd $SLURM_SUBMIT_DIR
mpiexec gpaw python step1.py > outlog1.txt
mpiexec gpaw python step2.py > outlog2.txt
mpiexec gpaw python step3.py > outlog3.txt
. ./timev.sh
