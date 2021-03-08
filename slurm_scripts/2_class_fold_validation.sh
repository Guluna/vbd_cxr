#!/bin/bash

#SBATCH -o ../slurm_outputs/train_fold_%A.%a.out
#SBATCH -e ../slurm_outputs/train_fold_%A.%a.err
#SBATCH -N 1
#SBATCH -t 24:00:00
#SBATCH -p gpu
#SBATCH -w node009
#SBATCH --mail-type=all
#SBATCH --mail-user=ssebastian94@gwu.edu
#SBATCH --array=0-4   # job array with index values 0,1,2,3,4

module load anaconda/2020.07
source /modules/apps/anaconda3/etc/profile.d/conda.sh
conda activate vbd_cxr
/home/ssebastian94/.conda/envs/vbd_cxr/bin/python /home/ssebastian94/vbd_cxr/3_validation_data/2_class_classifier/binary_predictor_fold.py
