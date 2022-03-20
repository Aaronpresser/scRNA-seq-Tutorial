# Note - in some other files like R files or Python files, hashes ("#") always tell the computer to skip the stuff after them, but here
# hashes can be important. All of what I'm writing here is after hashes, and it will be skipped by the computer, but there are some lines below 
# like "#SBATCH"

# You will likely run this script on an "external computer" like a High-Performance Computing Cluster (HPCC) or something similar -
# you will often need to have an account on the HPCC in order to do so and will need to request computer resources
# That is what these few commands below do

#!/bin/sh
#SBATCH -A p31559 # This line specifies your account
#SBATCH -p short
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 02:00:00
#SBATCH --mem=120gb
#SBATCH --job-name="control_gex"

cd /projects/p31559/scRNA_data/cellranger

module purge all
module load cellranger/6.1.2

cellranger count --id=Control_GEX --transcriptome=/projects/p31559/Peng_scRNA_data/cellranger/transcriptome/refdata-gex-mm10-2020-A \
--fastqs=/projects/p31559/Peng_scRNA_data/PENG_RNAseq --sample=Control_GEX \
--localcores=16
