#!/usr/bin/bash
#$ -cwd
#$ -N ESM1b_job
#$ -l h_data=8G,h_rt=24:00:00
#$ -M bruin@g.ucla.edu
#$ -m bea

. /u/local/Modules/default/init/modules.sh

module load python

dir=/u/project/arboleda/bruin/
uniprot_id=${dir}/run_ESM1b.csv #test.csv
output=${dir}/ESM1b_scores.csv

python /u/project/arboleda/DATA/OTHER/ESM1b_scores/get_variant_scores.py -o $output $uniprot_id
