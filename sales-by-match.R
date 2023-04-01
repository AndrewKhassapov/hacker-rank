sockMerchant <- function(n, ar) {
    frequency <- as.data.frame(table(ar))$Freq # table()$Freq lists how often each value appears.
    pairs <- 0
    for (i in 1:length(frequency)) {
        pairs <- pairs + floor(frequency[i] / 2)
    }
    return(pairs)
}
