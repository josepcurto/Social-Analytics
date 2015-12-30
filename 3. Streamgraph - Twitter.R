# Script for producing a streamgraph of tweet hashtags
# Source: http://ouzor.github.io/blog/2015/08/31/twitter-streamgraph.html

# Load packages
library("readr")
library("dplyr")
library("lubridate")
library("streamgraph")
library("htmlwidgets")

# Read my tweets
tweets_df <- read_csv("files/R/tweets.csv") %>%
  select(timestamp, text) %>%
  mutate(text = tolower(text))

# Pick hashtags with regexp
hashtags_list <- regmatches(tweets_df$text, gregexpr("#[[:alnum:]]+", tweets_df$text))

# Create a new data_frame with (timestamp, hashtag) -pairs
hashtags_df <- data_frame()
for (i in which(sapply(hashtags_list, length) > 0)) {
  hashtags_df <- bind_rows(hashtags_df, data_frame(timestamp = tweets_df$timestamp[i],
                                                   hashtag = hashtags_list[[i]]))
}

# Process data for plotting
hashtags_df <- hashtags_df %>%
  # Pick top 20 hashtags
  filter(hashtag %in% names(sort(table(hashtag), decreasing=TRUE))[1:20]) %>%
  # Group by year-month (daily is too messy)
  # Need to add '-01' to make it a valid date for streamgraph
  mutate(yearmonth = paste0(format(as.Date(timestamp), format="%Y-%m"), "-01")) %>%
  group_by(yearmonth, hashtag) %>%
  summarise(value = n())

# Create streamgraph
sg <- streamgraph(data = hashtags_df, key = "hashtag", value = "value", date = "yearmonth",
                 offset = "silhouette", interpolate = "cardinal",
                 width = "700", height = "400") %>%
  sg_legend(TRUE, "hashtag: ") %>%
  sg_axis_x(tick_interval = 1, tick_units = "year", tick_format = "%Y")

# Save it for viewing in the blog post
# For some reason I can not save it to files/R/ direclty so need to use file.rename()
saveWidget(sg, file="twitter_streamgraph.html", selfcontained = TRUE)
file.rename("twitter_streamgraph.html", "files/R/twitter_streamgraph.html")
