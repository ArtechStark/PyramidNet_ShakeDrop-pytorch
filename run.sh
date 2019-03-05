#!/bin/bash
#SBATCH -J PN-SD
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 30:00:00
#SBATCH --gres=gpu:1
module load anaconda3/5.3.0
python train.py --epochs 300 --batch_size 128 --label 100 --lr 0.5 --depth 110 --alpha 270 --snapshot_interval 10
