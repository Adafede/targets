#!/bin/bash

# You can run this script in a shell either with ./run.sh or qsub run.sh

# Modified from https://github.com/mschubert/clustermq/blob/master/inst/LSF.tmpl
# under the Apache 2.0 license:
#PBS -N targets
#PBS -l nodes=1:ppn=1:mem=4096MB
#PBS -l walltime=24:00:00 # extend for longer pipeline runtimes
#PBS -o /dev/null
#PBS -j oe

# This script runs the pipeline in a persistent background process:
nohup nice -4 R CMD BATCH run.R &

# Change the nice level above as appropriate
# for your situation and system.

# Removing .RData is recommended.
# rm -f .RData