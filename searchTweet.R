library(bitops)
library(RCurl)
library(RJSONIO)
library(twitteR)
library(ROAuth)
library(XML)

# setup OAuth
consumer_key <- "IwWt7Kqg8fQgMgybrWt3tbMTL"
consumer_secret <-"DoIFI81bqC8WWBZ7k0VDaW3ZfEobbSYMUkjIxrSrKRg2ntKj5J"

# configure RCurl options
RCurlOptions <- list(capath=system.file("CurlSSL", "cacert.pem", package = "RCurl"), ssl.verifypeer = FALSE)
options(RCurlOptions = RCurlOptions)

#use getTwitter Oauth
#getTwitterOAuth(consumerKey, consumerSecret) # enter code
setup_twitter_oauth(consumer_key, consumer_secret)


tweetCollection <- searchTwitter("#udatapunjab", n=500)
tweetCollection
class(tweetCollection)
str(tweetCollection)
summary(tweetCollection)
head(tweetCollection, 1)
str(head(tweetCollection, 1))
length(tweetCollection)

tweetFrame <- do.call("rbind", lapply(tweetCollection, as.data.frame))

str(tweetFrame)
summary(tweetFrame)
names(tweetFrame)
dim(tweetFrame)

srkTweets <- tweetDF("iamsrk", n=300)
salmanTweets <- tweetDF("BeingSalmanKhan", n=300)

attach(tweetFrame)
head(created, 4)
par(mfrow=c(2,2), mar=c(4,4,3,1))
hist(created, breaks=10, freq=TRUE)
hist(created, breaks=20, freq=TRUE)
hist(created, breaks=30, freq=TRUE)
hist(created, breaks=40, freq=TRUE)

class(created)
as.integer(created)
order(as.integer(created))
tweetFrameSorted <- tweetFrame[order(as.integer(created)), ]
detach(tweetFrame)
attach(tweetFrameSorted)

created
diff(created)

par(mfrow=c(1,1))
class(diff(created))
hist(as.integer(diff(created)))
mean(as.integer(diff(created)))

library("modeest")
mfv(as.integer(diff(created)))

median(as.integer(diff(created)))

sum((as.integer(diff(created))) < 60)
sum((as.integer(diff(created))) < 30)
sum((as.integer(diff(created))) < 10)

plist <- arrivalProbability(created, 10, 200)
plot(plist)
