# tweetDF() - For a given search term, collect n twitter search results and 
# convert them to a data frame
tweetDF <- function(searchTerm, n=numTweets){
    #tweetCollection <- searchTwitter(searchTerm, n)
    tweetCollection <- searchTwitter(searchTerm, n, retryOnRateLimit=300)
    return(do.call("rbind", lapply(tweetCollection, as.data.frame)))
}