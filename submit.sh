#!/bin/bash

#SBATCH --job-name=cytoeffect_short
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4GB
#SBATCH --time=01:00:00

R -e "source('prepare.R')"
R -e "rmarkdown::render('Reanalysis_Aghaeepour2017_Poisson.Rmd')"
