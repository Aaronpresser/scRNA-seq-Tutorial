# Note - in some other files like R files or Python files, hashes ("#") always tell the computer to skip the stuff after them, but here
# hashes can be important. All of what I'm writing here is after hashes, and it will be skipped by the computer, but there are some lines below 
# like "#!/bin/sh" or those that start with "#SBATCH" that actually mean something to the computer. They basically tell the computer about
# not what to do (like in terms of what functions to run to analyze our data) but how to even configure the environment that our data analysis 
# functions will be run in

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

# We move into the directory where our data is - see here for more (https://www.digitalcitizen.life/command-prompt-how-use-basic-commands/)
cd /projects/p31559/scRNA_data/cellranger

# In case there were any libraries that might conflict with the library we will use, we close them with "module purge all" and then load cellranger
module purge all
module load cellranger/6.1.2

# This is the cellranger ```count``` function
# The backslash ("\") at the end of the first two lines basically tell the computer that the three lines that we've written are all part of the same function
# so to continue reading them as if they were all part of the same line
cellranger count --id=Control_GEX --transcriptome=/projects/p31559/Peng_scRNA_data/cellranger/transcriptome/refdata-gex-mm10-2020-A \
--fastqs=/projects/p31559/Peng_scRNA_data/PENG_RNAseq --sample=Control_GEX \
--localcores=16
