#!/bin/csh -f
#PBS -l select=1:ncpus=4:mpiprocs=4
#PBS -N pbs_template
#PBS -l software=python
#PBS -V
#PBS -q workq
#EXECUTION SEQUENCE
cd $PBS_O_WORKDIR
export OMP_NUM_THREADS=4;  /soft/tools/python_2_7_15/bin/python /home/v_dayanand/PhD/Experiments/Evolutionary_IM_Dynamic_Graphs/dynamic_graphs_evolutionary_im.py "$PBSJOBID.log"