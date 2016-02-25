###############################################################################
## Title: Social Analytics for Facebook with R - Gathering information
## Version: 0.1
## Autor: Josep Curto
###############################################################################

# Profile

twitterUser <- getUser("user")

# Tweets timeline

userTweets <- userTimeline(twitterUser, n=3200)

# Tweets timeline as data.frame

dfTweets <-twListToDF(userTweets)

# Save to csv

write.csv(dfTweets, file = "dfTweets.csv")



