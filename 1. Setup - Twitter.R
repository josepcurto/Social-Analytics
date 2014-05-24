###############################################################################
## Title: Social Analytics for Twitter: Setup environment
## Version: 0.2
## Autor: Josep Curto
## Description: set of libraries that can be used to analyse Twitter data
###############################################################################

# Package installation
install.packages(c("devtools", "rjson", "bit64", "httr"))
library(devtools)
install_github("httr")
install_github("twitteR", username="geoffjentry")
install.packages("plyr")
install.packages("stringr")
install.packages("tm")
install.packages("maps")
install.packages("ggplot2")
install.packages("SnowballC")
install.packages("wordcloud")

# Package load
library(twitteR)
library(plyr)
library(stringr)
library(tm)
library(ggplot2)
library(SnowballC)
library(wordcloud)
