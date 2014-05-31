###############################################################################
## Title: Social Analytics for Foursquare: Connect to Foursquare
## Version: 0.2
## Autor: Josep Curto
## Description: How to connect to Foursquare
###############################################################################

###############################################################################
## Previous steps
###############################################################################

# Setup environment for Foursquare
# Create a developer account at https://foursquare.com/developers/apps and create an app
# Obtain "app_name", "app_id", "app_secret"

###############################################################################
## Steps
###############################################################################

# Create a tolen using own "app_name", "app_id", "app_secret"
token <- ThinkToStart("Foursquare_auth",app_name=“XXX”,app_id="XXX",app_secret="XXX")