###############################################################################
## Title: Social Analytics for Facebook with R - Gathering information
## Version: 0.1
## Autor: Josep Curto
###############################################################################

# Own Profile

me <- getUsers("me", fb_oauth, private_info = TRUE)

# My Likes

my_likes <- getLikes(token=fb_oauth, user="me") 

# My Newsfeed

my_newsfeed <- getNewsfeed(token=fb_oauth, n=100) 

