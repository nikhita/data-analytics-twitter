arrivalProbability<-function(times, increment, max){
    # Initialize an empty vector
    plist <- NULL
    # Probability is defined over the size of this sample
    # of arrival times
    timeLen <- length(times)
    # May not be necessary, but checks for input mistake
    if (increment>max) {return(NULL)}
    for (i in seq(increment, max, by=increment))
    {
        # diff() requires a sorted list of times
        # diff() calculates the delays between neighboring times
        # the logical test <i provides a list of TRUEs and FALSEs
        # Divide by timeLen to calculate a proportion
        plist<-c(plist,(sum(as.integer(diff(times))<i))/timeLen)
    }
    return(plist)
}
