# rrindex
A r package to calculate a rarity index

# Overview

# Developer

Everton Alves Maciel
University of Campinas
<everttonmaciel@gmail.com>

# Install rareindex from github

install.packages('devtools')

library(devtools)

install_github('evertonmaciel/rrindex')

# Import packages
library(rrindex)

# Usage

rareindex()

#Function to calculate a index of rarity for each species of community based on the Rabinowitz method
#The function returns the species list with four indexes for each species. 
#geographic range index (gri) It is the inverse of the geographical range of the specie
#habitat specificity index (hsi) It is the inverse of the number of habitats maximum that species occur
#population size index (psi) It is the inverse of the size population maximum of the species
#rr index is the average of the indexes gri,hsi and psi

rareboxplot
rareplot()

#Function to calculate a index of rarity for each species of community based on the Rabinowitz method


# Refence
Rabinowitz, D. (1981). Seven forms of rarity. In H. Synge (Ed.), The biological aspects of rare plants conservation (pp. 205–217).
Rabinowitz, D. (1978). Abundance and diaspore weight in rare and common prairie grasses. Oecologia, 37(2), 213–219.
Rabinowitz, D., Rapp, J. K., & Dixon, P. M. (1984). Competitive abilities of sparse grass species: means of persistence or cause of abundance. Ecology, 65(4), 1144–1154.

