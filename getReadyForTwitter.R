# getReadyForTwitter() - ensure all packages are installed, 
# that are required for fetching data from twitter.
getReadyForTwitter <- function(){
    ensure("bitops")
    ensure("RCurl")
    ensure("RJSONIO")
    ensure("twitteR")
}