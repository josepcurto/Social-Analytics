###############################################################################
## Title: Social Analytics for Facebook: Connect to Facebook
## Version: 0.1
## Autor: Josep Curto
## Description: How to connect to Facebook
###############################################################################

###############################################################################
## Previous steps
###############################################################################

# Setup environment for facebook
# Create a developer account at https://developers.facebook.com and a new app
# Follow the steps at http://thinktostart.wordpress.com/2013/11/19/analyzing-facebook-with-r/

###############################################################################
## Steps
###############################################################################

# Obtain fb_oauth (it will last for two months)
fb_oauth <- fbOAuth(app_id="value app_id", app_secret="value app_secret")
# Save fb_oauth to skip previous step next time
save(fb_oauth, file="fb_oauth")
load("fb_oauth")