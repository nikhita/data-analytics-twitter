#API key JaApoxZQLK7lFR5MJbhP9qUXc
#API secret M1lrcjtIuPuIt5fi4Da2Pchps8zWuB8z5YY41esCsyt9ocOQDi 
#Access token 46661962-5jsy7Go2hRGeV8yveEfg88CiGMZhA63Yu5tTCVRUj
#Access token secret JVlT9srBkJ7SJawYm0KNf2dIRPrksUZlnL8uMgkCepFE9 
consumer_key <- "your key"
consumer_secret <- "your key"

#oauth <- getTwitterOAuth(consumer_key, consumer_secret)
#registerTwitterOAuth(oauth)
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
twitCred <- OAuthFactory$new(consumerKey=consumer_key,
                                 consumerSecret=consumer_secret,
                                 requestURL=reqURL,
                                 accessURL=accessURL,
                                 authURL=authURL)
twitCred$handshake()
registerTwitterOAuth(twitCred)
