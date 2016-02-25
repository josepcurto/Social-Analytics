# Social-Analytics for Facebook with R

This is a repository of R scripts examples for analyzing Facebook social data. Current scripts include:

- Installation process for RFacebook
- Load libraries
- Authentication process
- Gather your profile information

Note: the type of information that we can obtain from Facebook is limited by its API.

## Authenticate with Facebook

Most API requests require the use of an access token. There are two ways of making authenticated requests with Rfacebook. One option is to generate a temporary token on the Graph API Explorer. Then just copy and paste the code into the R console and save it as a string vector to be passed as an argument to any Rfacebook function. However, note that this access token will only be valid for two hours. It is possible to generate a 'long-lived' token (valid for two months) using the fbOAuth function, but the process is a bit more complicated. For a step-by-step tutorial, check this [blog post](http://thinktostart.com/analyzing-facebook-with-r/) by JulianHi.

fb_oauth <- fbOAuth(app_id=“XXX”, app_secret=“XXX”)

