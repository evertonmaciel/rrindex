# rrindex
A R package to calculate a rarity index

# Overview
The rr index is a synthetic measure of the geographic range, habitat specificity, and population size. Given a list of species, the reindex package return for each species an index ranging from 0 (common species) to 1 (rare species).

# Developer

Everton Alves Maciel

University of Campinas

email address: <everttonmaciel@gmail.com>

# Install rareindex from github

install.packages('devtools')

library(devtools)

install_github('evertonmaciel/rrindex')

# Import packages
library(rrindex)

# Usage

rareindex()

#Function to calculate an index of rarity for each species of community based on the Rabinowitz method
#The function returns the species list with four indexes for each species 
#geographic range index (gri) It is the inverse of the geographical range of the specie
#habitat specificity index (hsi) It is the inverse of the maximum number of habitats where specie occur
#population size index (psi) It is the inverse of the maximum population size of the specie
#rr index is the average of the indexes gri,hsi and psi

rareboxplot
rareplot()

#Function to calculate the indexes of rarity for each specie of a community 
#This function uses the input data table, containing the list of species, latitude and longitude, number of habitats and population size


# Refence
Maciel, E. A. (2021). An index for assessing the rare species of a community. Ecological Indicators, 124, 107424.

Rabinowitz, D. (1981). Seven forms of rarity. In H. Synge (Ed.), The biological aspects of rare plants conservation (pp. 205–217).

Rabinowitz, D. (1978). Abundance and diaspore weight in rare and common prairie grasses. Oecologia, 37(2), 213–219.

Rabinowitz, D., Rapp, J. K., & Dixon, P. M. (1984). Competitive abilities of sparse grass species: means of persistence or cause of abundance. Ecology, 65(4), 1144–1154.

