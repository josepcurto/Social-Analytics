###############################################################################
## Title: Social Analytics for Yahoo: Setup environment
## Version: 0.1
## Autor: Josep Curto
## Description: set of libraries that can be used to analyse Yahoo data
###############################################################################

# Package installation
install.packages(c("devtools", "rjson", "bit64"))
library(devtools)
install_github("httr")

# Package load
library(httr)
