#!/bin/bash
#SBATCH --time=72:00:00
#SBATCH --gpus=h100:1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G

# For use on DRAC compute
# see https://docs.alliancecan.ca/wiki/Python for venv setup
# make sure dataset is in scratch and that results are written to scratch
# as well

# note: appaently if you have the wrong gpu name in --gpus,
# it reports timeout error instead of actual error
# might be worth sending a bug report

module load python/3.10.13
source env/bin/activate
cd netshaper/evaluation/classifier
bash ./run.sh --experiment="empirical_privacy"  --config_file="configs/empirical_privacy.json"
