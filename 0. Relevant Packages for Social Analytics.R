###############################################################################
## Title: Social Analytics: Relevant Packages
## Version: 0.2
## Autor: Josep Curto
## Description: set of libraries that can be used to analyse Facebook data
###############################################################################

# Package installation
devtools::install_github("Rfacebook", "pablobarbera", subdir="Rfacebook")
devtools::install_github("twitteR", username="geoffjentry")
devtools::install_github("joyofdata/RTwitterAPI")
install.packages("SocialMediaMineR")
install.packages("plusser")
install.packages("streamR")

# Package load
library(Rfacebook)
library(twitteR)
library(SocialMediaMineR)
library(plusser)
library(streamR)
library(RTwitterAPI)