###############################################################################
## Title: Social Analytics for Foursquare: Setup environment
## Version: 0.1
## Autor: Josep Curto
## Description: set of libraries that can be used to analyse Foursquare data
###############################################################################

# Package installation
install.packages(c("devtools", "rjson", "bit64"))
library(devtools)
install_github("httr")
install.packages("RCurl")
dev_mode(on=T)
install_github("ThinkToStartR",username="JulianHill")

# Package load
library(rjson)
library(RCurl)
library(ThinkToStartR)