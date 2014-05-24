###############################################################################
## Title: Social Analytics for Twitter: Connect to Twitter
## Version: 0.1
## Autor: Josep Curto
## Description: How to connect to twitter
###############################################################################

###############################################################################
## Previous steps
###############################################################################

# Setup environment for twitter
# Create a developer account at https://dev.twitter.com and a new app
# Obtain "API key", "API secret", "Access token", "Access secret"

# Connect using own "API key", "API secret", "Access token", "Access secret"
setup_twitter_oauth("API key", "API secret", "Access token", "Access secret")

# Validate connection against own user
twitterUser <- getUser("own user")