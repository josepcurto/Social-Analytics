# Social-Analytics for LinkedIn with R

This is a repository of R scripts examples for analyzing linkedIn social data. Current scripts include:

- Installation process for Rlinkedin
- Load libraries
- Authentication process
- Gather soem information

Note: the type of information that we can obtain from LinkedIn is limited by its API.

## Authenticate with LinkedIn

We have to connect to the LinkedIn API via oAuth 2.0. You need to:

- Go to https://www.linkedin.com/secure/developer and log in with your LinkedIn account. Then click on “Add new Application”.
- On the next page you can see app setting. Complete the mininum settings.
- If you use your own application name, API Key, and Secret Key, you must paste http://localhost:1410/ into the 'OAuth 2.0 Redirect URLs' input box and select all of the 'Scope' parameters, both of which are in the 'OAuth User Agreement' section. Otherwise, you will not be able to create an authorized connection and these functions will not work properly.
- Then click on “Add application” and you get forwarded to your app´s credentials. Switch back to R and set the following variables in the script:

app_name <- "XXX"
consumer_key <- "XXX"
consumer_secret <- "XXX"

And then you can use:

in.auth <- inOAuth(app_name, consumer_key, consumer_secret)

