# Solution to 'Sales by Match'
# in R
# Source: https://www.hackerrank.com/challenges/sock-merchant/problem

# Returns the number of pairs
# Arrays in R are 1-indexed
# @params n: {integer} the number of items in the pile
# @params ar: {array} an array with each value representing a unique item
# @returns: {integer} the number of pairs
sockMerchant <- function(n, ar) {
    frequency <- as.data.frame(table(ar))$Freq # table()$Freq lists how often each value appears.
    pairs <- 0
    for (i in seq_along(frequency)) {
        pairs <- pairs + floor(frequency[i] / 2)
    }
    return(pairs)
}
