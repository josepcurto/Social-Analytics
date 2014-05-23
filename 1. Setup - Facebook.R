###############################################################################
## Title: Social Analytics for Facebook
## Version: 0.1
## Autor: Josep Curto
## Description: set of libraries that can be used to analyse Facebook data
###############################################################################

# Package installation
install.packages(c("devtools", "rjson", "bit64", "httr"))
library(devtools)
install_github("httr")
install_github("Rfacebook", "pablobarbera", subdir="Rfacebook")
install.packages("plyr")
install.packages("stringr")
install.packages("tm")
install.packages("maps")
install.packages("ggplot2")
install.packages("SnowballC")
install.packages("wordcloud")

# Package load
library(Rfacebook)
library(plyr)
library(stringr)
library(tm)
library(ggplot2)
library(SnowballC)
library(wordcloud)
