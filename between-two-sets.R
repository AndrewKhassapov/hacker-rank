# Solution to 'Between Two Sets'
# in R
# Source: https://www.hackerrank.com/challenges/between-two-sets/problem

# Returns the number of integers that satisfy the below:
# @params a: {array} All factors of numbers considered.
# @params b: {array} All multiples of numbers considered.
# @returns: {integer} Count of integers that are between the sets.
getTotalX <- function(a, b) {
    start <- max(a)
    limit <- min(b)
    numbers <- list()

    for (i in start:limit) {
        if (sum(b %% i) == 0) {
            if (sum(i %% a) == 0) {
                numbers <- append(numbers, i)
            }
        }
    }

    return(length(numbers))
}
