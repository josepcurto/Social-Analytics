###############################################################################
## Title: Social Analytics for Facebook with R - Authentication
## Version: 0.1
## Autor: Josep Curto
###############################################################################

# Substitute XXX by your own settings

fb_oauth <- fbOAuth(app_id=“XXX”, app_secret=“XXX”)
save(fb_oauth, file="fb_oauth")
load("fb_oauth")
